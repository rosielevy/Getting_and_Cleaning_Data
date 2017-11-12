# Getting and Cleaning Data - Week 4 Assignment

This repository contains the final assignment for the JHU Getting and Cleaning Data course. `run_analysis.R` is an R script that does the following:

1. Checks for Samsung data set in the working directory and downloads it if it does not exist
2. Loads activity labels and features (column names)
3. Loads test and training data sets - `run.analysis.R` applies activity labels and column names to each data set and subsets to keep only those columns containing a mean or standard deviation measurement, before merging X and Y versions of test and training data sets to form two sets
5. Merges the test and training datasets to form one data set
6. Renames variables with more descriptive (less abbreviated) names
7. Creates a tidy dataset of the (mean) value of each
   variable.
