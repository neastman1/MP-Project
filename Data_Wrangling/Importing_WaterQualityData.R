---
title: "Data Wrangling_Nicole"
author: "Nicole"
date: "2023-10-23"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
#Importing Data for Site EE3.0

```{r importing data}
EE3.0_1984_1993 <- read.csv("Data/Raw/EE3.0/EE3.0_1984-1993.csv")
View(EE3.0_1984_1993)

EE3.0_1993_2003 <- read.csv("Data/Raw/EE3.0/EE3.0_1993-2003.csv")

EE3.0_2013_2023 <- read.csv("Data/Raw/EE3.0/EE3.0_2013-2023.csv")
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
