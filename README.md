# Technologie NoSQL
**Aliaksandr Novik**

[Crimes in Los Angeles](https://www.kaggle.com/cityofLA/crime-in-los-angeles/data).
This dataset reflects incidents of crime in the City of Los Angeles dating back to 2010. This data is transcribed from original crime reports that are typed on paper and therefore there may be some inaccuracies within the data. Some location fields with missing data are noted as (0°, 0°). Address fields are only provided to the nearest hundred block in order to maintain privacy.

To launch this code run next command in bin folder:

./runMongod

Next run:

./runLocalReplSet.sh

The results will be written in results.html file.

| Replica set       | Real Time  | System Time | User Time |
| ------------------| -----------|-------------|-----------|
| Default settings  |    3.522   |   0.000     |   0.016   |
|                   |    3.524   |   0.000     |   0.008   |
|                   |    3.525   |   0.008     |   0.012   |
|                   |    3.024   |   0.000     |   0.008   |
|                   |    0.017   |   0.004     |   0.012   |
|                   |            |             |           |
| w:1 and j:false   |    0.011   |   0.000     |   0.004   |
|                   |    0.010   |   0.008     |   0.008   |
|                   |    0.008   |   0.000     |   0.008   |
|                   |    0.008   |   0.000     |   0.008   |
|                   |    0.009   |   0.000     |   0.004   |
|                   |            |             |           |
| w:1 and j:true    |    0.011   |   0.008     |   0.012   |
|                   |    0.009   |   0.004     |   0.008   |
|                   |    0.008   |   0.000     |   0.004   |
|                   |    0.008   |   0.008     |   0.004   |
|                   |    0.008   |   0.000     |   0.012   |
|                   |            |             |           |
| w:2 and j:false   |    0.017   |   0.008     |   0.008   |
|                   |    0.013   |   0.004     |   0.012   |
|                   |    0.012   |   0.004     |   0.012   |
|                   |    0.011   |   0.004     |   0.004   |
|                   |    0.010   |   0.000     |   0.008   |
|                   |            |             |           |
| w:2 and j:true    |    0.004   |   0.524     |   0.004   |
|                   |    0.008   |   0.018     |   0.028   |
|                   |    0.000   |   0.015     |   0.012   |
|                   |    0.004   |   0.013     |   0.012   |
|                   |    0.008   |   0.013     |   0.016   |


