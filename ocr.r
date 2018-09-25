install.packages("tidyverse")
install.packages("devtools")
library(tidyverse)
require(devtools)
install_github("flovv/RoogleVision")
library(RoogleVision)
library(jsonlite)
library(EBImage)


install.packages("tesseract")
install.packages("magick")

library(tesseract)
library(magick)


#Enter the path of the image to be extracted in quotes below. 
text <- ocr_data(image = "C:/vedang/Rdata/ocrdataimages/3.jpg")

#this will print the text extracted from the image on console.
text

#help(image_convert)

file.create(file.path("C:/vedang/Rdata","1.txt"))

#This writes the text extracted from the image to the following file.
write.csv(text,file="sample.csv")

