# Dataset Codebook

This code book is about the data inside the tidy_data.txt

## Data
The dataset was derived from the merged training and test datasets.


## Variables
The information regarding the variables of the dataset where taken from the features_info.txt

The features selected for this database come from the accelerometer and gyroscope.
It is also composed of the time based and frequency based variables.

## Identifiers

* subject -ranges from 1-30. serves as id for the volunteers                                      
* activity - activities are taken from the activity_labels.txt.
 
  It has 6 possible types of activities which are the following:

	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING 

## Time-based Mean

* timeBodyAcc-Mean-X                             
* timeBodyAcc-Mean-Y                             
* timeBodyAcc-Mean-Z                             
             
* timeGravityAcc-Mean-X                          
* timeGravityAcc-Mean-Y                          
* timeGravityAcc-Mean-Z                          
          
* timeBodyAccJerk-Mean-X                         
* timeBodyAccJerk-Mean-Y                         
* timeBodyAccJerk-Mean-Z                         
        
* timeBodyGyro-Mean-X                            
* timeBodyGyro-Mean-Y                            
* timeBodyGyro-Mean-Z                            
          
* timeBodyGyroJerk-Mean-X                        
* timeBodyGyroJerk-Mean-Y                        
* timeBodyGyroJerk-Mean-Z                        
         
* timeBodyAccMag-Mean                            
         
* timeGravityAccMag-Mean                         
       
* timeBodyAccJerkMag-Mean                        
     
* timeBodyGyroMag-Mean                           
           
* timeBodyGyroJerkMag-Mean          

## Time-based Standard Deviation

* timeBodyAcc-Standard_Deviation-X               
* timeBodyAcc-Standard_Deviation-Y               
* timeBodyAcc-Standard_Deviation-Z 

* timeGravityAcc-Standard_Deviation-X            
* timeGravityAcc-Standard_Deviation-Y            
* timeGravityAcc-Standard_Deviation-Z  

* timeBodyAccJerk-Standard_Deviation-X           
* timeBodyAccJerk-Standard_Deviation-Y           
* timeBodyAccJerk-Standard_Deviation-Z   

* timeBodyGyro-Standard_Deviation-X              
* timeBodyGyro-Standard_Deviation-Y              
* timeBodyGyro-Standard_Deviation-Z    

* timeBodyGyroJerk-Standard_Deviation-X          
* timeBodyGyroJerk-Standard_Deviation-Y          
* timeBodyGyroJerk-Standard_Deviation-Z 

* timeBodyAccMag-Standard_Deviation  

* timeGravityAccMag-Standard_Deviation  

* timeBodyAccJerkMag-Standard_Deviation 

* timeBodyGyroMag-Standard_Deviation  

* timeBodyGyroJerkMag-Standard_Deviation  

## Frequency based Mean
* frequencyBodyAcc-Mean-X                        
* frequencyBodyAcc-Mean-Y                        
* frequencyBodyAcc-Mean-Z                        
        
* frequencyBodyAcc-MeanFreq-X                    
* frequencyBodyAcc-MeanFreq-Y                    
* frequencyBodyAcc-MeanFreq-Z                    
* frequencyBodyAccJerk-Mean-X                    
* frequencyBodyAccJerk-Mean-Y                    
* frequencyBodyAccJerk-Mean-Z                    

* frequencyBodyAccJerk-MeanFreq-X                
* frequencyBodyAccJerk-MeanFreq-Y                
* frequencyBodyAccJerk-MeanFreq-Z                
* frequencyBodyGyro-Mean-X                       
* frequencyBodyGyro-Mean-Y                       
* frequencyBodyGyro-Mean-Z                       
     
* frequencyBodyGyro-MeanFreq-X                   
* frequencyBodyGyro-MeanFreq-Y                   
* frequencyBodyGyro-MeanFreq-Z                   
* frequencyBodyAccMag-Mean                       
        
* frequencyBodyAccMag-MeanFreq                   
* frequencyBodyBodyAccJerkMag-Mean               

* frequencyBodyBodyAccJerkMag-MeanFreq           
* frequencyBodyBodyGyroMag-Mean                  
 
* frequencyBodyBodyGyroMag-MeanFreq              
* frequencyBodyBodyGyroJerkMag-Mean              

* frequencyBodyBodyGyroJerkMag-MeanFreq  

* frequencyBodyAcc-Standard_Deviation-X          
* frequencyBodyAcc-Standard_Deviation-Y          
* frequencyBodyAcc-Standard_Deviation-Z  

* frequencyBodyAccJerk-Standard_Deviation-X      
* frequencyBodyAccJerk-Standard_Deviation-Y      
* frequencyBodyAccJerk-Standard_Deviation-Z      

* frequencyBodyGyro-Standard_Deviation-X         
* frequencyBodyGyro-Standard_Deviation-Y         
* frequencyBodyGyro-Standard_Deviation-Z    

* frequencyBodyAccMag-Standard_Deviation 

* frequencyBodyBodyAccJerkMag-Standard_Deviation 

* frequencyBodyBodyGyroMag-Standard_Deviation   

* frequencyBodyBodyGyroJerkMag-Standard_Deviation



## Transformations
After the dataset was downloaded 
Here the following transformations

1. The activity labels and features were read using the loadData function
2. The columns of the data frame activitylabels and features were given column names for easier manipulation
3. The training and test data were also read using the loadData function.
4. The training subject, training x (values) and training y (activity) were merged using cbind (column bind)
5. The test subject, test x (values) and test y (values) were merged using cbind (column bind)
6. The results of the cbinds of the training and test dataframes were then now merged using rbind (row bind)
7. The wanted columns are only those of means and standard deviations.
8. The merged dataset was also given appropriate columns.
9. The means and standard deviations were selected using regular expressions.
10. The column names that has the features of mean and standard deviation were selected
	* further cleaning was done. All the () were removed
	* the f was replaced by frequency
	* the t was replaced by time
	* mean was replaced by Mean
	* std was replaced by Standard_Deviation