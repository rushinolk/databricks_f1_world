select
    raceId as idRace,
    driverId as idDriver,
    stop as nrStop,
    lap as nrLap,
    time as tmTime,
    duration as tmDuration,
    milliseconds as nrMilliseconds
from bronze.f1_world.pit_stops