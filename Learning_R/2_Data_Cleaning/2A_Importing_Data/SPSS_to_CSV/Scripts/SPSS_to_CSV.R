### Convert SPSS File to CSV ################################################

### Conditional install packages #####################################
requiredPackages = c('tidyverse', 'here', 'foreign')
for(p in requiredPackages){
  if(!require(p,character.only = TRUE)) install.packages(p)
  library(p,character.only = TRUE)
}

### Load libraries ##########################################################
library(foreign)
library(tidyverse)
library(here)

### Load SPSS file ##########################################################
df <- data.frame(read.spss(here("Learning_R",
                                "2_Data_Cleaning",
                                "2A_Importing_Data",
                                "SAV_to_R",
                                "Data",
                                "Breast cancer survival.sav")))

### Convert to CSV file #####################################################
df %>%
  write_csv(here("Learning_R",
          "2_Data_Cleaning",
          "2A_Importing_Data",
          "SAV_to_R",
          "Data",
          "Breast cancer survival.csv"))
