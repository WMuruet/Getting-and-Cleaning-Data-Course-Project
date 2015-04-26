---
title: "Code Book"
author: "Walter Muruet"
---
# CODE BOOK
## Getting and Cleaning Data Course Project

### Source of Data Sets

The Raw Data was collected by Jorge L. Reyes-Ortiz et al[1]. at the University of California, Irvine (UCI) for the Center for Machine Learning and Intelligent Systems.

The used Data Set belongs to the Human Activity Recognition Using Smartphones Data Set from the Machine Learning Repository

The Source Data is freely available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Raw Data Collection

The experiments were carried out with a group of 30 volunteers ages 19-48 years. Each person performed the following  six activities while wearing a smartphone (Samsung Galaxy S II) on the waist:

(I) Walking
(II) Walking Upstairs
(III) Walking Downstairs
(IV) Sitting
(V) Standing
(VI) Laying

Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz.                    The experiments were video-recorded to label the data manually. The obtained dataset was originally randomly partitioned into two sets with 70% of the volunteers in the training data set and 30% in the test data set. Both data sets are presently merged into one data set named tidyDS.csv 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Please contact original authors for further information:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

### Description of Variables

The tidyDS.csv contains a processed tidy version of the raw data sets
A total of 88 variables were included with 180 observations. The following list makes a brief description of the variables included. Please Refer to the README.md File for information regarding the processing of the raw data.

1       Subject                 Categorical, nominal variable. Factor with 30 levels. Indicates the Subject in which the measurement were performed

2	Activity                Categorical, nominal variable. Factor with 6 levels. Indicates the activity performed during the measurements.

3	timeBodyAccel.mean.X    Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Mean Body Acceleration time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

4	timeBodyAccel.mean.Y    Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Mean Body Acceleration time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

5	timeBodyAccel.mean.Z    Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Mean Body Acceleration time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

6	timeGravityAccel.mean.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Mean Gravity Acceleration Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

7	timeGravityAccel.mean.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Mean Gravity Acceleration Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

8	timeGravityAccel.mean.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Mean Gravity Acceleration Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

9	timeBodyAccelJerk.mean.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Mean Body Acceleration Jerk Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

10	timeBodyAccelJerk.mean.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Mean Body Acceleration Jerk Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

11	timeBodyAccelJerk.mean.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Mean Body Acceleration Jerk Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

12	timeBodyAngularAccel.mean.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Mean Body Angular Acceleration Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

13	timeBodyAngularAccel.mean.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Mean Body Angular Acceleration Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

14	timeBodyAngularAccel.mean.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Mean Body Angular Acceleration Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

15	timeBodyAngularAccelJerk.mean.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Mean Body Angular Acceleration Jerk Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

16	timeBodyAngularAccelJerk.mean.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Mean Body Angular Acceleration Jerk Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

17	timeBodyAngularAccelJerk.mean.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Mean Body Angular Acceleration Jerk Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

18	timeBodyAccelmagnitude.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration Magnitude Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data calculated using Euclidean norm.

19	timeGravityAccelMagnitude.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Gravity Acceleration Magnitude Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data calculated using Euclidean norm.

20	timeBodyAccelJerkMagnitude.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration Jerk Magnitude Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data calculated using Euclidean norm.

21	timeBodyAngularMagnitude.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Angular Acceleration Magnitude Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data calculated using Euclidean norm.

22	timeBodyAngularAccelJerkMag.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Angular Acceleration Jerk Magnitude Time Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data calculated using Euclidean norm.

23	freqBodyAccel.mean.X Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration in the X component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

24	freqBodyAccel.mean.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration in the Y component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

25	freqBodyAccel.mean.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration in the Z component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

26	freqBodyAccel.meanFreq.X Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Acceleration in the X component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

27	freqBodyAccel.meanFreq.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Acceleration in the Y component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

28	freqBodyAccel.meanFreq.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Acceleration in the Z component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

29	freqBodyAccelJerk.mean.X Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration Jerk in the X component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

30	freqBodyAccelJerk.mean.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration Jerk in the Y component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

31	freqBodyAccelJerk.mean.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration Jerk in the Z component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

32	freqBodyAccelJerk.meanFreq.X Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Acceleration Jerk in the X component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

33	freqBodyAccelJerk.meanFreq.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Acceleration Jerk in the Y component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

34	freqBodyAccelJerk.meanFreq.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Acceleration Jerk in the Z component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

35	freqAngularAccel.mean.X Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Angular Acceleration in the X component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

36	freqAngularAccel.mean.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Angular Acceleration in the Y component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

37	freqAngularAccel.mean.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Angular Acceleration in the Z component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

38	freqAngularAccel.meanFreq.X Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Angular Acceleration in the X component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

39	freqAngularAccel.meanFreq.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Angular Acceleration in the Y component of the Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

40	freqAngularAccel.meanFreq.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Angular Acceleration in the Z component of Frequency the Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

41	freqBodyAccelMag.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration Magnitude in the  Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

42	freqBodyAccelMag.meanFreq Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Acceleration Magnitude in the  Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

43	freqBodyAccelJerkMag.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Acceleration Jerk Magnitude in the  Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

44	freqBodyAccelJerkMag.meanFreq Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Acceleration Jerk Magnitude in the  Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

45	freqBodyAngularMagnitude.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Angular Acceleration  Magnitude in the  Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

46	freqBodyAngularMagnitude.meanFreq Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Angular Acceleration Magnitude in the  Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

47	freqAngularAccelJerkMag.mean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Mean Body Angular Acceleration Jerk Magnitude in the  Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

48	freqAngularAccelJerkMag.meanFreq Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Average of Frequencies Body Angular Acceleration Jerk Magnitude in the  Frequency  Domain for each pair of Subject-Activity (i.e Subject1-Walking.). Raw data obtained by performing a Fast Fourier Transformation.

49	angle.timeBodyAccelMean.gravity. Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Angle between Mean Body Acceleration in the Time Domain and Mean Gravity for each pair of Subject-Activity (i.e Subject1-Walking.).

50	angle.timeBodyAccelJerkMean..gravityMean. Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Angle between Mean Body Acceleration Jerk in the Time Domain and Mean Gravity for each pair of Subject-Activity (i.e Subject1-Walking.).

51	angleTimeBodyAngularMeanGravityMean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Angle between Mean Body Angular Acceleration in the Time Domain and Mean Gravity for each pair of Subject-Activity (i.e Subject1-Walking.).

52	angleTimeBodyAngularJerkMeanGravityMean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Angle between Mean Body Angular Acceleration Jerk in the Time Domain and Mean Gravity for each pair of Subject-Activity (i.e Subject1-Walking.).

53	angleXGravityMean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Angle between X component and Mean Gravity for each pair of Subject-Activity (i.e Subject1-Walking.).

54	angleYGravityMean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Angle between Y component and Mean Gravity for each pair of Subject-Activity (i.e Subject1-Walking.).

55	angleZGravityMean Numerical, continuous variable. No unit of measure provided. Mean of all measures of the Angle between Z component and Mean Gravity for each pair of Subject-Activity (i.e Subject1-Walking.).

56	timeBodyAccel.standardDeviation.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Standard Deviation of Body Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

57	timeBodyAccel.standardDeviation.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Standard Deviation of Body Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

58	timeBodyAccel.standardDeviation.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Standard Deviation of Body Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

59	timeGravityAccel.standardDeviation.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Standard Deviation of Gravity Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

60	timeGravityAccel.standardDeviation.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Standard Deviation of Gravity Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

61	timeGravityAccel.standardDeviation.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Standard Deviation of Gravity Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

62	timeBodyAccelJerk.standardDeviation.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Standard Deviation of Body Acceleration Jerk in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

63	timeBodyAccelJerk.standardDeviation.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Standard Deviation of Body Acceleration Jerk in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

64	timeBodyAccelJerk.standardDeviation.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Standard Deviation of Body Acceleration Jerk in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

65	timeBodyAngularAccel.standardDeviation.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Standard Deviation of Body Angular Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

66	timeBodyAngularAccel.standardDeviation.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Standard Deviation of Body Angular Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

67	timeBodyAngularAccel.standardDeviation.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Standard Deviation of Body Angular Acceleration in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

68	timeBodyAngularAccelJerk.standardDeviation.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Standard Deviation of Body Angular Acceleration Jerk in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.) 

69	timeBodyAngularAccelJerk.standardDeviation.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Standard Deviation of Body Angular Acceleration Jerk in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

70	timeBodyAngularAccelJerk.standardDeviation.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Standard Deviation of Body Angular Acceleration Jerk in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

71	timeBodyAccelmagnitude.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures  of the Standard Deviation of Body Acceleration Magnitude in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

72	timeGravityAccelMagnitude.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures  of the Standard Deviation of Gravity Acceleration Magnitude in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

73	timeBodyAccelJerkMagnitude.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures  of the Standard Deviation of Body Acceleration Jerk Magnitude in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

74	timeBodyAngularMagnitude.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures  of the Standard Deviation of Body Angular Acceleration Magnitude in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

75	timeBodyAngularAccelJerkMag.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures  of the Standard Deviation of Body Angular Acceleration Jerk Magnitude in the time Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

76	freqBodyAccel.standardDeviation.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Standard Deviation of Body Acceleration in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

77	freqBodyAccel.standardDeviation.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Standard Deviation of Body Acceleration in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

78	freqBodyAccel.standardDeviation.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Standard Deviation of Body Acceleration in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

79	freqBodyAccelJerk.standardDeviation.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Standard Deviation of Body Acceleration Jerk in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

80	freqBodyAccelJerk.standardDeviation.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Standard Deviation of Body Acceleration Jerk in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

81	freqBodyAccelJerk.standardDeviation.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Standard Deviation of Body Acceleration Jerk in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

82	freqAngularAccel.standardDeviation.X Numerical, continuous variable. No unit of measure provided. Mean of all measures in the X component of the Standard Deviation of Body Angular Acceleration in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

83	freqAngularAccel.standardDeviation.Y Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Y component of the Standard Deviation of Body Angular Acceleration in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

84	freqAngularAccel.standardDeviation.Z Numerical, continuous variable. No unit of measure provided. Mean of all measures in the Z component of the Standard Deviation of Body Angular Acceleration in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

85	freqBodyAccelMag.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures in the of the Standard Deviation of Body Acceleration Magnitude in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

86	freqBodyAccelJerkMag.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures in the of the Standard Deviation of Body Acceleration Jerk Magnitude in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

87	freqBodyAngularMagnitude.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures in the of the Standard Deviation of Body Angular Acceleration Magnitude in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)

88	freqAngularAccelJerkMag.standardDeviation Numerical, continuous variable. No unit of measure provided. Mean of all measures in the of the Standard Deviation of Body Angular Acceleration Jerk Magnitude in the Frequency Domain for each pair of Subject-Activity (i.e Subject1-Walking.)



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012