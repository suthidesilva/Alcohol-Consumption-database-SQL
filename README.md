# Alcohol Consumption Database Setup

This repository contains SQL scripts for setting up a database schema and populating it with data related to alcohol consumption. The database schema includes tables for regions, countries, sexes, and alcohol consumption statistics.

## Table of Contents

- [Overview](#overview)
- [Database Schema](#database-schema)
- [Data Population](#data-population)
- [Usage](#usage)
- [License](#license)

## Overview

The SQL scripts provided in this repository are designed to create a database schema and populate it with data related to alcohol consumption. The data includes information about regions, countries, sexes, and consumption statistics.

## Database Schema

The database schema consists of the following tables:

- **Region**: Defines regions with columns for RegionID and RegionName.
- **Country**: Defines countries with columns for CountryCode, CountryName, and RegionID (foreign key referencing the Region table).
- **Sex**: Defines sexes with columns for SexID and SexName.
- **Consumption**: Stores alcohol consumption data with columns for Years, CountryCode, SexID (foreign key referencing the Sex table), Num, Low, and High.

## Data Population

The data population process involves inserting data into the tables based on external sources such as the `AlcoholConsumption` table. The script includes commands to insert data into the Consumption and Country tables by joining with the Sex and Region tables, respectively.

## Usage

To use these scripts, follow these steps:

1. Set up a database environment (e.g., SQLite, MySQL, PostgreSQL).
2. Run the provided SQL scripts in the database environment to create the necessary tables.
3. Execute the data population commands to insert data into the tables.

Ensure that you have the necessary permissions and privileges to create tables and insert data into the database.

## License

This project is licensed under the [MIT License](LICENSE).
