##In order to run this script the following packages need to be installed:  data.table, lubridate, dplyr, reshape2


##STEP 1:

        ##Merge the training and test sets to create one data set
        ##Train folder:  subject_train.txt, x_train.txt, y_train.txt
        ##Test folder:  subject_train.txt, x_train.txt, y_train.txt

        ##read in the zipped file
        
        dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(dataset_url, "accelerometers.zip")
        unzip("accelerometers.zip", exdir = "accelerometers")
        
        ##read in the data sets needed for the course project
        
        subject_train <- read.table(file = "accelerometers/UCI HAR Dataset/train/subject_train.txt", header = TRUE, sep = ".")
        x_train <- read.table(file = "accelerometers/UCI HAR Dataset/train/X_train.txt", header = TRUE, sep = ".")
        y_train <- read.table(file = "accelerometers/UCI HAR Dataset/train/y_train.txt", header = TRUE, sep = ".")
        subject_test <- read.table(file = "accelerometers/UCI HAR Dataset/test/subject_test.txt", header = TRUE, sep = ".")
        x_test <- read.table(file = "accelerometers/UCI HAR Dataset/test/X_test.txt", header = TRUE, sep = ".")
        y_test <- read.table(file = "accelerometers/UCI HAR Dataset/test/y_test.txt", header = TRUE, sep = ".")
        features <- as.matrix(read.table('accelerometers/UCI HAR Dataset/features.txt',sep = "."))[, 1]
        activity_labels <- as.matrix(read.table('accelerometers/UCI HAR Dataset/activity_labels.txt', sep = " "))
        
        ##tidy variable column names in preparation for merge
        
                ## use feature data set to establish variable column names in x_train and x_test sets
                ## did this step here to make it easier to choose the measurement fields later
                
                features_fix <- make.names(features)			##removes "-" and spaces and replaces with .'s
                feature_labels <- c("activity_number",features_fix)	##vector for column lables
                colnames(x_train) <- feature_labels			##assign column labels to x_train
                colnames(x_test) <- feature_labels			##assign column labels to x_test
                
                ## subject labels - change to descriptive labels because the x_ sets have the X2 column name in common
                snames <- c("subject_number")			##vector for column lables
                colnames(subject_train) <- snames		##assign column labels to subject_train
                colnames(subject_test) <- snames		##assign column labels to subject_test
                
        ##bring all the data together to create one data set called all_data
        
        train_data <- cbind(subject_train,y_train,x_train)	## Bring all the training data together (columns)
        test_data <- cbind(subject_test,y_test,x_test)		## Bring all the test data together (columns)
        all_data <- rbind(train_data,test_data)			## Bring the test and train data together (concatenate rows)

##STEP 2:

        ## Extract only the measurements on the mean and standard deviation for each measurement
        
        all_data_table <- data.table(all_data)		## change type to a data table to perform the select function
        all_data_measurements <- select(all_data_table,subject_number,X5,contains("mean"),contains("std"),-contains("Freq"))	## remove "Freq" because this is the average of the counts and I translated the question to mean means and stds of measurements (not counts)...I guess count could be a measurement, but I did not interpret this way


##STEP 3:

        ## Uses descriptive activity names to name the activities in the data set
        
        cnames <- c("activity_number","activity_description")		## create vector with new column names
        colnames(activity_labels) <- cnames				## assign vector to activity file
        activity_dt <- data.table(activity_labels)			## change activity_lables to a data table format so I can apply mutate to it
        activity_num <- mutate(activity_dt,X5=as.numeric(activity_number))		## add a new variable that stores activity_number as a numeric var, for merging purposes
        all_data_activity <- merge(all_data_measurements,activity_num,by.x="X5",by.y="X5",all=TRUE)	## merge activity names in with the all_data_table file
        all_data_activity2 <- select(all_data_activity,-X5,-activity_number)	## remove fields used to merge so that activity_description is remaining


STEP 4:
        
        ## Appropriately label the data set with descriptive variable names
        
                ## I have already labeled activity and subject fields in previous steps because it helped me work through the merge more clearly (see "cnames" and "snames" above)
                
                ## Label column names for features more descriptively
                new_names <- sub("\\.t",".time",names(all_data_activity2))		## change t=time_ and f=freqency_ whenever the t or f is found after . (.t, .f) (indicates domain)
                new_names <- sub("\\.f",".frequency",new_names)
                new_names <- sub("[Bb]ody[Bb]ody","body",new_names)			## remove duplicate "body" 
                new_names <- sub("[Gg]ravity","_gravity_",new_names)			## add a "_" (_Body_) to seperate motion signals = Gravity (Gravity), Body (Body)
                new_names <- sub("[Bb]ody","_body_",new_names)
                new_names <- sub("[Aa]cc","acceleration_",new_names)			## add a "_" after to seperate axial motion = Acc (Acceleration, 2-axis), Gyro (gyroscope, 3-axis)
                new_names <- sub("[Gg]yro","gyroscope_",new_names)
                new_names <- sub("[Jj]erk","jerk_",new_names)				## add a "_" after "Jerk" and "Mag" to seperate from measurement
                new_names <- sub("[Mm]ag","magnitude_",new_names)
                new_names <- sub("[Mm]ean","mean_",new_names)				## add a "_" after "mean" and "std" to seperate from axis
                new_names <- sub("[Ss]td","stddev_",new_names)
                new_names <- sub("\\.[Xx]","Xaxis",new_names)				## rename X = xaxis
                new_names <- sub("\\.[Yy]","Yaxis",new_names)				## rename Y = yaxis
                new_names <- sub("\\.[Zz]","Zaxis",new_names)				## rename Z = zaxis
                new_names <- sub("\\._[Gg]ravity","",new_names)			        ## remove "gravity" from "angle" variables...since "gravity" is in every angle names it is redundant
                new_names <- sub("[Mm]ean\\.","",new_names)				## if "angle" is in the name, remove redundant "mean"
                new_names <- sub("[Xx][0-9]+\\.","",new_names)	 		        ## remove all instances of X###. as this just indicates column sequence and is no longer needed since columns have been ordered
                new_names <- sub("\\.","",new_names)					## remove . (\\.)
                new_names <- sub("\\..","",new_names)					## remove .. (\\..)
                new_names <- sub("_$","",new_names)					## remove any ending _
                new_names <- sub("angle","angle_",new_names)				## add _ after "angle"
                new_names <- sub("_\\.|__\\.|_$","",new_names)				## remove _. or __. or _ at end

                colnames(all_data_activity2) <- new_names				## bring new columns back to original data

##STEP 5:		

        ## create a second, independent tidy data set with the average of each variable for each activity and each subject
        
                ## prepare data for calculations
                
                all_data_activity3 <- all_data_activity2						## backing up data in case I do something wrong later on
                all_data_activity4 <- all_data_activity3[complete.cases(all_data_activity3),]		## make sure there are no rows with missing values
                all_data_activity5 <- as.data.frame(sapply(all_data_activity4, as.numeric))		## change values to numeric (by doing so, I loose activity_description)
                all_data_activity6 <- select(all_data_activity5,-activity_description)			## remove activity_description
                activity <- select(all_data_activity4,activity_description)				## Isolate the correct activity_description
                all_data_activity7 <- cbind(all_data_activity6,activity)				## bring it back together with original file
                all_data_activity8 <- select(all_data_activity7,-subject_number)			## remove subject_number for the activity aggregation
                
                ## take averages by grouping (subject_number & activity description
                
                average_subject <- aggregate(.~subject_number,data=all_data_activity6,mean)
                average_activity <- aggregate(.~activity_description,data=all_data_activity8,mean)
                
                ## bring averages together in a tidy file
                
                ## Add grouping variables that will be used in final data set
                average_subject_prep <- mutate(average_subject, group_type = "Subject Number", group_description = subject_number)
                average_subject_prep2 <- select(average_subject_prep,-subject_number)
                average_activity_prep <- mutate(average_activity, group_type = "Activity", group_description = activity_description)
                average_activity_prep2 <- select(average_activity_prep,-activity_description)
                
                tidy_temp <- rbind(average_subject_prep2,average_activity_prep2)	## merge subject and activity files together
                tidy_temp2 <- select(tidy_temp,group_type,group_description,1:73) 	## move group_type and group_description to the front of the file for easier viewing
                tidy <- arrange(tidy_temp2,group_type,group_description)		## sort data by group_type and group_description
                
                
                ## create file
                write.table(tidy,file="tidy.txt",row.name=FALSE, sep=',')