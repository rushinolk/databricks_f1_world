CREATE OR REPLACE TABLE silver.f1_world.fct_qualifying AS
SELECT 
    q.idQualify,
    q.idRace,
    q.idDriver,
    q.idConstructor,
    
    -- Trazendo o Ano
    r.dtYear,
    
    q.nrNumber,
    q.nrPosition,
    q.tmQ1,
    q.tmQ2,
    q.tmQ3

FROM silver.f1_world.qualifying q
JOIN silver.f1_world.races r ON q.idRace = r.idRace