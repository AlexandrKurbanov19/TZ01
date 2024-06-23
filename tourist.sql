Для проектирования базы данных «Туризм» мы создадим следующие таблицы:

1. **Таблицы-справочники**:
    - Countries (страны)
    - Cities (города)
    - Services (услуги)
    - Tours (туры)

2. **Таблица переменной информации**:
    - Bookings (заказы туров)

### Схема базы данных

#### Таблица Countries
CREATE TABLE Countries (
    CountryID INT AUTO_INCREMENT PRIMARY KEY,
    CountryName VARCHAR(100) NOT NULL
);
#### Таблица Cities

CREATE TABLE Cities (
    CityID INT AUTO_INCREMENT PRIMARY KEY,
    CityName VARCHAR(100) NOT NULL,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);
#### Таблица Services

CREATE TABLE Services (
    ServiceID INT AUTO_INCREMENT PRIMARY KEY,
    ServiceName VARCHAR(100) NOT NULL,
    Description TEXT
);
#### Таблица Tours

CREATE TABLE Tours (
    TourID INT AUTO_INCREMENT PRIMARY KEY,
    TourName VARCHAR(100) NOT NULL,
    CityID INT,
    ServiceID INT,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CityID) REFERENCES Cities(CityID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

#### Таблица Bookings

CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    TourID INT,
    BookingDate DATE NOT NULL,
    Status VARCHAR(50),
    FOREIGN KEY (TourID) REFERENCES Tours(TourID)
);


### SQL скрипт для создания базы данных

Ниже приведен полный скрипт SQL для создания всех таблиц и их связей:

-- Создание базы данных
CREATE DATABASE Tourism;
USE Tourism;

-- Таблица стран
CREATE TABLE Countries (
    CountryID INT AUTO_INCREMENT PRIMARY KEY,
    CountryName VARCHAR(100) NOT NULL
);

-- Таблица городов
CREATE TABLE Cities (
    CityID INT AUTO_INCREMENT PRIMARY KEY,
    CityName VARCHAR(100) NOT NULL,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

-- Таблица услуг
CREATE TABLE Services (
    ServiceID INT AUTO_INCREMENT PRIMARY KEY,
    ServiceName VARCHAR(100) NOT NULL,
    Description TEXT
);

-- Таблица туров
CREATE TABLE Tours (
    TourID INT AUTO_INCREMENT PRIMARY KEY,
    TourName VARCHAR(100) NOT NULL,
    CityID INT,
    ServiceID INT,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CityID) REFERENCES Cities(CityID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

-- Таблица заказов туров
CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    TourID INT,
    BookingDate DATE NOT NULL,
    Status VARCHAR(50),
    FOREIGN KEY (TourID) REFERENCES Tours(TourID)
);


-- ### Описание таблиц и связей:

-- 1. **Countries**: Содержит информацию о странах.
-- 2. **Cities**: Содержит информацию о городах и ссылается на таблицу Countries через внешний ключ CountryID.
-- 3. **Services**: Содержит информацию об услугах, предоставляемых в турах.
-- 4. **Tours**: Содержит информацию о турах, включая ссылки на таблицы Cities и Services через внешние ключи CityID и ServiceID.
-- 5. **Bookings**: Содержит информацию о заказах туров и ссылается на таблицу Tours через внешний ключ TourID.

-- Этот SQL скрипт можно выполнить в MySQL Workbench или любом другом инструменте для работы с базами данных MySQL для создания схемы базы данных «Туризм».
