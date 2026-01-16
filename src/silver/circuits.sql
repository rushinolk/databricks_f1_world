select
    CAST(circuitId as int) as idCircuit,
    CAST(circuitRef as string) as descRefCircuit,
    CAST(name as string) as descName,
    CAST(location as string) as descLocation,
    CAST(country as string) as descCountry,
    CAST(lat as double) as nrLat,
    CAST(lng as double) as nrLng, 
    CAST(alt as int) as nrAlt
 from bronze.f1_world.circuits