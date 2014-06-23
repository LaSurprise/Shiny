---
title       : Shiny App Test with Storm Data
subtitle    : 
author      : LaSurprise
job         : My Job
framework   : io2012    # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, shiny, interactive]           # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---


Read-And-Delete1.Edit YAML front matter
2.Write using R Markdown
3.Use an empty line followed by three dashes to separate slides!

--- .class #id 

### Application documentation

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
        
#### Type runApp() to run apllication with shiny.

#### Type runDeck() to run apllication with slidify.

### Interactive Console

You can play by yourself, nothing complicated.

<!--html_preserve--><div class="container-fluid">
<div class="row-fluid">
<div class="span12" style="padding: 10px 0px;">
<h1>Shiny App Test</h1>
</div>
</div>
<div class="row-fluid">
<div class="span4">
<form class="well">
<div class="shiny-flow-layout">
<div>
<label class="control-label" for="plotType">Category</label>
<select id="plotType"><option value="None">None</option>
<option value="global">More Harmful</option>
<option value="trend" selected>Trend</option></select>
<script type="application/json" data-for="plotType" data-nonempty="">{}</script>
</div>
<div>
<label class="control-label" for="outcome">Outcome</label>
<select id="outcome"><option value="None">None</option>
<option value="Fatalities" selected>Fatalities</option>
<option value="Injuries">Injuries</option>
<option value="Eco Cost">Eco Cost</option></select>
<script type="application/json" data-for="outcome" data-nonempty="">{}</script>
</div>
</div>
<h5>====================</h5>
<div class="shiny-flow-layout">
<div>
<div id="col1" class="control-group shiny-input-radiogroup">
<label class="control-label" for="col1">Fatalities</label>
<label class="radio">
<input type="radio" name="col1" id="col11" value="blue"/>
<span>Blue</span>
</label>
<label class="radio">
<input type="radio" name="col1" id="col12" value="red" checked="checked"/>
<span>Red</span>
</label>
<label class="radio">
<input type="radio" name="col1" id="col13" value="yellow"/>
<span>Yellow</span>
</label>
<label class="radio">
<input type="radio" name="col1" id="col14" value="green"/>
<span>Green</span>
</label>
<label class="radio">
<input type="radio" name="col1" id="col15" value="grey"/>
<span>Grey</span>
</label>
<label class="radio">
<input type="radio" name="col1" id="col16" value="orange"/>
<span>Orange</span>
</label>
<label class="radio">
<input type="radio" name="col1" id="col17" value="black"/>
<span>Black</span>
</label>
</div>
</div>
<div>
<div id="col2" class="control-group shiny-input-radiogroup">
<label class="control-label" for="col2">Injuries</label>
<label class="radio">
<input type="radio" name="col2" id="col21" value="blue"/>
<span>Blue</span>
</label>
<label class="radio">
<input type="radio" name="col2" id="col22" value="red"/>
<span>Red</span>
</label>
<label class="radio">
<input type="radio" name="col2" id="col23" value="yellow"/>
<span>Yellow</span>
</label>
<label class="radio">
<input type="radio" name="col2" id="col24" value="green"/>
<span>Green</span>
</label>
<label class="radio">
<input type="radio" name="col2" id="col25" value="grey"/>
<span>Grey</span>
</label>
<label class="radio">
<input type="radio" name="col2" id="col26" value="orange" checked="checked"/>
<span>Orange</span>
</label>
<label class="radio">
<input type="radio" name="col2" id="col27" value="black"/>
<span>Black</span>
</label>
</div>
</div>
<div>
<div id="col3" class="control-group shiny-input-radiogroup">
<label class="control-label" for="col3">Eco Cost</label>
<label class="radio">
<input type="radio" name="col3" id="col31" value="blue"/>
<span>Blue</span>
</label>
<label class="radio">
<input type="radio" name="col3" id="col32" value="red"/>
<span>Red</span>
</label>
<label class="radio">
<input type="radio" name="col3" id="col33" value="yellow"/>
<span>Yellow</span>
</label>
<label class="radio">
<input type="radio" name="col3" id="col34" value="green"/>
<span>Green</span>
</label>
<label class="radio">
<input type="radio" name="col3" id="col35" value="grey" checked="checked"/>
<span>Grey</span>
</label>
<label class="radio">
<input type="radio" name="col3" id="col36" value="orange"/>
<span>Orange</span>
</label>
<label class="radio">
<input type="radio" name="col3" id="col37" value="black"/>
<span>Black</span>
</label>
</div>
</div>
</div>
<h5>====================</h5>
<h4>Set Category or Outcome = "None"</h4>
<div class="shiny-flow-layout">
<div>
<div id="col" class="control-group shiny-input-checkboxgroup">
<label class="control-label" for="col">Colors :</label>
<label class="checkbox">
<input type="checkbox" name="col" id="col1" value="4"/>
<span>Blue</span>
</label>
<label class="checkbox">
<input type="checkbox" name="col" id="col2" value="2"/>
<span>Red</span>
</label>
<label class="checkbox">
<input type="checkbox" name="col" id="col3" value="7"/>
<span>Yellow</span>
</label>
<label class="checkbox">
<input type="checkbox" name="col" id="col4" value="3"/>
<span>Green</span>
</label>
<label class="checkbox">
<input type="checkbox" name="col" id="col5" value="8"/>
<span>Grey</span>
</label>
<label class="checkbox">
<input type="checkbox" name="col" id="col6" value="1"/>
<span>Black</span>
</label>
</div>
</div>
<div>
<div>
<label class="control-label" for="value">Slider :</label>
<input id="value" type="slider" name="value" value="7" class="jslider" data-from="1" data-to="20" data-step="1" data-skin="plastic" data-round="FALSE" data-locale="us" data-format="#,##0.#####" data-scale="|;|;|;|;|;|;|;|;|;|;|;|;|;|;|;|;|;|;|;|" data-smooth="FALSE"/>
</div>
</div>
</div>
</form>
</div>
<div class="span8">
<div id="newPlot" class="shiny-plot-output" style="width: 100% ; height: 400px"></div>
</div>
</div>
</div><!--/html_preserve-->
---

