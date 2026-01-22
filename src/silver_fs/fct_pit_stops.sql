CREATE OR REPLACE TABLE silver.f1_world.fct_pit_stops AS
SELECT 
    ps.idRace,
    ps.idDriver,
    ps.nrStop,
    
    -- Trazendo o Ano
    r.dtYear,
    
    ps.nrLap,
    ps.tmTime,
    ps.descDuration,
    ps.nrMilliseconds

FROM silver.f1_world.pit_stops ps
JOIN silver.f1_world.races r ON ps.idRace = r.idRace