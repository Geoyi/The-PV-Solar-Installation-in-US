# PV Solar Installation in US: who has installed solar panel and who will be the next?

##Project idea
Studies showed that about 4.8million homeowners had installed solar panels in the states till 2015, and the solar energy market is growing rapidly.  Photovoltaic (PV) solar panels, which convert solar energy into electricity, are the most attractive for the homeowners. Indeed, the cost and returned benefit of solar compared to current utility bills is the most concerned question.  However, there is a tremendous business value for solar energy companies, and to be able to <b> visualize the long term tendency of the market </b> is vital for their survival in the market. For example: 

1.	Who have installed PV solar panels, and what the characters of the household, e.g.  How the age, household income, education background, current utility rate, race, home location, current PV solar resource, existing incentive and tax credits have impacted on their decision-making on the panel installation?
2.	What is the tendency pattern of solar panel installation looks like across the nations, and with what speed? Which household is the most likely to install solar panels in the future? 

<b>The expected primary output from this proposal is a web map application </b> . It will contain two major functions. The first one is the cost and returned benefit for the household according to their home geolocation; the second one are the interactive maps for the companies about the geolocations of their future customers and the growing trends.  

## Public Data Sources
To answer these two questions, I’ve downloaded and scraped 1670M (1.67G) datasets in total from multiple sources:  
(1). <a href = "http:// openEI.org"> electricity rate by zip codes</a>; 

(2). <a href = "http://www.nrel.gov/gis/solar.html"> A 10km resolution of solar energy resources map</a>, in ESRI shapefile,  was downloaded the National Renewable Energy Laboratory (NREL); It was later extracted by zipcode polygon downloaded from ESRI ArcGIS online.

(3). <a href = "https://openpv.nrel.gov/login.php?dest=data"> Current solar panel installation data was scraped from the website of open PV website</a>,  a collection of installation by zip code. It requires registration to be able to access the data. It is part of NREL.  The dataset includes the zip code of the installation, the cost, the size of the installation and the state of each location. 

(4). Household income, education, the population of each zip code was obtained from US census. 

(5). The average cost of the solar installation for each state was scraped from the website: <a href = "http://cleantechnica.com/2014/02/04/current-cost-solar-panels/"> Current cost of solar panels</a> . and <a href = "http://costofsolar.com/why-solar-energy/"> Why Solar Energy ?</a>. 
More of datasets for this proposal will be downloaded from <a href = "https://energydemo.github.io/SolarDatasets/"> Department of Energy on GitHub </a> via API.

##Initial outputs 
![netcost](https://cloud.githubusercontent.com/assets/14057932/16921247/56a4d79a-4cd6-11e6-8cd9-4f45eadaffcc.jpg)
<i> Incentive program and tax credits bring down the cost of solar panel installation. This is the average costs for each state.</i>
![monthly saving](https://cloud.githubusercontent.com/assets/14057932/16921248/56a775f4-4cd6-11e6-8511-15d133e39a49.jpg)
<i>Go solar would save homeowners’ spending on the utility bill. </i>
![payback years](https://cloud.githubusercontent.com/assets/14057932/16921249/56a79886-4cd6-11e6-8de9-7533e2cea488.jpg)
<i>Payback years could vary from state to state. High cost does not mean a longer period of payback years, but it also highly depends on the state’s current electricity rate, state subsidy/incentive schemes.The higher the current electricity rate, the sooner you would pay back the solar panel installation. The higher the incentives from the state, the sooner you will pay off the installation cost. </i>




