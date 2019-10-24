library(tidyverse)
library(plyr)
> pollutants <- list.files("~/Downloads", full = TRUE, pattern = "annual_conc_by_monitor_")

pollution <- adply(.data = pollutants, .margins = 1, function(file){
  
  #read the data
  
  d <- read.table(file, sep = ",", header = TRUE, stringsAsFactors = FALSE, check.names = FALSE)
  
  #clean names
  head <- names(d)
  head <- str_replace(head, "\\(.*\\)", "")
  head <- str_trim(head)
  head <- make.names(head)
  head <- tolower(head)
  head <- str_replace(head, fixed(".."), ".")
  
  #assign names
  names(d) <- head
  
  return(d)
}, .inform = T, .progress = "text")
