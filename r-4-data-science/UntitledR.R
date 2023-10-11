# Basic Data Type -----
c("John", "Mary")
c(2, 3.1412)
c(TRUE, TRUE, F)
typeof(c("John", "Mary"))
personName <- c("John", "Mary")
interestingNumber <- c(2, 3.1412)
covidPositive <- c(TRUE, TRUE, F)
personName[[1]]
personName[[2]]

list("John", 178, TRUE)
listExample = list("John", 178, TRUE)

# Name your elements values -----
## name: John,age: 38, height: 178, isMarried: False
recordExample1 = list("John", 38, 178, FALSE)
recordExample2 = list(
  "name"="John",
  "age"=38,
  "height"=178,
  "is married"= FALSE
)
recordExample1[[1]]
recordExample2[[1]]
recordExample2$name
recordExample2[["name"]]
recordExample2$`is married`

# Retrieve multiple element values -----
listExample
listExample[c(1,3)]

atomicExample <- c(1, 4, 78, 455, -23)
atomicExample
atomicExample[c(1,3,4)]
atomicExample[c(1,2,3,4)]


## by element names -----
recordExample2
recordExample2[c("name","height","is married")]

#-my-economic-grades-

myEconomicGrades <- c(100,99)

my_economic_grades <- c(100,99)

# import json file ----

flights <- jsonlite::fromJSON("data/international_flights.json")

## data information ----
data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)

data1$file
data1$meta$name
data1$meta$source_link


