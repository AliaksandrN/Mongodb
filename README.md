# Technologie NoSQL
**Aliaksandr Novik**

[Crimes in Los Angeles](https://www.kaggle.com/cityofLA/crime-in-los-angeles/data).
This dataset reflects incidents of crime in the City of Los Angeles dating back to 2010. This data is transcribed from original crime reports that are typed on paper and therefore there may be some inaccuracies within the data. Some location fields with missing data are noted as (0°, 0°). Address fields are only provided to the nearest hundred block in order to maintain privacy.

1. Uruchomienie instancji mongod dla replica set:

**./bin/runMongod.sh**

2. Uruchomienie skryptu:

**./bin/runLocalReplSet.sh**





<table border=1>
  <tr>
    <th rowspan="2">Settings</th>
    <th colspan="3">My dataset</th>
    <th colspan="3">mazowieckie.json</th>
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
    <td rowspan="5">Default</td>
    <td>152.536</td>
    <td>102.840</td>
    <td>8.664</td>
    <td>102.708</td>
    <td>75.728</td>
    <td>3.668</td>

  </tr>
    <td>162.557</td>
    <td>103.060</td>
    <td>8.736</td>
    <td>110.892</td>
    <td>75.176</td>
    <td>3.528</td>
  </tr>
  
  <tr>
    <td>158.350</td>
    <td>103.256</td>
    <td>8.456</td>
    <td>113.992</td>
    <td>75.396</td>
    <td>3.352</td>
  </tr>
  
  <tr>
    <td>160.143</td>
    <td>103.520</td>
    <td>8.572</td>
    <td>107.849</td>
    <td>75.844</td>
    <td>3.792</td>
  </tr>
  
  <tr>
    <td>163.630</td>
    <td>103.536</td>
    <td>8.580</td>
    <td>112.620</td>
    <td>75.480</td>
    <td>3.364</td>
  </tr>
  
  <tr>
    <td rowspan="5"> w: 1, j: false </td>
    <td>157.867</td>
    <td>103.144</td>
    <td>7.788</td>
    <td>109.413</td>
    <td>75.636</td>
    <td>3.520</td>

  </tr>
    
  <tr>
    <td>162.219</td>
    <td>102.624</td>
    <td>8.160</td>
    <td>114.295</td>
    <td>75.496</td>
    <td>3.512</td>

  </tr>
  
  <tr>
    <td>160.892</td>
    <td>102.988</td>
    <td>7.940</td>
    <td>113.438</td>
    <td>75.624</td>
    <td>3.320</td>
  </tr>
  
  <tr>
    <td>156.710</td>
    <td>103.216</td>
    <td>8.500</td>
    <td>107.691</td>
    <td>75.232</td>
    <td>3.580</td>
  </tr>
  
  <tr>
    <td>162.878</td>
    <td>102.880</td>
    <td>7.996</td>
    <td>114.913</td>
    <td>75.388</td>
    <td>3.444</td>  
  </tr>
  
   <tr>
    <td rowspan="5"> w: 1, j: true </td>
    <td>162.527</td>
    <td>102.824</td>
    <td>8.184</td>
    <td>110.032</td>
    <td>75.952</td>
    <td>3.592</td>
  </tr>

  <tr>
    <td>163.722</td>
    <td>102.556</td>
    <td>8.560</td>
    <td>109.652</td>
    <td>75.372</td>
    <td>3.356</td>
  </tr>

  <tr>
    <td>164.730</td>
    <td>103.024</td>
    <td>8.756</td>
    <td>107.849</td>
    <td>76.560</td>
    <td>3.644</td>

  </tr>
  <tr>
    <td>162.983</td>
    <td>102.896</td>
    <td>8.404</td>
    <td>110.412</td>
    <td>75.844</td>
    <td>3.656</td>


  </tr>
    <td>157.879</td>
    <td>102.780</td>
    <td>8.488</td>
    <td>110.933</td>
    <td>75.900</td>
    <td>3.640</td>

   <tr>
    <td rowspan="5">w: 2, j: false</td>
    <td>159.648</td>
    <td>103.060</td>
    <td>8.348</td>
    <td>111.813</td>
    <td>75.140</td>
    <td>3.728</td>
  </tr>

  <tr>
    <td>161.399</td>
    <td>103.308</td>
    <td>8.696</td>
    <td>111.909</td>
    <td>75.508</td>
    <td>3.460</td>
  </tr>
    
  <tr>
    <td>163.997</td>
    <td>103.520</td>
    <td>8.052</td>
    <td>115.888</td>
    <td>75.568</td>
    <td>3.668</td>
  </tr>
  
  <tr>
    <td>161.119</td>
    <td>103.292</td>
    <td>8.612</td>
    <td>105.580</td>
    <td>75.264</td>
    <td>3.544</td>


  </tr>
    <td>167.635</td>
    <td>102.796</td>
    <td>8.388</td>
    <td>111.792</td>
    <td>75.276</td>
    <td>3.604</td>
 
  <tr>
    <td rowspan="5">w: 2, j: true</td>
    <td>162.345</td>
    <td>103.412</td>
    <td>8.180</td>
    <td>112.894</td>
    <td>75.872</td>
    <td>3.424</td>
  </tr>
  
  <tr>
    <td>163.742</td>
    <td>103.104</td>
    <td>8.320</td>
    <td>111.059</td>
    <td>75.228</td>
    <td>3.368</td>
  </tr>

  <tr>
    <td>161.493</td>
    <td>103.096</td>
    <td>8.580</td>
    <td>110.262</td>
    <td>76.080</td>
    <td>3.456</td>
  </tr>
  
  <tr>
    <td>163.864</td>
    <td>102.772</td>
    <td>8.512</td>
    <td>110.693</td>
    <td>75.176</td>
    <td>3.596</td>
  </tr>
  
  <tr>
    <td>162.813</td>
    <td>103.792</td>
    <td>8.332</td>
    <td>108.874</td>
    <td>75.720</td>
    <td>3.812</td>
  </tr>
  
  <tr>
    <td rowspan="5">Standalone mode</td>
    <td>63.163</td>
    <td>107.612</td>
    <td>10.352</td>
    <td>33.519</td>
    <td>75.060</td>
    <td>3.500</td>
  </tr>

  <tr>
    <td>63.211</td>
    <td>107.572</td>
    <td>10.748</td>
    <td>32.462</td>
    <td>74.632</td>
    <td>3.568</td>
  </tr>

  <tr>
    <td>63.300</td>
    <td>107.620</td>
    <td>10.860</td>
    <td>33.494</td>
    <td>74.844</td>
    <td>3.616</td>
  </tr>
  
  <tr>
    <td>62.848</td>
    <td>107.200</td>
    <td>10.420</td>
    <td>32.940</td>
    <td>74.908</td>
    <td>3.496</td>
  </tr>
  
  <tr>
    <td>63.405</td>
    <td>107.100</td>
    <td>10.444</td>
    <td>32.621</td>
    <td>74.764</td>
    <td>3.624</td>
  </tr> 
</table>
  
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
  

 



