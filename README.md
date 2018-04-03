# Technologie NoSQL
**Aliaksandr Novik**

[Crimes in Los Angeles](https://www.kaggle.com/cityofLA/crime-in-los-angeles/data).
This dataset reflects incidents of crime in the City of Los Angeles dating back to 2010. This data is transcribed from original crime reports that are typed on paper and therefore there may be some inaccuracies within the data. Some location fields with missing data are noted as (0°, 0°). Address fields are only provided to the nearest hundred block in order to maintain privacy.

To launch this code run next command in bin folder:

./runMongod

Next run:

./runLocalReplSet.sh

The results will be written in results.html file.

Tablica 1.
Czas działania replica set i standalone bez wywowania funkcji sleep w pętle, w której mierzymu czas.

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
|                   |            |             |           |
| Standalone mode   | Real time  | System time | User time |
|                   |    3.519   |   0.016     |   0.020   |
|                   |    3.518   |   0.008     |   0.008   |
|                   |    3.319   |   0.012     |   0.016   |
|                   |    3.522   |   0.012     |   0.016   |
|                   |    3.521   |   0.016     |   0.016   |

Tablica 2
Czas działania replica set i standalone z wywowaniem funkcji sleep w pętle, w której mierzymu czas. Funkcje sleep 5 wywowujemy przed iteracją i po.

| Replica set       | Real Time  | System Time | User Time |
| ------------------| -----------|-------------|-----------|
| Default settings  |    3.528   |   0.004     |   0.016   |
|                   |    0.018   |   0.008     |   0.016   |
|                   |    0.018   |   0.000     |   0.008   |
|                   |    0.018   |   0.000     |   0.012   |
|                   |    0.019   |   0.012     |   0.008   |
|                   |            |             |           |
| w:1 and j:false   |    0.020   |   0.000     |   0.008   |
|                   |    0.021   |   0.000     |   0.016   |
|                   |    0.011   |   0.004     |   0.016   |
|                   |    0.019   |   0.004     |   0.016   |
|                   |    0.020   |   0.000     |   0.024   |
|                   |            |             |           |
| w:1 and j:true    |    0.015   |   0.000     |   0.008   |
|                   |    0.010   |   0.004     |   0.008   |
|                   |    0.009   |   0.004     |   0.008   |
|                   |    0.011   |   0.004     |   0.016   |
|                   |    0.009   |   0.008     |   0.012   |
|                   |            |             |           |
| w:2 and j:false   |    0.012   |   0.000     |   0.024   |
|                   |    0.010   |   0.008     |   0.004   |
|                   |    0.009   |   0.000     |   0.000   |
|                   |    0.016   |   0.000     |   0.008   |
|                   |    0.010   |   0.004     |   0.016   |
|                   |            |             |           |
| w:2 and j:true    |    0.012   |   0.008     |   0.004   |
|                   |    0.010   |   0.004     |   0.008   |
|                   |    0.009   |   0.000     |   0.012   |
|                   |    0.016   |   0.000     |   0.012   |
|                   |    0.010   |   0.012     |   0.008   |
|                   |            |             |           |
| Standalone mode   | Real time  | System time | User time |
|                   |    3.514   |   0.000     |   0.016   |
|                   |    3.512   |   0.008     |   0.008   |
|                   |    3.513   |   0.004     |   0.004   |
|                   |    3.515   |   0.020     |   0.004   |
|                   |    3.512   |   0.004     |   0.004   |

Tablica 3
|                   |             Average time             | 
|                                                          |     
| Replica set       | Real Time  | System Time | User Time |
| ------------------| -----------|-------------|-----------|


