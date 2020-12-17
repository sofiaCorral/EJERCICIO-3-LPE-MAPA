variableX <- 40.759235
variableY <- -2.870533

variables <- c(40.759235, -2.870533)
pacman::p_load(leaflet)#cargame api de google barata
leaflet() %>% #llama
  addTiles() #pinta el mapa

names(providers) #mapas que podemos usar

leaflet() %>%
  addProviderTiles("OpenStreetMap") %>%
  setView(lat = variableX, lng = variableY, zoom = 20)



# load pack ---------------------------------------------------------------

pacman::p_load(tidyverse, leaflet, leaflet.extras)



# load data ---------------------------------------------------------------

#ds <- read_csv(file.choose())
ds <- read_csv("chipotle.csv")

lock <- ds %>% 
  
  filter(closed==T) %>%
  
  leaflet()%>% 
  
  addTiles() %>% 
  
  addCircles() 

lock
