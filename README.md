# Prediction of Normal Butane Volume Percentage in Tower A Recycle to Reactor
## Red-Project Team Members
- Eva Hawkins
- Anna Day
- John Arney

## Project Purpose

Utilize plant data from multiple unit assets to develop machine learning methods to predict "live" volume percentage of N-Butane build up in Tower A recycle line to Reactor. 

### Background
Excess N-Butane accumulates in the Tower A recycle stream and essentially dilutes the isobutane content resulting in unfavorable reaction conditions, effects reaction quality, and I:O ratio (Isobutane : Olefin). Lab sample frequency periods being too far apart (12 hours) along with subtle N-Butane accumulation manifests in a way that is difficult for humans to recognize
quickly or effectively. However, N-Butane must be removed in such a way that there is a balance on the reaction, separation section, and in the product stream. The more N-Butane that leaves the unit, the more isobutane also leaves the unit, therefore a balance must take place in the unit between the two species to keep N-Butane manageable while limiting Isobutane loses.

### Description of Data Source
The source data comes from 5 individual asset data files pulled from the site process information historian in the form of CSV files. This data was pulled over a 9.5 year span and contains over 1.2 million individual data points before the ETL process was began. A block flow diagram of the process is included in Figure #1 below, along with individual sensor datapoints in their respective locations. 

#### Figure 1: Process Block Flow
![1](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/Block_Flow.jpg)

### Desired Outcome and Opportunity Economics
The project analysis output hopes to provide plant operations with a live view of the predicted Volume Percentage of N-Butane in the Tower A Recycle line.

By allowing realtime monitoring and thus, optimization of N-Butane levels, the following opportunity cost benefits may be realized anually:

* Online Analyzer Replacement Costs: $1M
* Octane Optimization: N-Butane levels over 15% coorelate to product values roughly 1 octane number lower than that of less than 15%: $700K YTD forcast
* Maintenance Costs due to polymerized olefin contamination: $500K (conservative estimation)
* Total = $1.2M annually

## Project Summary: Exploration Phase
### Data Exploration Process
The exploratory data analysis process began with checking the raw data for non-numerical values. We found that there were a few text strings: "Bad", "Bad Input", "Error", and "I/O Timeout". All values across the datasets were object types, and we wanted to convert those to float types. The text strings were preventing the whole dataset from being converted with minimal code. So, we replaced these text strings with NaN values, and dropped them. Then we did a full conversion, and generated summary statistics to get an idea of the spread of the data values. We noted multiple values that made no sense (like percent values that fell outside 0-100) and marked them for removal.

During the EDA process we also saw that some datetimes were strange. Data was collected at 2 times every day: hour 6 and hour 13, and never at any minute besides 00. A significant chunk of the data was collected at arbitrary datetimes, and this was concerning. After some discussion, we realized that the dates that were strange fell under a period of turnaround for the plant, meaning that the plant itself was shut down and all the data collected in the period was invalid. We marked those datetimes for removal during the data cleaning process.

### Feature Importances
We also went ahead and calculated some feature importances, feature coefficients, and correlations to understand the relationships of the features among each other and with different model types. The feature importance functions such as model.coef_ and model.feature_importances_, along with naitive process knowlege of team group members, allowed for a systematic ranking of features. Though 54 of the original 56 features were left in the model, the feature importance ranking is a valuable output and will be used to further tune the model outside of the class project end date.  


### Provisional Machine Learning Model
Twelve (12) provisional machine learning models were created and published on the Model Testing Branch. These models were used as stand-ins for the final machine learning model and have helped the team determine the best methods for cleaning and determining feature importances. These provisional models have also helped guide the descision making in selecting the best model library to use for the final project deliverable. An outline of machine learning models is provided below:
- Tower A: (Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine)
- Tower B: (Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine)
- Reactor: (Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine)

-- Note: A copy of the Model Testing Branch's "Model" folder has been uploaded to the Main Branch.

## Project Summary: Analysis Phase
### Final Database
An extensive ETL Phase for cleaning data, removing outliers, and finding feature importance was completed. The 5 cleaned datasets were then uploaded to PostgreSQL as 5 seperate table, with primary keys of Date, as each date represents a unique data field, shared by all datasets. The 5 tables were then merged using the SQL inner-join command as one table named project_data. This project_data table was used as the final database source for the project analysis and the diagram can be seen in Figure #2 below:

#### Figure 2: SQL ERD Diagram
![2](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/Updated_ERD.png)

### Model Analysis
The merged project_data table was exorted to a Pandas DataFrame using pd.sql_read. Once the project_data table was available as a DataFrame, 5 Machine Learning models (Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine) were set-up to analyze the data, with the hope to either predict the N-Butane vol% in the TA Recycle stream, or predict if the N-Butane vol% was over the binary qualifier (greater that 13%). Overall acuracy and the Mean Absolute Error perfomance metric absolute_value(predicted - actual) was then used to determine the best model. Results are described in the Explanation of Model Choice section below. 

-- Note: A copy of the SQL Query Code can be found in the "SQL Code" folder in the Main Branch
-- Note: A copy of the pythod code that exported the SQL table can be found in the "SQL Extact" filer in the Main Branch.
-- Note: A copy of the final model and unselected models can be found in the "Final Models" folder in the Main Branch 

### Explanation of Model Choice: Limitations and Benefits 
After testing the cleaned and joined data through the following models, Linear Regression, Logistic Regression, Random Forrest, and Support Vector Machine, the model selected was SK Learn's Linear Regression model. This model was chosen because the output (y_predict) was more acurate, and an actual representation of the N-Butane Vol%, rather than a binary grouping prediction is output. This number based prediction proves more valuable in real-world operations of the process unit in question. 

SK Learn's train_test_split function was used to split the model into training and testing arrays, using a random state of zero. The model testing performance, when used to predict the X_test split, was quite robust though not perfect. The group had an opportunity to showcase the linear regression model's output to the company's process unit subject matter expert, who was quite pleased with the performace. 

## Project Summary: Analysis Output Performance
### Performance Metrics
The following performace metric results were gathered based on the X_test predictions. 

- Residual Plot: The plot in Figure 2 show evenly distributed residuals, thus giving reason to believe the model performs well and is not over-fit. 
#### Figure 3: Residual Plot
![3](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/Residual_Plot.jpg)

- The total Mean Absolute Error is 1.92, meaning the average error is only 1.92 Vol%. 
- The total Root Mean Squared Error is 3.51
- Absolute Deviation Accuracy: 84.3% 
- Total Deviation Accuracy: 99.4%

### Real Time Model Performance
Finally, real time data, not included in the original dataset was taken from the past 3 weeks and ran in place of the X_test data as X_realtime data. Unfortunately, unit downtime during this time-span allowed only 4 days of continuous runtime data to be input. This real time data was input to the model to simulate an operators view of actual and simulated N-Butane Vol% in TA's recycle line. The results are shown in Figure 4 below. 
#### Figure 4: Real Time Model Performance
![4](https://github.com/Jarney903/Red-ProjectHub/blob/main/Graphics/Real_Time.jpg)

### Conclusion
In conclusion, there is certainly limitations to the model. While it does not predict the N-Butane Vol% exactly, it does seem to trend the general direction of the N-Butane Vol%, and generally predicts this figure within 2-5 Vol% points. By only allowing the prediction to occur when all input data streams are within normal operating conditions, performance is likly to improve.  


## Resources:
CSV files
* Tower A Dataset
* Tower B Dataset
* Tower C Dataset
* North/South Reactor Dataset
* Lab Results Dataset

Software:
* PostgreSQL
* Python 3.9.12
* Pandas
* Matplotlib
* SKlearn.Linear_Model
* Jupyter Notebook
* Visual Studio Code
* Quick Data Base Diagrams
* Google Slides
* Flask App

## Git Hub Overview
- main: Branch to hold Master README.md, Final Model files, SQL Query Code and Export code, Final Presentation Files. 
- etl_clean: Branch to hold work containing Master ETL Code for cleaning data, removing outliers, and finding feature importance
- model_testing: Branch to hold testing models for performing machine learning on the Reactor, Tower A, and Tower B data in reference to the Lab results data.
-  final_ml: Branch to hold work and notes on creating final machine learning model.
- SQL_DB: Branch to hold work on creating PostgreSQL tables and merging tables to create final table for ML Model. 
- flask_html: Branch to hold work and notes on creating flask app/dashboard