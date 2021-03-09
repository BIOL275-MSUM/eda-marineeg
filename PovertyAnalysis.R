library(tidyverse)
library(readxl)

Population_in_poverty <- read_excel("Data/Parents without health insurance.xlsx")

Parents_without_health_insurance <- read_excel("Data/Population in poverty.xlsx") 

Teens_ages_16_to_19_not_in_school_and_not_high_school_graduates <- read_excel("Data/Teens ages 16 to 19 not in school and not high school graduates.xlsx")

# Population in Poverty

Poverty <- filter(
  Population_in_poverty,
  LocationType == "State"
)
Poverty

Poverty1 <- filter(
  Poverty,
  DataFormat == "Percent"
)
Poverty1

Poverty2 <- filter(
  Poverty1,
  TimeFrame > 2008, TimeFrame < 2019
)
Poverty2


# Teens Ages 16-19 Not in School or Graduates

School <- filter(
  Teens_ages_16_to_19_not_in_school_and_not_high_school_graduates,
  LocationType == "State"
)
School

School1 <- filter(
  School,
  DataFormat == "Percent"
)
School1

School2 <- filter(
  School1,
  TimeFrame > 2008, TimeFrame < 2019
)
School2


# Parents Without Health Insurance

Insurance <- filter(
 Parents_without_health_insurance,
  LocationType == "State"
)
Insurance

Insurance1 <- filter(
  Insurance,
  DataFormat == "Percent"
)
Insurance1

Insurance2 <- filter(
  Insurance1,
  TimeFrame > 2008, TimeFrame < 2019
)
Insurance2

