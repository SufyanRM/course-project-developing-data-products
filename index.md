---
title       : Shiny Application and Reproducible Pitch
subtitle    : Course Project - Developing Data Products
author      : Sufyan Mughal
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview

1. This application predicts the Diamond price based on the characteristics provided by the user and interfaced as a Shiny web application.

2. The application takes the following input:

* Carat
* Cut
* Color
* Clarity 

--- .class #id 

## Process

* The application fits a multivariate linear model based on the Input provided by the user and predicts a diamond price using the 'diamonds' dataset.

![application](image1.png)

--- .class #id 

## ui.R

![userInterface](image2.png)

--- .class #id 

## server.R

![applicationLogin](image3.png)

--- .class #id

## Source(s)

The Application live demo can be found [here](https://smug.shinyapps.io/DiamondPrice) at Shinyapps.io

[Github repository](https://github.com/SufyanRM/course-project-developing-data-products)

Thank you.

Dated: 13/January/2019
