# Import necessary libraries
import pandas as pd
import requests

# Define the URL for the data source
url = "https://raw.githubusercontent.com/datasets/covid-19/master/data/countries-aggregated.csv"

# Get the data from the URL and store it in a pandas DataFrame
df = pd.read_csv(url)

# Perform some data cleaning and transformation operations on the data
df = df.dropna()
df = df[df["Confirmed"] > 0]

# Store the cleaned data in a new CSV file
df.to_csv("cleaned_data.csv", index=False)