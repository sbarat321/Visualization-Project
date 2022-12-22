---
  title: "Visualization Project (Component 1)"
author: "Sulagna Barat"
date: "2022-11-02"
output:
  pdf_document: default
html_document:
  df_print: paged
word_document: default
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(warning = FALSE)
```
## **ABSTRACT**

The main goal of this project is to provide a visual representation of Human Development Index and Inequality-Adjusted HDI scenario to comparatively gauge a country’s spectrum of progress, or, on the other hand sole triggers of lagging behind, so as to initiate preventive measures to address the burning issues of today’s human civilization.
We will be visualizing various Uni-variate and Multivariate plots to understand the relationship between the variables. Also, we will draw some Time series based charts to witness how the HDI has changed over time.

## **CONTENT**

* *Introduction*
  * *About the Data Set*
  * *Working Variables*
  * *The Objective of the Project*
  * *Analysis*
  * *Conclusion*
  
  ## **INTRODUCTION**
  
  My project comprises three parts. It revolves around providing a comparative study:-
  
  1. Among different components of HDI such that Life Expectancy at Birth, Expected & Mean Years of Schooling, GNI Per Capita. (We have taken 15 countries of each category)
2. Among different components of IHDI such that Inequality adjusted Life Expectancy at Birth, Education & Income. (We have taken 15 countries of each category)
3. Lastly, a 30 year Trend Analysis of HDI among different countries. (This will appear in the final project dashboard)

## **ABOUT THE DATA SET**

The data sets I am working on are:-
  
  1. Human Development Index and its components 
2. Inequality-adjusted Human Development Index 
3. Trends in the Human Development Index, 1990-2021
Source: https://hdr.undp.org/data-center/documentation-and-downloads

\newpage

# **WORKING VARIABLES**

Variable Name	|     Type	          |     Description
-------------  |-------------------- |-------------------
  Country     	|Categorical (Nominal)|Country name
Life Expectancy (at birth)	        | Numeric(Continuous)| Assumed longevity(2021)
Expected Years of Schooling	          | Numeric(Continuous)|	  |Attaining education(2021)
GNI per capita       	  |Numeric(Discrete)  |Individual gross national income (2017 PPP$)
HDI Value 	| Numeric(Continuous)  |Human Development Index
Inequality-adjusted Life Expectancy 	        | Numeric(Continuous)| Inequality discounted assumed longevity (2021)
Inequality-adjusted Education          | Numeric(Continuous)||Inequality discounted attainment of education (2021)
Inequality-adjusted Income          | Numeric(Continuous)||Inequality discounted earning (2021)
Gini Coefficient   	|Numeric(Continuous)	| Wealth inequality reflector (2010-2021)

## **THE OBJECTIVE OF THE PROJECT**

*   **Extractions from HDI**
  1. Among the groups of very high and high developed nations, which are the respective best and worst in terms of life expectancy, excepted schooling year & per capita GNI?
  2. Changes in HDI rankings for two consecutive years.
3. Trend of change over years.


*   **Extractions from IHDI**
  1. Among the groups of medium and low developed nations, which are the respective best & worst in terms of inequality-adjusted life expectancy, education & income?
  2. Among the aforementioned, where does the wealth inequality prevail the most? 
  3. Income shareholding scenario.

## **ABBREVIATIONS USED**
1. Very Highly Developed Countries - VHDC
2. Highly Developed Countries      - HDC
3. Medium Developed Countries      - MDC
4. Low Developed Countries         - LDC

\newpage

### **ANALYSIS**
*   **A STUDY ON VERY HIGHLY DEVELOPED COUNTRIES (HDC)**
  
  ```{r echo=FALSE, warning=FALSE}
data=read.csv("VHD_HDI.csv")
library(ggplot2)
ggplot(data,aes(y=Country,x=Expectancy_2021,fill=Country))+
  geom_bar(stat="identity")+
  labs(title="Life Expectancy at birth (for VHDC)")
```

```{r echo=FALSE, warning=FALSE}
```
Although the fluctuations of values among countries are nearly subtle, SAR is seemingly having the highest life expectancy and Germany is seemingly having the lowest life expectancy at birth in 2021.

```{r echo=FALSE, warning=FALSE}
data=read.csv("VHD_HDI.csv")
ggplot(data,aes(y=Countries,x=Values,fill=Schooling))+
  geom_bar(stat="identity", position="dodge")+
  labs(title="Expected vs Mean Schooling Years (for VHDC)")
```

Australia accounts for the highest expected years of schooling and Ireland accounts for the lowest mean years of schooling.
```{r echo = FALSE, warning = FALSE}
```


```{r echo=FALSE, warning=FALSE}
data=read.csv("VHD_HDI.csv")
ggplot(data,aes(x=Country,y=GNI_per_capita_2021,fill=Country))+
  geom_bar(stat="identity")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="GNI per Capita (2021) for VHDC")+coord_flip()
```
Very prominently, GNI Per Capita is highest for Singapore and lowest for New Zealand.

\newpage

```{r echo=FALSE, warning=FALSE}
data=read.csv("VHD_HDI.csv")
ggplot(data,aes(x=Countries,y=HDI,fill=Years))+
  geom_bar(stat="identity", position="dodge")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="HDI Rank of VHDC for two consecutive years")+coord_flip()
```
HDI rank has been improved (HDI rank in 2020 is greater than HDI rank in 2021) in Belgium, Finland, Sweden & Switzerland. On the contrary, it has been worsened for Denmark, Germany, Norway, Iceland & Singapore. Remaining countries (Australia, Canada, SAR, Ireland, Netherlands & New Zealand) witnessed no change in their HDI rank for consecutive two years.

\newpage

*   **A STUDY ON HIGHLY DEVELOPED COUNTRIES (HDC)**
  
  ```{r echo=FALSE, warning=FALSE}
data=read.csv("HD_HDI.csv")
library(ggplot2)
ggplot(data,aes(x=Country,y=Expectancy_2021,fill=Country))+
  geom_bar(stat="identity")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="Life Expectancy at birth (for HDC)")+coord_flip()
```

Although the fluctuations of values among countries are nearly subtle, China is seemingly having the highest life expectancy and Moldova is seemingly having the lowest life expectancy at birth in 2021.

```{r echo=FALSE, warning=FALSE}
data=read.csv("HD_HDI.csv")
ggplot(data,aes(x=Countries,y=Values,fill=Schooling))+
  geom_bar(stat="identity", position="dodge")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="Expected vs Mean Schooling Years (for HDC)")+coord_flip()
```
Grenada accounts for the highest expected years of schooling and China accounts for the lowest mean years of schooling. And clearly, Grenada has the highest (pessimistic) difference between expected & mean years of schooling.
```{r echo=FALSE, warning=FALSE}
data=read.csv("HD_HDI.csv")
ggplot(data,aes(x=Country,y=GNI_per_capita_2021,fill=Country))+
  geom_bar(stat="identity")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="GNI per Capita (2021) for HDC")+coord_flip()
```

Very prominently, GNI Per Capita is highest for Seychelles and lowest for Barbados.

```{r echo=FALSE, warning=FALSE}
data=read.csv("HD_HDI.csv")
ggplot(data,aes(x=Countries,y=HDI,fill=Years))+
  geom_bar(stat="identity", position="dodge")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="HDI Rank of HDC for two consecutive years")+coord_flip()
```
HDI rank has been worsened (HDI rank in 2020 is lesser than HDI rank in 2021) for Bosnia & Herzegivina, Bulgaria and Seychelles. Antigua & Barbuda witnessed no change in their HDI rank for consecutive two years. Rest all has minor but significant improve in their HDI rank in 2021 compared to 2020.

\newpage

*   **A STUDY ON MEDIUM DEVELOPED COUNTRIES (MDC)**
  
  ```{r echo=FALSE, warning=FALSE}
data=read.csv("3MD.csv")
library(ggplot2)
ggplot(data,aes(x=Country,y=Gini_coefficient_2010_2021,fill=Country))+
  geom_bar(stat="identity")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="Gini Coefficient for MDC (2010-21)")+coord_flip()
```
Kiribati & Guatemala has the lowest & highest Gini coeffecient respectively in the period of 2010-2021. (A Gini index of 0 represents perfect equality, while an index of 100 implies perfect inequality)

```{r echo=FALSE, warning=FALSE}
data=read.csv("3MD.csv")
ggplot(data,aes(x=Countries,y=Values,fill=Inequality_adjusted_index_2021))+
  geom_bar(stat="identity", position="dodge")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="Parameter-wise IHDI for MDC")+coord_flip()
```
Inequality adjusted index for Education, Income and Life Expectancy is lowest for Bhutan, Nicaragua and Ghana whereas they are respectively highest at Kyrgystan, Iraq and Nicaragua.

\newpage

```{r echo=FALSE}
data=read.csv("3MD.csv")
ggplot(data,aes(x=Countries,y=Val,fill=Index))+
  geom_bar(stat="identity", position="dodge")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="HDI vs IHDI for MDC")+coord_flip()
```
Even after eliminating the effect the inequality, Ghana has the lowest & Kyrgyztan has the highest index value. Hence their IHDI rank is just the opposite extremes.

\newpage

*   **A STUDY ON LOW DEVELOPED COUNTRIES (LDC)**
  
  ```{r echo=FALSE, warning=FALSE}
data=read.csv("4LD.csv")
library(ggplot2)
ggplot(data,aes(x=Country,y=Gini_coefficient_2010_2021,fill=Country))+
  geom_bar(stat="identity")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="Gini Coefficient for LDC (2010-2021)")+coord_flip()
```
Pakistan & Lesotho has the lowest & highest Gini coeffecient respectively in the period of 2010-2021. So inequality is mostly prominent in Pakistan among the chosen low deveoped countries.

```{r echo=FALSE, warning=FALSE}
data=read.csv("4LD.csv")
ggplot(data,aes(x=Countries,y=Values,fill=Inequality_adjusted_index_2021))+
  geom_bar(stat="identity", position="dodge")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="Parameter-wise IHDI (for LDC)")+coord_flip()
```
Inequality adjusted index for Education, Income and Life Expectancy is lowest for Senegal, Haiti and Nigeria whereas they are respectively highest at Lesotho, Senegal and Pakistan.

```{r echo=FALSE, warning=FALSE}
data=read.csv("4LD.csv")
ggplot(data,aes(x=Countries,y=Val,fill=Index))+
  geom_bar(stat="identity", position="dodge")+
  theme(axis.text.x=element_text(angle=90,hjust=1))+labs(title="HDI vs IHDI (for LDC)")+coord_flip()
```
Even after eliminating the effect the inequality, Haiti has the lowest & Tanzania has the highest index value. Hence their IHDI rank is just the opposite extremes.

\newpage

##  **CONCLUSION**
According to the models, we can arrive at these following conclusions:
  
  1. Within Very High Developed Countries, China has the highest & New Moldova has the lowest GNI. Within High Developed Countries, Hong Kong has the highest & Germany has the lowest Life Expectancy in the same year (2021).

2. Within Very High Developed Countries, Singapore has the highest & New Zealand has the lowest GNI. Within High Developed Countries, Seychelles has the highest & Barbados has the lowest GNI in the same year (2021).

3. Among Very Highly Developed Countries, Australia, Canada, Hong Kong, Ireland, Netherlands, New Zealand managed to maintaing their HDI intact. Among the rest only Belgium, Finland, Sweden & Switzerland were improving.

4. Although the fluctuations were marginal among Highly Developed Countries, only Antigua & Barbadua maintained intact HDI. Rest were proportionately increasing & decreasing.

5. Among Medium developed countries, Morocco has most wide spectrum indices among IHDI categories.

6. Among Low developed countries, Senegal has most wide spectrum indices among IHDI categories.


**Dashboard link:**
  https://sbarat321.shinyapps.io/VISPROJECT/
  
**Presentation link:**
  https://youtu.be/b3FKEzO0R84
  
  
  
  
  
  
  