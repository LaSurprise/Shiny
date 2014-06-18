### Application documentation : "ShinyTest_StormData"

In order to run correctly this application, make sure that you have all things OK before.    
The more recent version of R must be installed on your computer.   
Useful packages have to be installed and loaded.   
Files used must be on the working directory.    

#### Install useful packages.  
 
        * install.packages("devtools")    
        * require(devtools)    
        * install_github(c('slidify', 'slidifyLibraries'), 'ramnathv', ref = 'dev')   
        * install_github('rCharts', 'ramnathv')    
        * install_github('shiny', 'rstudio')  
 
#### Copy these files in your working directory : 
        * ecocost.rds
        * fatalities.rds
        * injuries.rds
        * TrendData.rds
        * server.R
        * ui.R
        
#### Using RStudio, load these packages :
        * shiny
        * slidify
        * slidifyLibraries
        * XML 
        
#### Type runApp() to run this application with shiny.

#### Type runDeck() to run this application with slidify.

### Interactive Console

You can play by yourself, nothing complicated.