CREATE OR REPLACE TABLE gold.f1_world.agg_constructor_stats AS
SELECT 
    c.descName AS descConstructorName,
    c.descNationality,
    
    -- KPIs Históricos
    COUNT(DISTINCT fct.idRace) AS nrRacesEntered, -- Quantas corridas participou
    SUM(fct.nrPoints) AS nrTotalPointsHistory,
    
    -- Vitórias
    COUNT(CASE WHEN fct.nrPosition = 1 THEN 1 END) AS nrWins,
    
    -- Cálculo de % de Vitória (Cast para Decimal para ter precisão)
    (CAST(COUNT(CASE WHEN fct.nrPosition = 1 THEN 1 END) AS DECIMAL(10,2)) / 
     CAST(COUNT(DISTINCT fct.idRace) AS DECIMAL(10,2))) * 100 AS nrWinPercentage

FROM silver.f1_world.fct_results fct
JOIN silver.f1_world.constructors c ON fct.idConstructor = c.idConstructor

GROUP BY 
    c.descName, 
    c.descNationality
ORDER BY 
    nrWins DESC