select 
    raceId as idRace,
    year as dtYear,
    round as nrRound,
    circuitId as idCircuit,
    name as descName,
    date as dtDate,
    time as tmTime,
    fp1_date as dtFp1Date,
    fp1_time as tmFp1Time,
    fp2_date as dtFp2Date,
    fp2_time as tmFp2Time,
    fp3_date as dtFp3Date,
    fp3_time as tmFp3Time,
    quali_date as dtQualiDate,
    quali_time as tmQualiTime,
    sprint_date as dtSprintDate,
    sprint_time as tmSprintTime 
from bronze.f1_world.races