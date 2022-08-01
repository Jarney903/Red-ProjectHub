# Red-ProjectHub
Team Members
- Eva Hawkins
- Anna Day
- John Arney

## Content

Test

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
- etl_clean Branch: Master ETL Code for cleaning data, removing outliers, and finding feature importance
- Model Testing Branch: Contains testing models for performing machine learning on the Reactor, Tower A, and Tower B data in reference to the Lab results data. 

## Provisional Machine Learning Model
Twelve (12) provisional machine learning models have been created and published on the Model Testing Branch. These models currently are used as stand-ins for the final machine learning model and have helped the team determine the best methods for cleaning and determining feature importances on the raw datasets for Tower A, Tower B, and the Reactor. These provisional models have also helped guide the descision making in selecting the best model library to use for the final project deliverable. An outline of machine learning models is provided below:
- Tower A: (Linear Regression, Logistic Regression, Rondaom Forrest, and Support Vector Machine)
- Tower B: (Linear Regression, Logistic Regression, Rondaom Forrest, and Support Vector Machine)
- Reactor: (Linear Regression, Logistic Regression, Rondaom Forrest, and Support Vector Machine)

-- Note: A copy of the Model Testing Branch's "Model" folder has been uploaded to the Main Branch.

## Provisional Database
A provisional database that stands in for the final database, mimics the expected final database structure or schema, and is connected to the provisional models has been constructed using 4 of 5 raw datasets (Reactor Data isn't ready yet) as a series of CSV files. A provisional SQL Diagram has be created to help visualize the final SQL Database that will be used for this project in Figure #2 below:

### Figure 2: Provisional SQL Diagram
![2](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/SQL_mockup.png)