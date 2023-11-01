
flights <- readRDS("data/flights.rds")

data1 <- flights$data[[1]]
data1$file
data1$meta$name
data1$meta$source_link

saveRDS(flights, file = "data/flights.rds")
