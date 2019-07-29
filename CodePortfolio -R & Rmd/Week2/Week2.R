# Print my current working directory
getwd()
# Print all the objects in my workspace
ls()
# Change my working directory to the following path
setwd(dir = "C:/Users/Nitin/OneDrive - Harrisburg University/")
setwd(dir = "C:/Users/Nitin/OneDrive - Harrisburg University/Summer2019/ANLY506/Anly506/")
getwd()
# Try to print study3.df
#  Error because study3.df is NOT in my current workspace
study3.df
# Saving data with save()
# Create some objects that we'll save later
study1.df <- data.frame(id = 1:5, 
                        sex = c("m", "m", "f", "f", "m"), 
                        score = c(51, 20, 67, 52, 42))

score.by.sex <- aggregate(score ~ sex, 
                          FUN = mean, 
                          data = study1.df)

study1.htest <- t.test(score ~ sex, 
                       data = study1.df)

# Save two objects as a new .RData file
#   in the data folder of my current working directory
save(study1.df, score.by.sex, study1.htest,
     file = "C:/Users/Nitin/OneDrive - Harrisburg University/Summer2019/ANLY506/Anly506/WeeklyCode/Week2/data/study1.RData")
#Save images with save.image()

# Save my workspace to complete_image.RData in th,e
#  data folder of my working directory
save.image(file = "C:/Users/Nitin/OneDrive - Harrisburg University/Summer2019/ANLY506/Anly506/WeeklyCode/Week2/data/projectimage.RData")
# Load an .RData file, that is, to import all of the objects contained in the .RData file into your current workspace with load()
# Load objects in study1.RData into my workspace
load(file = "C:/Users/Nitin/OneDrive - Harrisburg University/Summer2019/ANLY506/Anly506/WeeklyCode/Week2/data/study1.RData")

# Load objects in projectimage.RData into my workspace
load(file = "C:/Users/Nitin/OneDrive - Harrisburg University/Summer2019/ANLY506/Anly506/WeeklyCode/Week2/data/projectimage.RData")
#To remove objects from your workspace, use the rm() function
# Remove huge.df from workspace
rm(study1.df)
# Remove ALL objects from workspace
rm(list = ls())
# Add back study1.df
study1.df <- data.frame(id = 1:5, 
                        sex = c("m", "m", "f", "f", "m"), 
                        score = c(51, 20, 67, 52, 42))
#.txt files
# Write the pirates dataframe object to a tab-delimited
#  text file called pirates.txt in my working directory

write.table(x = study1.df,
            file = "C:/Users/Nitin/OneDrive - Harrisburg University/Summer2019/ANLY506/Anly506/WeeklyCode/Week2/pirates.txt", sep = "\t")            # Make the columns tab-delimited
# Write the pirates dataframe object to a tab-delimited
#  text file called pirates.txt to my desktop

write.table(x = study1.df,
            file = "C:/Users/Nitin/OneDrive - Harrisburg University/Summer2019/ANLY506/Anly506/WeeklyCode/Week2/study1.txt",  # Save the file as pirates.txt to my desktop
            sep = "\t")                                   # Make the columns tab-delimited
#read.table()
# Read a tab-delimited text file called mydata.txt 
#  from the data folder in my working directory into
#  R and store as a new object called mydata

mydata <- read.table(file = 'C:/Users/Nitin/OneDrive - Harrisburg University/Summer2019/ANLY506/Anly506/WeeklyCode/Week2/mydata.txt',    # file is in a data folder in my working directory
                     sep = '\t',                  # file is tab--delimited
                     header = TRUE,               # the first row of the data is a header row
                     stringsAsFactors = FALSE)    # do NOT convert strings to factors!!
#Reading files directly from a web URL
# Read a text file from the web
fromweb <- read.table(file = 'http://goo.gl/jTNf6P',
                      sep = '\t',
                      header = TRUE)

# Print the result
fromweb
#Debugging
read.table()
