CREATE OR REPLACE TABLE silver.f1_world.fct_sprint_results AS
SELECT 
    sr.idResult,
    sr.idRace,
    sr.idDriver,
    sr.idConstructor,
    sr.idStatus,
    
    -- Trazendo o Ano da tabela Races (Fundamental para filtro)
    r.dtYear,
    
    -- Trocando ID por Texto Descritivo
    st.status AS descStatus, 
    
    -- Métricas e Tempos
    sr.nrPoints,
    sr.nrPosition,
    sr.nrGrid,
    sr.nrLaps,
    sr.tmTime,
    sr.nrMilliseconds,
    sr.nrFastestLap,
    sr.tmFastestLapTime

FROM silver.f1_world.sprint_results sr
LEFT JOIN silver.f1_world.status st ON sr.idStatus = st.idStatus
LEFT JOIN silver.f1_world.races r ON sr.idRace = r.idRace