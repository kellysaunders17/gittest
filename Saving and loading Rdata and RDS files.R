#Demoing the save, save.image, and saveRDS functions
#Kelly Saunders
#August 3, 2020
#Note: If user wants to run this script, change file path to user's practice folder

#Save mtcars as df
mtcars_df <- mtcars

#Create other object
x <- 10

#Save workspace as .Rdata file using save function
#Save only mtcars_df
save(mtcars_df,file="/data/share/xproject/training/practice/saunders/mtcars_data_frame_save_function.rdata")
#Save whole workspace
save.image(file="/data/share/xproject/training/practice/saunders/whole_workspace_save_function.rdata")

#Remove objects
rm(mtcars_df)
rm(x)

#Load workspaces .Rdata file using load function
load("/data/share/xproject/training/practice/saunders/mtcars_data_frame_save_function.rdata")
#Loads the mtcars_df 

#Remove objects
rm(mtcars_df)

#Load whole workspace
load("/data/share/xproject/training/practice/saunders/whole_workspace_save_function.rdata")
#Loads mtcars_df and x


#Now save data frame as .RDS file using saveRDS function
saveRDS(mtcars_df,file="/data/share/xproject/training/practice/saunders/mtcars_data_frame_saveRDS_function.rds")

#Remove objects
rm(mtcars_df)

#Read .Rds file using readRDS function
readRDS("/data/share/xproject/training/practice/saunders/mtcars_data_frame_saveRDS_function.rds")
#Prints out the data frame to the console

#Read .RDS file and save to object
import_df <- readRDS("/data/share/xproject/training/practice/saunders/mtcars_data_frame_saveRDS_function.rds")
#Now a data frame named import_df