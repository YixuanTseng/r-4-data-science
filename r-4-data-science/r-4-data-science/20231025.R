
flights = readRDS("data/flights.rds")
str(flights)

flightsData <- flights$data[[1]]$data_frame
# Or
flightsData <- flights[["data"]][[1]][["data_frame"]]

# look at your data
install.packages("dplyr")
dplyr::glimpse(flightsData)

# ERROR package dplyr not found

head(flightsData)

class(flightsData$AirlineID)

"1" +3
"2023-01-14" + 1

householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)

class(householdIncomes)

householdIncomes[[1]] < "high income"

flightsData$AirlineID <- factor(
  flightsData$AirlineID
)

class(flightsData$AirlineID)
head(flightsData$AirlineID)

