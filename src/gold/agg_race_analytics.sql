
SELECT
    r.dtYear,
    r.descRaceName,
    d.descForename || ' ' || d.descSurname AS descDriverName,
    c.descName AS descConstructorName,
    
    -- Comparativo Largada x Chegada
    fct.nrGrid,
    fct.nrPosition,
    
    -- Coluna Calculada: Ganho de Posições (Positivo = Ganhou, Negativo = Perdeu)
    (CAST(fct.nrGrid AS INT) - CAST(fct.nrPosition AS INT)) AS nrPositionsGained,
    
    -- Dados de Volta Rápida
    fct.nrFastestLap,
    fct.tmFastestLapTime,
    fct.nrFastestLapSpeed,
    fct.descStatus -- Importante para filtrar quem quebrou

FROM silver.f1_world.fct_results fct
JOIN silver.f1_world.dim_races r ON fct.idRace = r.idRace
JOIN silver.f1_world.drivers d ON fct.idDriver = d.idDriver
JOIN silver.f1_world.constructors c ON fct.idConstructor = c.idConstructor