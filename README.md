# PV Solar Installation in US: who has installed solar panel and who will be the next?

##Project idea
Photovoltaic (PV) solar panels, which convert solar energy into electricity, are one of the most attractive options for the homeowners.  Studies have shown that by 2015, there are about 4.8million homeowners had installed solar panels in the United states of America. and meanwhile, the solar energy market continues growing rapidly.  Indeed, the estimated cost and potential saving of solar is the most concerned question.  However, there is<b> a tremendous commercial potential for the solar energy business, and visualizing the long term tendency of the market is vital for the solar energy companies’ survival in the market </b>. The visualization process could be realized by examining the following aspects:  

1.	Who has installed PV panels, and what are the characteristics of the household, e.g. what’s the age, household income, education level, current utility rate, race, home location, current PV resource, existing incentive and tax credits for those that have installed PV panels?
2.	What does the pattern of solar panel installation looks like across the nation, and at what rate? Which household is the most likely to install solar panels in the future? 

<b>The expected primary output from this proposal is a web map application </b>. It will contain two major functions. The first is the cost and returned benefit for the households according to their home geolocation. The second is interactive maps for the companies of the geolocations of their future customers and the growth trends..  

## Public Data Sources
To answer these two questions, datasets of 1670M (1.67G) were downloaded and scraped from multiple sources:  
(1). <a href = "http:// openEI.org"> Electricity rate by zip codes</a>; 

(2). <a href = "http://www.nrel.gov/gis/solar.html"> A 10km resolution of solar energy resources map</a>, in ESRI shapefile,  was downloaded the National Renewable Energy Laboratory (NREL); It was later extracted by zipcode polygon downloaded from ESRI ArcGIS online.

(3). <a href = "https://openpv.nrel.gov/login.php?dest=data"> Current solar panel installation data was scraped from the website of open PV website</a>, a collection of installations by zip code. It requires registration to be able to access the data. It is part of NREL. The dataset includes the zip code of the installation, the cost, the size of the installation and the state of each location.

(4). Household income, education, the population of each zip code was obtained from US census. 

(5). The average cost of the solar installation for each state was scraped from the website:  <a href = "http://cleantechnica.com/2014/02/04/current-cost-solar-panels/">Current cost of solar panels</a> and <a href = "http://costofsolar.com/why-solar-energy/">Why Solar Energy?</a> More of datasets for this proposal will be downloaded from the <a href = "https://energydemo.github.io/SolarDatasets/">Department of Energy on GitHub</a> via API.

##Initial outputs 

### The cost and payback period for the PV solar installation: Why not go solar! 

![netcost](https://cloud.githubusercontent.com/assets/14057932/16921247/56a4d79a-4cd6-11e6-8cd9-4f45eadaffcc.jpg)
<i> Incentive programs and tax credits bring down the cost of solar panel installation. This is the average costs for each state.</i>
![monthly saving](https://cloud.githubusercontent.com/assets/14057932/16921248/56a775f4-4cd6-11e6-8511-15d133e39a49.jpg)
<i>Going solar would save homeowners’ spending on electricity bill.</i>
![payback years](https://cloud.githubusercontent.com/assets/14057932/16921249/56a79886-4cd6-11e6-8de9-7533e2cea488.jpg)
<i>Payback years vary from state to state, depending on incentives and costs. High cost does not necessarily mean a longer payback period, because it also depends on the state’s current electricity rate and state subsidy/incentive schemes. The higher the current electricity rate, the sooner you would recoup the costs of solar panel installation. The higher the incentives from the state, the sooner you will recoup the installation cost. </i>

### How many PV panels have been installed and where? 
![number of solar installation](https://cloud.githubusercontent.com/assets/14057932/16921453/3daf0674-4cd7-11e6-9e5c-0173837e8f5a.png)
<br> <i>The number of solar panels installed in the states that have been registered on NREL’s Open PV Project.</i> There were about 500,000 installations I was able to collect from the Open PV Project. It’s zip-code-based data, so I’ve been able to merge it to the “zip code” package on R. My R codes file is added here at my GitHub project.

<b> Two interactive maps were produced in RStudio with "leaflet"</b>
![solar installation_screen shot1](https://cloud.githubusercontent.com/assets/14057932/16921880/08913938-4cd9-11e6-8b5c-3c526bd0cc01.png)
An overview of the solar panel installation in the United States.

![solar installation_screen shot2](https://cloud.githubusercontent.com/assets/14057932/16922044/ae91ceb0-4cd9-11e6-9ef6-dd0bb2597aff.png)
Residents on the West Coast have installed about 32,000 solar panels from the data registered on the Open PV Project, and most of them were installed by residents in California. When zoomed in closely, one could easily browse through the details of the installation locations around San Francisco.

![solar installation_screen shot3](https://cloud.githubusercontent.com/assets/14057932/16922307/a985e09a-4cda-11e6-8cee-114139d312f8.png)
Another good location would be the DC area. The East Coast has less solar energy resource (kW/m2) compared to the West Coast, especially California. However, the solar panel installations of homeowners around DC area are very high too. From above maps, we know that because the cost of installation is much lower, and the payback period is much faster compared to other parts of the country. It would be fascinating to dig out more information/factors behind their installation motivation. We could zoom in too much more detailed locations for each installation on this interactive map. 

However, some areas, like DC and San Francisco, have a much larger population compared to other parts of US, which means there are going to be much more installations. An installation rate per 10,000 people would be much more appropriate. Therefore, I produced another interactive map with the installation rate per 10,000 people, the bigger the size of the circle is the higher rate of the installation. 
![solar installation_screen shot4](https://cloud.githubusercontent.com/assets/14057932/16922832/e7581422-4cdc-11e6-8a43-861f8ace4817.png)
The largest installation rate in the country is in the city of Ladera Ranch, located in South Orange County, California. Though, the reson behind it is not clear and more analysis is needed.

![solar installation_screen shot5](https://cloud.githubusercontent.com/assets/14057932/16923048/f2b515c6-4cdd-11e6-8e27-81ace27776cb.png)

Buckland, MA has the highest installation on the East Coast. I can’t explain what the motivation behind it yet either. Further analysis of the household characteristics would be helpful. These two interactive maps were uploaded to <a href = "https://github.com/Geoyi/The-PV-Solar-Installation-in-US">my GitHub repository</a>, where you will be able to see the R code I wrote to process the data as well.

<b>Note</b>: I cannot guarantee the accuracy of the analysis. My results are based on two days of data mining, wrangling and analysis. The quality of the analysis is highly depended on the quality of the data and on how I understood the datasets in such limited time. A further validation of the analysis and datasets is needed.

For further contact the author, please find me on: https://geoyi.org; or email me: geospatialanalystyi@gmail.com.

