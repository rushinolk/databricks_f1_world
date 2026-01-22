CREATE OR REPLACE TABLE gold.f1_world.agg_driver_season_stats AS
SELECT 
    -- Dimensões
    r.dtYear,
    d.descForename || ' ' || d.descSurname AS descDriverName, -- Concatenando nome
    d.descNationality,
    c.descName AS descConstructorName,
    
    -- Métricas (KPIs)
    SUM(fct.nrPoints)   AS nrTotalPoints,
    AVG(fct.nrPoints)   AS nrAvgPointsPerRace,
    
    -- Pivotando dados (Contagens Específicas)
    COUNT(CASE WHEN fct.nrPosition = 1 THEN 1 END) AS nrWins,
    COUNT(CASE WHEN fct.nrPosition <= 3 THEN 1 END) AS nrPodiums,
    
    -- Performance
    SUM(fct.nrLaps) AS nrTotalLapsRaced

FROM silver.f1_world.fct_results fct
JOIN silver.f1_world.dim_races r ON fct.idRace = r.idRace          -- Pega o Ano
JOIN silver.f1_world.drivers d ON fct.idDriver = d.idDriver        -- Pega o Nome
JOIN silver.f1_world.constructors c ON fct.idConstructor = c.idConstructor -- Pega a Equipe

GROUP BY 
    r.dtYear, 
    descDriverName, 
    d.descNationality, 
    c.descName
ORDER BY 
    r.dtYear DESC, 
    nrTotalPoints DESC