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
- etl_clean Branch: Master ETL Code for cleaning data, removing outliers, and finding feature importance
- Model Testing Branch: Contains testing models for performing machine learning on the Reactor, Tower A, and Tower B data in reference to the Lab results data. 

## Provisional Machine Learning Model
Twelve (12) provisional machine learning models have been created and published on the Model Testing Branch. These models currently are used as stand-ins for the final machine learning model and have helped the team determine the best methods for cleaning and determining feature importances on the raw datasets for Tower A, Tower B, and the Reactor. These provisional models have also helped guide the descision making in selecting the best model library to use for the final project deliverable. An outline of machine learning models is provided below:
- Tower A: (Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine)
- Tower B: (Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine)
- Reactor: (Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine)

-- Note: A copy of the Model Testing Branch's "Model" folder has been uploaded to the Main Branch.

## Description of the analysis phase of the project
An extensive ETL Phase for cleaning data, removing outliers, and finding feature importance was completed. The 5 cleaned datasets were then uploaded to PostgreSQL as 5 seperate table, with primary keys of Date, as each date represents a unique data field, shared by all datasets. The 5 tables were then merged using the SQL inner-join command as one table named project_data. 

The merged project_data table was the exorted to a Pandas DataFrame using pd.sql_read. Once the project_data table was available as a DataFrame, 5 Machine Learning models (Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine) were set-up to analyze the data, with the hope to either predict the N-Butane vol% in the TA Recycle stream, or predict if the N-Butane vol% was over the binary qualifier (greater that 13%). Overall acuracy and the Mean Absolute Error perfomance metric absolute_value(predicted - actual) was then used to determine the best model. Results are described in the Explanation of Model Choice section below. 

-- Note: A copy of the SQL Query Code can be found in the "SQL Code" folder in the Main Branch
-- Note: A copy of the pythod code that exported the SQL table can be found in the "SQL Extact" filer in the Main Branch.
-- Note: A copy of the final model and unselected models can be found in the "Final Models" folder in the Main Branch 

## Explanation of Model Choice: including limitations and benefits 
After testing the cleaned and joined data through the following models, Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine, the model selected was SK Learn's Linear Regression model. This model was chosen because the output (y_predict) was more acurate, and an actual representation of the N-Butane Vol%, rather than a binary grouping prediction. This number based prediction proves more valuable in real-world operations of the process unit in question. 

SK Learn's train_test_split function was used to split the model into training and testing arrays, using a random state of zero. The The model testing performance, when used to predict the X_test split was quite robust, though not perfect. The group had an opportunity to showcase the linear regression models output to the companies process unit subject matter expert, who was quite pleased with the performace. The following performace metric results were gathered based on the X_test predictions. 

- Residual Plot: The plot in Figure 2 show evenly distributed residuals, thus giving reason to believe the model performs well and is not over-fit. 
### Figure 2: Residual Plot
![2](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/Residual_Plot.png)

- The total Mean Absolute Error is 1.92, meaning the average error is only 1.92 Vol%. 
- The total Root Mean Squared Error is 3.51

Finally, real time data, not included in the original dataset was taken from the past 3 weeks and ran in place of the X_test data as X_realtime data. This was to simulate real time data entering the model and graphed to simulate an operators view of actual and simulated N-Butane Vol% in TA's recycle line. The results are shown in Figure 3 below. 
### Figure 3: Real Time Model Performance
![3](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/Real_Time.png)

In conclusion, there is certainly limitations to the model. While it does not predict the N-Butane Vol% exactly, it does seem to trend the general direction of the N-Butane Vol%, and generally predicts this figure within 2-5 Vol% points. In fact, the larger descrepancies between actual and predicted seem to occur when certain temperature and flow measurments were zero, which indicates either process upset or instument error. By only allowing the prediction to occur when all input data streams are within normal operating conditions, performance is likly to improve.  

## Provisional Database
A provisional database that stands in for the final database, mimics the expected final database structure or schema, and is connected to the provisional models has been constructed using 4 of 5 raw datasets (Reactor Data isn't ready yet) as a series of CSV files. A provisional SQL Diagram has be created to help visualize the final SQL Database that will be used for this project in Figure #2 below:

### Figure 4: Provisional SQL Diagram
![4](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/SQL_mockup.png)