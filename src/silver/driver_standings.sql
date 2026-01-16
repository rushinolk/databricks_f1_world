select 
    driverStandingsId as idDriversStandings,
    raceId as idRace,
    driverId as idDriver,
    points as nrPoints,
    position as nrPosition,
    positionText as descPositionText,
    wins as nrWins,
from bronze.f1_world.driver_standings