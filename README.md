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

### The cost and payback period for the PV solar installation: why not go SOLAR! 

![netcost](https://cloud.githubusercontent.com/assets/14057932/16921247/56a4d79a-4cd6-11e6-8cd9-4f45eadaffcc.jpg)
<i> Incentive program and tax credits bring down the cost of solar panel installation. This is the average costs for each state.</i>
![monthly saving](https://cloud.githubusercontent.com/assets/14057932/16921248/56a775f4-4cd6-11e6-8511-15d133e39a49.jpg)
<i>Go solar would save homeowners’ spending on the utility bill. </i>
![payback years](https://cloud.githubusercontent.com/assets/14057932/16921249/56a79886-4cd6-11e6-8de9-7533e2cea488.jpg)
<i>Payback years could vary from state to state. High cost does not mean a longer period of payback years, but it also highly depends on the state’s current electricity rate, state subsidy/incentive schemes.The higher the current electricity rate, the sooner you would pay back the solar panel installation. The higher the incentives from the state, the sooner you will pay off the installation cost. </i>

### How many PV solar panels have been installed and where? 
![number of solar installation](https://cloud.githubusercontent.com/assets/14057932/16921453/3daf0674-4cd7-11e6-9e5c-0173837e8f5a.png)
<i>The number of solar panels installed in the states that have been registered on NREL’s the open PV project. </i>
There is about 500,000 installations I collected from the open PV project runs by NREL. It’s zip-code-based data, so I’ve been able to merge it to “zipcode” package on R. My R codes file is added here at my GitHub project.

<b> Two interactive maps were produced on RStudio with "leaflet"</b>
![solar installation_screen shot1](https://cloud.githubusercontent.com/assets/14057932/16921880/08913938-4cd9-11e6-8b5c-3c526bd0cc01.png)
An overview of the solar panel installation in the states from Hawaii, central, west and east coast. 

![solar installation_screen shot2](https://cloud.githubusercontent.com/assets/14057932/16922044/ae91ceb0-4cd9-11e6-9ef6-dd0bb2597aff.png)
Residents in west coast have installed about  32,000 solar panels from the data registered on the open PV project, and most of them were installed by the residents in California. When we zoomed in closely, we could easily browse through the detail installation locations around San Francisco. 

![solar installation_screen shot3](https://cloud.githubusercontent.com/assets/14057932/16922307/a985e09a-4cda-11e6-8cee-114139d312f8.png)
Another good location would be the DC area. Suprisely, east coast has less solar energy resource (kW/m2) compares to west coast especially California. However, the solar panel installations of homeowners around DC area  are very high too. From above maps, we know that because the cost of the installation is much lower, and the payback period is much faster compares to other parts of the states. It would be fascinating to dig out more information/factors behind their installation motivation. We could zoom in much more detailed locations for each installation on this interactive map. 

However, some area like DC and San Francisco are having much more population compare to other parts of US, which mean there are gonna be much more installations.  An installation rate per 10,000 people would be much more appropriate.  Therefore, I produced another interactive map with the installation rate per 10,000people, the bigger the size of the circle is the higher rate of the installation. 
![solar installation_screen shot4](https://cloud.githubusercontent.com/assets/14057932/16922832/e7581422-4cdc-11e6-8a43-861f8ace4817.png)
The largest installation rate across the states is from the city called Ladera Ranch, located in south Orange County, California, and I could not explain the reason behind it yet.

![solar installation_screen shot5](https://cloud.githubusercontent.com/assets/14057932/16923048/f2b515c6-4cdd-11e6-8e27-81ace27776cb.png)
Apparently,  Buckland has the highest installation on the east coast, and I can’t explain what the motivation behind it yet as well. Further analysis of the household characteristics would be helpful. 
Two of my interactive maps were uploaded to <a href = "https://github.com/Geoyi/The-PV-Solar-Installation-in-US">my github repository</a>, and you will be able to see the R codes I wrote to process the data as well.


# <i> ~~ Why not go solar!! </i>
