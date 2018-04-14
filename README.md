# Technologie NoSQL
**Aliaksandr Novik**

[Crimes in Los Angeles](https://www.kaggle.com/cityofLA/crime-in-los-angeles/data).
This dataset reflects incidents of crime in the City of Los Angeles dating back to 2010. This data is transcribed from original crime reports that are typed on paper and therefore there may be some inaccuracies within the data. Some location fields with missing data are noted as (0°, 0°). Address fields are only provided to the nearest hundred block in order to maintain privacy.

:computer:
Parametry laptopa, na którym byli uruchamiane skrypty:
- System operacyjny: Ubuntu 16.04
- CPU: Intel i7 (4 rdzeni) 
- Dysk twardy: SSD

1. Uruchomienie instancji mongod dla replica set:

**./bin/runMongod.sh**

2. Uruchomienie skryptu:

**./bin/runLocalReplSet.sh**

Wyniki zapisywane do pliku *results.txt* w folderze *docs*.
  <table border=1>
  <tr>
    <th rowspan="2">Settings</th>
    <th colspan="3">Avg time crimes.csv</th>
    <th colspan="3">Avg time mazowieckie.json</th>
  </tr>
  <tr>
    <td>Real time</td>
    <td>User time</td>
    <td>System time</td>
    <td>Real time</td>
    <td>User time</td>
    <td>System time</td>
  </tr>
  <tr>
    <td>Default</td>
    <td>159,4432</td>
    <td>103,2424</td>
    <td>8,6016</td>
    <td>109,6122</td>
    <td>75,5248</td>
    <td>3,5408</td>
  </tr>
  <tr>
    <td>w: 1, j: false</td>
    <td>160,1132</td>
    <td>102,9704</td>
    <td>8,0768</td>
    <td>111,95</td>
    <td>75,4752</td>
    <td>3,4752</td>
  </tr> 
  <tr>
    <td>w: 1, j: true</td>
    <td>162,3682</td>
    <td>102,816</td>
    <td>8,4784</td>
    <td>109,7756</td>
    <td>75,9256</td>
    <td>3,5776</td>
  </tr>
  <tr>
    <td>w: 2, j: false</td>
    <td>162,7596</td>
    <td>103,1952</td>
    <td>8,4192</td>
    <td>111,3964</td>
    <td>75,3512</td>
    <td>3,6008</td>
  </tr> 
  <tr>
    <td>w: 2, j: true</td>
    <td>162,8514</td>
    <td>103,2352</td>
    <td>8,3848</td>
    <td>110,7564</td>
    <td>75,6152</td>
    <td>3,5312</td>
  </tr> 
  <tr>
    <td>Standalone</td>
    <td>63,1854</td>
    <td>107,4208</td>
    <td>10,5648</td>
    <td>33,0072</td>
    <td>74,8416</td>
    <td>3,5608</td>
  </tr> 
</table>
  

 



