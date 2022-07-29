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
- ETL branch contains current work related to the cleaning and processing of the raw data
- Prelim_testing branch contains preliminary testing of different models and general playing around with the data to better understand it 
- Model_testing branch contains several tests of various models, for us to familiarize further with the different available models, which will lead to us choosing the most appropriate ones to conduct our analysis