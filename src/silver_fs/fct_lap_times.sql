CREATE OR REPLACE TABLE silver.f1_world.fct_lap_times AS
SELECT 
    lt.idRace,
    lt.idDriver,
    lt.nrLap,
    
    -- A única razão do Join: trazer o Ano
    r.dtYear, 
    
    lt.nrPosition,
    lt.tmTime,
    lt.nrMilliseconds

FROM silver.f1_world.lap_times lt
JOIN silver.f1_world.races r ON lt.idRace = r.idRace