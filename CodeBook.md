# Getting and Cleaning Data Course Project Code Book

## Data Set
The text file average.txt contains the names of the variables in the first row and the values of the variables in the following rows. The values of this data set are space-separated.

## Variables 
Each row contains 79 averaged measurements for a given subject and activity.

### Subject 
Subject identifier is an integer and takes values from 1 to 30.

### Activity
Activity identifier is a text string and takes the following values:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

### Measurements 
The measurements are normalized double-precision values within [-1,1]. There are three measurements of each class in the X, Y and Z directions.

Mean of the time-domain body acceleration:
- timeDomainBodyAccelerometerMeanX 
- timeDomainBodyAccelerometerMeanY 
- timeDomainBodyAccelerometerMeanZ 

Standard deviation of the time-domain body acceleration:
- timeDomainBodyAccelerometerStandardDeviationX 
- timeDomainBodyAccelerometerStandardDeviationY 
- timeDomainBodyAccelerometerStandardDeviationZ 

Mean of the time-domain gravity acceleration:
- timeDomainGravityAccelerometerMeanX 
- timeDomainGravityAccelerometerMeanY 
- timeDomainGravityAccelerometerMeanZ 

Standard deviation of the time-domain gravity acceleration:
- timeDomainGravityAccelerometerStandardDeviationX 
- timeDomainGravityAccelerometerStandardDeviationY 
- timeDomainGravityAccelerometerStandardDeviationZ 

Mean of the time-domain body acceleration jerk:
- timeDomainBodyAccelerometerJerkMeanX 
- timeDomainBodyAccelerometerJerkMeanY 
- timeDomainBodyAccelerometerJerkMeanZ 

Standard deviation of the time-domain body acceleration jerk:
- timeDomainBodyAccelerometerJerkStandardDeviationX 
- timeDomainBodyAccelerometerJerkStandardDeviationY 
- timeDomainBodyAccelerometerJerkStandardDeviationZ 

Mean of the time-domain body angular velocity:
- timeDomainBodyGyroscopeMeanX 
- timeDomainBodyGyroscopeMeanY 
- timeDomainBodyGyroscopeMeanZ 

Standard deviation of the time-domain body angular velocity:
- timeDomainBodyGyroscopeStandardDeviationX 
- timeDomainBodyGyroscopeStandardDeviationY 
- timeDomainBodyGyroscopeStandardDeviationZ 

Mean of the time-domain body angular velocity jerk:
- timeDomainBodyGyroscopeJerkMeanX 
- timeDomainBodyGyroscopeJerkMeanY 
- timeDomainBodyGyroscopeJerkMeanZ 

Standard deviation of the time-domain body angular velocity jerk:
- timeDomainBodyGyroscopeJerkStandardDeviationX 
- timeDomainBodyGyroscopeJerkStandardDeviationY 
- timeDomainBodyGyroscopeJerkStandardDeviationZ 

Mean and standard deviation of the time-domain magnitude of body acceleration:
- timeDomainBodyAccelerometerMagnitudeMean 
- timeDomainBodyAccelerometerMagnitudeStandardDeviation 

Mean and standard deviation of the time-domain magnitude of gravity acceleration:
- timeDomainGravityAccelerometerMagnitudeMean 
- timeDomainGravityAccelerometerMagnitudeStandardDeviation 

Mean and standard deviation of the time-domain magnitude of body acceleration jerk:
- timeDomainBodyAccelerometerJerkMagnitudeMean 
- timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation 

Mean and standard deviation of the time-domain magnitude of body angular velocity:
- timeDomainBodyGyroscopeMagnitudeMean 
- timeDomainBodyGyroscopeMagnitudeStandardDeviation 

Mean and standard deviation of the time-domain magnitude of body angular velocity jerk:
- timeDomainBodyGyroscopeJerkMagnitudeMean 
- timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation 

Mean of the frequency-domain body acceleration:
- frequencyDomainBodyAccelerometerMeanX 
- frequencyDomainBodyAccelerometerMeanY 
- frequencyDomainBodyAccelerometerMeanZ 

Standard deviation of the frequency-domain body acceleration:
- frequencyDomainBodyAccelerometerStandardDeviationX 
- frequencyDomainBodyAccelerometerStandardDeviationY 
- frequencyDomainBodyAccelerometerStandardDeviationZ 

Weighted mean of the frequency components of the frequency-domain body acceleration:
- frequencyDomainBodyAccelerometerMeanFrequencyX 
- frequencyDomainBodyAccelerometerMeanFrequencyY 
- frequencyDomainBodyAccelerometerMeanFrequencyZ 

Mean of the frequency-domain body acceleration jerk:
- frequencyDomainBodyAccelerometerJerkMeanX 
- frequencyDomainBodyAccelerometerJerkMeanY 
- frequencyDomainBodyAccelerometerJerkMeanZ 

Standard deviation of the frequency-domain body acceleration jerk:
- frequencyDomainBodyAccelerometerJerkStandardDeviationX 
- frequencyDomainBodyAccelerometerJerkStandardDeviationY 
- frequencyDomainBodyAccelerometerJerkStandardDeviationZ 

Weighted mean of the frequency components of the frequency-domain body acceleration jerk:
- frequencyDomainBodyAccelerometerJerkMeanFrequencyX 
- frequencyDomainBodyAccelerometerJerkMeanFrequencyY 
- frequencyDomainBodyAccelerometerJerkMeanFrequencyZ 

Mean of the frequency-domain body angular velocity:
- frequencyDomainBodyGyroscopeMeanX 
- frequencyDomainBodyGyroscopeMeanY 
- frequencyDomainBodyGyroscopeMeanZ 

Standard deviation of the frequency-domain body angular velocity:
- frequencyDomainBodyGyroscopeStandardDeviationX 
- frequencyDomainBodyGyroscopeStandardDeviationY 
- frequencyDomainBodyGyroscopeStandardDeviationZ 

Weighted mean of the frequency components of the frequency-domain body angular velocity:
- frequencyDomainBodyGyroscopeMeanFrequencyX 
- frequencyDomainBodyGyroscopeMeanFrequencyY 
- frequencyDomainBodyGyroscopeMeanFrequencyZ 

Mean, standard deviation, and weighted mean of the frequency components of the frequency-domain magnitude of body acceleration:
- frequencyDomainBodyAccelerometerMagnitudeMean 
- frequencyDomainBodyAccelerometerMagnitudeStandardDeviation 
- frequencyDomainBodyAccelerometerMagnitudeMeanFrequency 

Mean, standard deviation, and weighted mean of the frequency components of the frequency-domain magnitude of body acceleration jerk:
- frequencyDomainBodyAccelerometerJerkMagnitudeMean 
- frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation 
- frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency 

Mean, standard deviation, and weighted mean of the frequency components of the frequency-domain magnitude of body angular velocity:
- frequencyDomainBodyGyroscopeMagnitudeMean 
- frequencyDomainBodyGyroscopeMagnitudeStandardDeviation 
- frequencyDomainBodyGyroscopeMagnitudeMeanFrequency 

Mean, standard deviation, and weighted mean of the frequency components of the frequency-domain magnitude of body angular velocity jerk:
- frequencyDomainBodyGyroscopeJerkMagnitudeMean 
- frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation 
- frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency 