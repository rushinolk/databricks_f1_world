select
   resultId as idResult,
   raceId as idRace,
   driverId as idDriver,
   constructorId as idConstructor,
   number as nrNumber,
   grid as nrGrid,
   position as nrPosition,
   positionText as descPositionText,
   positionOrder as nrPositionOrder,
   points as nrPoints,
   laps as nrLaps,
   time as tmTime,
   milliseconds as nrMilliseconds,
   fastestLap as nrFastestLap,
   rank as nrRank,
   fastestLapTime as tmFastestLapTime,
   fastestLapSpeed as nrFastestLapSpeed,
   statusId as idStatus 

from bronze.f1_world.results