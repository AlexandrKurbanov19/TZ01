-- ### Создание Веб-Приложения с Использованием Delphi 10.2, IIS и MS SQL Server

-- #### Шаги по Созданию Веб-Приложения

-- 1. **Настройка Среды Разработки**
--     - Установите Delphi 10.2.
--     - Настройте MS SQL Server для хранения данных.
--     - Настройте MS Internet Information Server (IIS) для хостинга веб-приложения.
-- 2. **Создание Базы Данных в MS SQL Server**
--     - Создайте базу данных с нужными таблицами и связями.

    CREATE DATABASE TourismDB;
    USE TourismDB;

    CREATE TABLE Countries (
        CountryID INT IDENTITY PRIMARY KEY,
        CountryName NVARCHAR(100) NOT NULL
    );

    CREATE TABLE Cities (
        CityID INT IDENTITY PRIMARY KEY,
        CityName NVARCHAR(100) NOT NULL,
        CountryID INT,
        FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
    );

    CREATE TABLE Services (
        ServiceID INT IDENTITY PRIMARY KEY,
        ServiceName NVARCHAR(100) NOT NULL,
        Description NVARCHAR(MAX)
    );

    CREATE TABLE Tours (
        TourID INT IDENTITY PRIMARY KEY,
        TourName NVARCHAR(100) NOT NULL,
        CityID INT,
        ServiceID INT,
        Price DECIMAL(10, 2) NOT NULL,
        FOREIGN KEY (CityID) REFERENCES Cities(CityID),
        FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
    );

    CREATE TABLE Bookings (
        BookingID INT IDENTITY PRIMARY KEY,
        CustomerName NVARCHAR(100) NOT NULL,
        TourID INT,
        BookingDate DATE NOT NULL,
        Status NVARCHAR(50),
        FOREIGN KEY (TourID) REFERENCES Tours(TourID)
    );
    
