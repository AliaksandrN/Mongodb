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

### Wyniki oczekiwane
- Real time > User time > System time (więcej o tym tu [System, user, real time](https://www.quora.com/Unix-What-is-the-difference-between-real-user-and-sys-when-I-call-time))
- Import danych do standalone jest szybszy od replica set (więcej o tym tu [Mongoimport](https://docs.mongodb.com/manual/reference/program/mongoimport/))
- Import danych w formaci json jest szybszy od importu danych w formacie csv 

Wyniki zapisywane do pliku *results.txt* w folderze *docs*.

Tabela 1. Średnie czasu importu plików crimes.csv i majowieckie.json
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
    <td>2m39.4432s
      159,4432s</td>
    <td>1m43.2424s
      103,2424s</td>
    <td>0m8.6016s
      8,6016s</td>
    <td>1m49.6122s
      109,6122s</td>
    <td>1m15.5248s
      75,5248s</td>
    <td>0m3.5408s
      3,5408s</td>
  </tr>
  <tr>
    <td>w: 1, j: false</td>
    <td>2m40.1132s
      160,1132s</td>
    <td>1m42.9704s
      102,9704s</td>
    <td>0m8.0768s
      8,0768s</td>
    <td>1m51.95s
      111,95s</td>
    <td>1m15.4752s
      75,4752s</td>
    <td>0m3.4751s
      3,4751s</td>
  </tr> 
  <tr>
    <td>w: 1, j: true</td>
    <td>2m42.3682s
      162,3682s</td>
    <td>1m42.816s
      102,816s</td>
    <td>0m8.4784s
      8,4784s</td>
    <td>1m49.7756s
      109,7756s</td>
    <td>1m15.9256s
      75,9256s</td>
    <td>0m3.577s
      3,5776s</td>
  </tr>
  <tr>
    <td>w: 2, j: false</td>
    <td>2m42.7596s
      162,7596s</td>
    <td>1m43.1952s
      103,1952s</td>
    <td>0m8.4192s
      8,4192s</td>
    <td>1m51.3964s
      111,3964s</td>
    <td>1m15.3512s
      75,3512s</td>
    <td>0m3.6008s
      3,6008s</td>
  </tr> 
  <tr>
    <td>w: 2, j: true</td>
    <td>2m42.8514s
      162,8514s</td>
    <td>1m43.2352s
      103,2352s</td>
    <td>0m8.3848s
      8,3848s</td>
    <td>1m50.7564s
      110,7564s</td>
    <td>1m15.6152s
      75,6152s</td>
    <td>0m3.5312s
      3,5312s</td>
  </tr> 
  <tr>
    <td>Standalone</td>
    <td>1m3.1854s
      63,1854s</td>
    <td>1m47.4208s
      107,4208s</td>
    <td>0m10.5648s
      10,5648s</td>
    <td>0m33.0072s
      33,0072s</td>
    <td>1m14.8416s
      74,8416s</td>
    <td>0m3.5608s
      3,5608s</td>
  </tr> 
</table>
  
### Analiza wyników
- owszem w przypadku importu danych do replica set real time ma największą wartość oraz system time na najmniejszą wartość:+1:. W przypadku importu danych do jednej instancji mongod (standalone mode) wyniki nie odpowiadają oczekiwaniam:-1:. Wartość user time jest jest większa od wartości real time (w przypadku importu pliku crimes.csv o 69% oraz importu mazowieckie.json 124%). 
 



