SELECT
    r.idRace,
    r.idCircuit,

    r.dtYear,
    r.dtDate,
    r.tmTime,
    
    r.dtFp1Date,
    r.tmFp1Time,
    r.dtFp2Date,
    r.tmFp2Time,
    r.dtFp3Date,
    r.tmFp3Time,
    r.dtQualiDate,
    r.tmQualiTime,
    r.dtSprintDate,
    r.tmSprintTime,


    r.descName      AS descRaceName,    
    c.descName      AS descCircuitName, 
    c.descLocation,
    c.descCountry,


    r.nrRound,
    c.nrLat,
    c.nrLng,
    c.nrAlt

FROM silver.f1_world.races r
JOIN silver.f1_world.circuits c ON r.idCircuit = c.idCircuit

