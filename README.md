# MechaCar_Statistical_Analysis


## Overview of the Module 15 Challenge

The project's objective is to review the production data of a new car prototype that is having troubles through the fabrication process. There are some statistical tests that are going to help the decision of rejecting or not being able to reject the null hypothesis.

### Files and Folders

MechaCarChallenge.R

Resources: Images

## Results

Through some statistics calculations ( linear regression, summary statistics, and T-tests), it was possible to get information regarding the distribution and variability of different production lots. 

### Linear Regression to Predict MPG

Through a multiple linear regression, we got the P-values of the different variables (vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD) that might be affecting the mpg. 

From the results shown in the image, the Vehicle length (p-value = 2.60e-12) and the ground clearance (p-value=5.21e-08) are variables that provide a non-random amount of variance to the mpg. This can is assumed thanks to their p-values being under the significance level. 

The p-value in the linear regression analysis is 5.35x10-11, which is smaller than the standard significance level (0.05). Therefore, there is enough evidence to reject the null hypothesis, which means that the slope of the model is not zero. 

With the p-value and the R-squared value, we can think that our model is good enough but it is important to consider how each independent variable is affecting the mpg. Therefore, the model is not efficient and cannot entirely predict the mpg of MechaCar because only two variables out of five have a p-value under the significance level, which means that those ones might predict the MechaCar. 

!['LR_PredictMPG'](https://github.com/DylanMontemayor/MechaCar_Statistical_Analysis/blob/main/Resources/LR_PredictMPG.png)

### Summary Statistics on Suspension Coils

If we just look at the total Variance we can say that the data meet the design specification even when we might have different results reviewing the data per lot. 

According to the lot summary, we can say that the Lot1 and Lot2 satisfy the design specifications. The Lot3 is pretty far from meeting the specification since the variance is 170 pounds per square inch which is above the maximum allowed (100). 

!['total_summary'](https://github.com/DylanMontemayor/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

!['lot_summary'](https://github.com/DylanMontemayor/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

### T-Tests on Suspension Coils

then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

Overall, the t-test for the whole data gives us a p-value of 0.06 which is over the significance level. Therefore, we don't have sufficient evidence to reject the null hypothesis, and we would state that all the manufacturing lots aren't statistically different from the population mean of 1,500 pounds per square inch. 

!['T_data'](https://github.com/DylanMontemayor/MechaCar_Statistical_Analysis/blob/main/Resources/T_data.png)

The P-value of Lot1 shows that we don't have sufficient evidence to reject the null hypothesis, and we would state that all the manufacturing lots aren't statistically different from the population mean of 1,500 pounds per square inch. 

With  p-value=0.61 for Lot2, we don't have sufficient evidence to reject the null hypothesis, and we would state that all the manufacturing lots aren't statistically different from the population mean of 1,500 pounds per square inch. 

With a p-value=0.42 for Lot3, we have sufficient evidence to reject the null hypothesis, and we would state that all the manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch. 

!['T_perlot'](https://github.com/DylanMontemayor/MechaCar_Statistical_Analysis/blob/main/Resources/T_perlot.png)

### Study Design: MechaCar vs Competition

There are many ways in which it might be possible to quantify MechaCar performance against the competition. In the next paragraph, we are going to describe an example. 

1. We are going to select three main variables for our study. In this case, we are choosing city fuel consumption. 

2. The null hypothesis will be that there is no statistical difference between the MechaCar city fuel consumption and the competition. 

3. A two-sample t-test will be performed to test the hypothesis because we are going to be having two different continuous samples (one from MechaCar and the other from the competition). 

4. We will need to get the two sample measurements of city fuel consumption in mpg units. Through the process of getting the data, it will be needed to control the scenario in order to reduce any noise from external factors. In the simulation, we will set certain parameters like distance, time, temperature, wind current, soil type, etc., all of them are going to be the same for both samples. 

