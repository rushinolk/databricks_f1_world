select
    raceId as idRace,
    driverId as idDriver,
    lap as nrLap,
    position as nrPosition,
    time as tmTime,
    milliseconds as nrMilliseconds
from bronze.f1_world.lap_times