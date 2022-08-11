<<<<<<< HEAD
# Red-ProjectHub
Team Members
- Eva Hawkins
- Anna Day
- John Arney

## Content

Utilize plant data from multiple unit assets to develop machine learning methods to predict "live" volume percentage of N-Butane build up in Tower A recycle line to Reactor. 

Excess N-Butane accumulates in the Tower A recycle stream and essentially dilutes the isobutane content resulting in unfavorable reaction conditions, effects reaction quality, and I:O ratio (Isobutane : Olefin). Lab sample frequency periods being too far apart along with subtle N-Butane accumulation manifests in a way that is difficult for humans to recognize
quickly or effectively. However, N-Butane must be removed in such a way that there is a balance on the reaction, separation section, and in the product stream. The more N-Butane that leaves the unit, the more isobutane also leaves the unit, therefore a balance must take place in the unit between the two species to keep N-Butane manageable while limiting Isobutane loses.

The source data comes from individual asset data files pulled from the site process information historian in the form of CSV files. This data was pulled over a 9.5 year span and contains over 1.2 million individual data points before the ETL process was began. A block flow diagram of the process is included in Figure #1 below, along with individual sensor datapoints in their respective locations. 

### Figure 1: Process Block Flow
![1](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/Block_Flow.jpg)

The project analysis output hopes to provide plant operations with a live view of the predicted Volume Percentage of N-Butane in the Tower A Recycle line. 

## Communication Protocols

The team meets primarity on Tuesday's and Thursday's at 7:00 PM CST. The team also meets earlier on Thursday at 3:00 PM CST to review work and forecast future deliverables. The primary form of text comunication is done via Slack on the 06-Red channel. 

## Git Hub Overview

- Main Branch: Master README.md
- ETL Branch: Master ETL Code for cleaning data, removing outliers, and finding feature importance
- Model Testing Branch: Contains testing models for performing machine learning on the Reactor, Tower A, and Tower B data in reference to the Lab results data. 

## Provisional Machine Learning Model
Twelve (12) provisional machine learning models have been created and published on the Model Testing Branch. These models currently are used as stand-ins for the final machine learning model and have helped the team determine the best methods for cleaning and determining feature importances on the raw datasets for Tower A, Tower B, and the Reactor. These provisional models have also helped guide the descision making in selecting the best model library to use for the final project deliverable. An outline of machine learning models is provided below:
- Tower A: (Linear Regression, Logistic Regression, Rondaom Forrest, and Support Vector Machine)
- Tower B: (Linear Regression, Logistic Regression, Rondaom Forrest, and Support Vector Machine)
- Reactor: (Linear Regression, Logistic Regression, Rondaom Forrest, and Support Vector Machine)

-- Note: A copy of the Model Testing Branch's "Model" folder has been uploaded to the Main Branch.

## Provisional Database
A provisional database that stands in for the final database, mimics the expected final database structure or schema, and is connected to the provisional models has been constructed using the 5 raw datasets as a series of CSV files. A provisional SQL Diagram has be created to help visualize the final SQL Database that will be used for this project in Figure #2 below:

### Figure 2: Provisional SQL Diagram
![2](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/SQL_Diagram.jpg)
=======
# Final Project: N-Butane Recycle Build Up

## Project Overview:

### Purpose:

This analysis aims to provide insights about Tower A in relation to the N-Butane Recycle Build Up in alkylation units. If time permits, this analysis will also attempt to analyze data from Tower B, Tower C, and the reactor units. 

Proposed methods to conduct the analysis include principal component analysis, neural networks, supervised and unsupervised machine learning models, and piecewise linear regression to accurately predict N-Butane recycle build up. 


### Background:
N-Butane is a colorless gas with an odor of Natural gas, is a Flammable Gas and a Dangerous Fire Hazard. N-Butane store in tightly closed containers in a cool, well-ventilated area away from HEAT. Store at temperatures bellow 125 F. N-Butane comes with the raw material input that is processed through alkylation units. This compound, while inert, reduces the strength of the hydrochloric acid that is necessary to create the chemical reaction that produces the desired alkylate fuel. The intended chemical reaction is one that absorbs heat, however, if the strength of the acid is reduced due to N-Butane running through the units, heat will build up, posing a safety issue. This company need develop a real machine learning methods to handle issues in the towers and predict temperature to keep the community and the enviroment safe and recycle N-Butane effectively.


### Analysis and Challenges

#### Analysis

The Analysis covers a Lab Data containing 1,203,246 Data Points (10 years records, temperature)

We are focusing on the last 9.5 years temperature records of N-Butane (7.5 after realizing 2 of those years were turnaround years, where the plants were shut down) where we are observing the highest temperature and the lowest temperature per day to keep the towers out the dangerous temperature window and recycle N-Butane effectively.

#### Challenges
Some of the challenges encountered with the data was timestamp formats for N-Butane temperatures records and for us as a group decide what kind of machine learning and cleaning data methods use for this project in order to have a better data view and generate Model accurate to contribute to this company's success.

### Results 
to be determined

### Conclusions
Conclusion 1 - to be determined

Conclusion 2 - to be determined


Recommendations: to be determined


# Segment 1
- ETL branch contains past work related to the cleaning and processing of the raw data
- etl_clean branch contains a better organized version of the ETL branch work (Please look here for finalized ETL work)
- Prelim_testing branch contains preliminary testing of different models and general playing around with the data to better understand it 
- Model_testing branch contains several tests of various models, for us to familiarize further with the different available models, which will lead to us choosing the most appropriate ones to conduct our analysis
>>>>>>> f9e529761a558625c13db846a339d8594211868a
