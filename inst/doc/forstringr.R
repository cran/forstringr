## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----example1-----------------------------------------------------------------
library(forstringr)

ethnicity <- c("Hausa", NA, "Yoruba", "Ijaw", "Igbo", NA, "Ibibio", "Tiv", "Fulani", "Kanuri", "Others")

length(ethnicity) # Count all the observations, including the NAs.

length_omit_na(ethnicity)

## ----example2-----------------------------------------------------------------

str_left("Nigeria")

str_left("Nigeria", n = 3)

str_left(c("Female", "Male", "Male", "Female"))

## ----example3-----------------------------------------------------------------

str_right("July 20, 2022", 4)

str_right("Sale Price", n = 5)

## ----example4-----------------------------------------------------------------
str_mid("Super Eagle", 7, 5)

str_mid("Oyo Ibadan", 5, 6)

## ----example5a----------------------------------------------------------------
top_10_richest_nig <- c("Aliko Dangote", "Mike Adenuga", "Femi Otedola", "Arthur Eze", "Abdulsamad Rabiu", "Cletus Ibeto", "Orji Uzor Kalu", "ABC Orjiakor", "Jimoh Ibrahim", "Tony Elumelu")

first_name <- str_split_extract(top_10_richest_nig, " ", 1)

first_name

## ----example5b----------------------------------------------------------------
first_name <- str_extract_part(top_10_richest_nig, before = TRUE, pattern = " ")

first_name

revenue <- c("$159", "$587", "$891", "$207", "$793")

str_extract_part(revenue, before = FALSE, pattern = "$")

## ----example 6a---------------------------------------------------------------
# A dataframe with whitespaces

richest_in_nigeria

## ----example6b----------------------------------------------------------------
# A dataframe with no whitespaces

str_rm_whitespace_df(richest_in_nigeria)

