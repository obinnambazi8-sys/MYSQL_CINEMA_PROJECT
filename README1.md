Cinema Booking System – MySQL Database Project

Project Overview

The Cinema Booking System is a relational database project developed using MySQL to manage the main operations of a cinema. It stores information about films, customers, cinema rooms, screenings, bookings, and reserved seats.

The purpose of this project is to demonstrate how a relational database can organise cinema information, connect related tables using primary and foreign keys, and manage customer bookings efficiently.

Database Tables

The project consists of six main tables:

films: Stores film details, including the film ID, title, and running time in minutes.

customers: Stores customer information, including first name, last name, and email address.

rooms: Stores cinema room names and their seating capacities.

screenings: Records scheduled film screenings, including the film being shown, the room used, and the start date and time.

bookings: Connects customers to specific screenings, recording who has booked a ticket for each screening.

reserved_seat: Records the seats associated with each booking, linking bookings to individual seats.

Explanation of the SQL Commands

SQL command

Purpose

SHOW DATABASES;

Displays the databases available on the MySQL server.

CREATE DATABASE cinema_booking_system;

Creates a new database for the cinema booking project.

USE cinema_booking_system;

Selects the database in which the tables will be created and managed.

CREATE TABLE

Creates tables and defines their columns, data types, and constraints.

INSERT INTO

Adds film, customer, room, screening, booking, and seat data to the database.

SELECT * FROM table_name;

Retrieves and displays all records from a specified table.

PRIMARY KEY

Uniquely identifies each record in a table.

AUTO_INCREMENT

Automatically generates a new numeric ID for each inserted record.

FOREIGN KEY

Establishes relationships between tables and helps maintain referential integrity.

NOT NULL

Prevents a column from accepting NULL values.

UNIQUE

Prevents duplicate values in a column, such as film titles or customer email addresses.

VARCHAR, INT, CHAR, DATETIME

Define the data types used to store text, numbers, single characters, and dates with times.

SHOW TABLES;

Lists the tables in the selected database.

DESCRIBE reserved_seat;

Displays the structure of the reserved_seat table, including its columns, data types, keys, and constraints.

How the Database Works

The database uses primary and foreign keys to connect the different parts of the cinema booking process.
Films are stored in the films table.
Cinema rooms and their seating capacities are stored in the rooms table.
Each screening connects a film to a room and a scheduled start time.
Customers are registered in the customers table.
Bookings connect customers to screenings through the bookings table.
Reserved seats connect individual bookings to seats in the seats table through the reserved_seat table.

These relationships allow the database to organise booking information and retrieve related records when needed.


This project demonstrates practical MySQL skills, including:

Creating and selecting databases.

Designing relational database tables.

Inserting and retrieving records.

Using primary keys and foreign keys.

Applying constraints to maintain data integrity.
Establishing relationships between multiple tables.
Inspecting database tables and their structures.

Conclusion
The Cinema Booking System provides a foundation for managing cinema operations using a relational database. It demonstrates how MySQL can organise films, customers, screenings, rooms, bookings, and reserved seats into connected tables.

