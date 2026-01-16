select 
    constructorStandingsId as idConstructorStandings,
    raceId as idRace,
    constructorId as idConstructor,
    points as nrPoints,
    position as nrPosition,
    positionText as descPosition,
    wins as nrWins
from bronze.f1_world.constructor_standings
