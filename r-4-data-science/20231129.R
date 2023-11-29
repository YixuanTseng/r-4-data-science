# Create a vector of numbers
numbers <- c(12,20,37,43,51)

# to print each value

print(numbers[[1]])
print(numbers[[2]])
print(numbers[[3]])
print(numbers[[4]])
print(numbers[[5]])

# pattern
# .x from 1 to 5

for (xy in c(1,2,3,4,5))
{
  print(numbers[[xy]])
}

howManyTimes = 5
for (.x in 1:howManyTimes)
{
  print(.X)
} 


dataSet <- list(
  list(
    gender="male", height=178, age=32,
    children=list(
      list(gender="male", age=5),
      list(gender="male", age=0))
  ),
  list(
    gender="female", height=166, age=30,
    children=list(
      list(gender="female", age=3))
  ),
  list(
    gender="male", height=170, age=42,
    children=list(
      list(gender="male", age=10),
      list(gender="female", age=8))
  ),
  list(
    gender="male", height=188, age=22,
    children=list()
  ),  
  list(
    gender="male", height=172, age=52,
    children=list(
      list(gender="female", age=25),
      list(gender="female", age=23))
  ),
  list(
    gender="female", height=160, age=42,
    children=list(
      list(gender="female", age=11))
  )
)

#pattern
howManyTimes = 6
for (.x in 1:howManyTimes)
  {
  print(length(dataSet[[.x]]$children))
}

# .x y are called iterate
for (y in seq_along(dataSet))
  {
  print(length(dataSet[[y]]$children))
}


#example

# flightsData
flights <- readRDS("data/flights_week11.rds")
flightsData <- flights$data[[1]]$data_frame

# split according to AirlineID
flightsData |>
  split(
    flightsData$AirlineID
  ) ->split_data
#for each split data frame, we want to know
# how many flights it contains
numberOfFLIGHTS <- vector("integer", length(split_data))

for (.x in seq_along(split_data)) {
  numberOfFLIGHTS[[.x]] <-
    nrow(split_data[[.x]])
}

names(split_data)
