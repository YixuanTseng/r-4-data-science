
flights = readRDS("data/flights.rds")
str(flights)

flightsData <- flights$data[[1]]$data_frame
# Or
flightsData <- flights[["data"]][[1]][["data_frame"]]

# look at your data
install.packages("dplyr")
dplyr::glimpse(flightsData)

head(flightsData)

class(flightsData$AirlineID)
