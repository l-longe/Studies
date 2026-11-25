-- G6031 Databases coursework 2026-27: Downland Allotments Association
-- cwk_setup.sql: creates and fills the supplied tables (MySQL 8.0.46).
-- Run this whole script in your own database. You can rerun it at any time
-- to get back to the original data. It also removes your WaitingList table.
-- The data was written for autumn 2026.

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS WaitingList;
DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS WorkParty;
DROP TABLE IF EXISTS Inspection;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Tenancy;
DROP TABLE IF EXISTS Plot;
DROP TABLE IF EXISTS Gardener;
DROP TABLE IF EXISTS Site;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Site (
    siteId    TINYINT UNSIGNED NOT NULL,
    siteName  VARCHAR(40) NOT NULL,
    hasWater  BOOLEAN NOT NULL,
    PRIMARY KEY (siteId),
    UNIQUE (siteName)
);

CREATE TABLE Plot (
    plotId           SMALLINT UNSIGNED NOT NULL,
    siteId           TINYINT UNSIGNED NOT NULL,
    plotCode         VARCHAR(6) NOT NULL,
    sizeSqm          DECIMAL(5,1) NOT NULL,
    annualRentPence  INT NOT NULL,
    status           ENUM('available','let','withdrawn') NOT NULL,
    PRIMARY KEY (plotId),
    UNIQUE (siteId, plotCode),
    CONSTRAINT fk_plot_site FOREIGN KEY (siteId) REFERENCES Site (siteId)
);

CREATE TABLE Gardener (
    gardenerId  SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    firstName   VARCHAR(30) NOT NULL,
    lastName    VARCHAR(30) NOT NULL,
    email       VARCHAR(60) NOT NULL,
    phone       VARCHAR(20),
    joinedOn    DATE NOT NULL,
    mentorId    SMALLINT UNSIGNED,
    PRIMARY KEY (gardenerId),
    UNIQUE (email),
    CONSTRAINT fk_gardener_mentor FOREIGN KEY (mentorId) REFERENCES Gardener (gardenerId)
        ON DELETE SET NULL
);

CREATE TABLE Tenancy (
    tenancyId   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    plotId      SMALLINT UNSIGNED NOT NULL,
    gardenerId  SMALLINT UNSIGNED NOT NULL,
    startDate   DATE NOT NULL,
    endDate     DATE,
    PRIMARY KEY (tenancyId),
    CONSTRAINT fk_tenancy_plot FOREIGN KEY (plotId) REFERENCES Plot (plotId),
    CONSTRAINT fk_tenancy_gardener FOREIGN KEY (gardenerId) REFERENCES Gardener (gardenerId)
);

CREATE TABLE Payment (
    paymentId    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    tenancyId    INT UNSIGNED NOT NULL,
    paidOn       DATE NOT NULL,
    amountPence  INT NOT NULL,
    PRIMARY KEY (paymentId),
    CONSTRAINT fk_payment_tenancy FOREIGN KEY (tenancyId) REFERENCES Tenancy (tenancyId)
        ON DELETE CASCADE
);

CREATE TABLE Inspection (
    plotId       SMALLINT UNSIGNED NOT NULL,
    inspectedOn  DATE NOT NULL,
    grade        ENUM('good','fair','poor') NOT NULL,
    PRIMARY KEY (plotId, inspectedOn),
    CONSTRAINT fk_inspection_plot FOREIGN KEY (plotId) REFERENCES Plot (plotId)
        ON DELETE CASCADE
);

CREATE TABLE WorkParty (
    eventId    SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    siteId     TINYINT UNSIGNED NOT NULL,
    eventDate  DATE NOT NULL,
    hours      DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (eventId),
    CONSTRAINT fk_workparty_site FOREIGN KEY (siteId) REFERENCES Site (siteId)
);

CREATE TABLE Attendance (
    eventId     SMALLINT UNSIGNED NOT NULL,
    gardenerId  SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (eventId, gardenerId),
    CONSTRAINT fk_attendance_event FOREIGN KEY (eventId) REFERENCES WorkParty (eventId)
        ON DELETE CASCADE,
    CONSTRAINT fk_attendance_gardener FOREIGN KEY (gardenerId) REFERENCES Gardener (gardenerId)
        ON DELETE CASCADE
);

INSERT INTO Site (siteId, siteName, hasWater) VALUES
  (1, 'Chalkpit Lane', TRUE),
  (2, 'Windmill Field', TRUE),
  (3, 'Saltdean Rise', FALSE),
  (4, 'Coldean Bottom', FALSE),
  (5, 'Mile Oak Edge', TRUE);

INSERT INTO Plot (plotId, siteId, plotCode, sizeSqm, annualRentPence, status) VALUES
  (1, 1, 'A1', 125.0, 9855, 'let'),
  (2, 1, 'A2', 125.0, 9855, 'let'),
  (3, 1, 'A3', 62.5, 5215, 'available'),
  (4, 1, 'B1', 62.5, 5215, 'let'),
  (5, 1, 'B2', 125.0, 9855, 'withdrawn'),
  (6, 2, 'A1', 125.0, 10415, 'let'),
  (7, 2, 'A2', 62.5, 5615, 'available'),
  (8, 2, 'A3', 62.5, 5615, 'available'),
  (9, 2, 'B1', 62.5, 5615, 'let'),
  (10, 3, '1', 250.0, 12050, 'let'),
  (11, 3, '2', 125.0, 7850, 'let'),
  (12, 3, '3', 125.0, 7850, 'let'),
  (13, 3, '4', 62.5, 4230, 'available'),
  (14, 4, 'C1', 125.0, 7615, 'let'),
  (15, 4, 'C2', 125.0, 7615, 'withdrawn'),
  (16, 4, 'C3', 62.5, 4115, 'let'),
  (17, 5, 'M1', 125.0, 9905, 'let'),
  (18, 5, 'M2', 62.5, 5410, 'available'),
  (19, 5, 'M3', 62.5, 5410, 'let'),
  (20, 2, 'B2', 125.0, 10415, 'let');

INSERT INTO Gardener (gardenerId, firstName, lastName, email, phone, joinedOn, mentorId) VALUES
  (1, 'Priya', 'Shah', 'priya.shah@example.com', '07700 900101', '2014-03-02', NULL),
  (2, 'Tom', 'Hughes', 'tom.hughes@example.org', NULL, '2019-06-15', 1),
  (3, 'Aisha', 'Bello', 'a.bello@example.net', '07700 900103', '2021-04-20', 1),
  (4, 'Gareth', 'Price', 'gareth.price@example.com', NULL, '2016-09-10', NULL),
  (5, 'Mei', 'Chen', 'mei.chen@example.org', '07700 900105', '2023-02-11', 3),
  (6, 'Joe', 'Turner', 'joe.turner@example.com', NULL, '2024-05-03', 3),
  (7, 'Sofia', 'Rossi', 'sofia.rossi@example.net', '07700 900107', '2018-01-22', 4),
  (8, 'Dan', 'O''Brien', 'dan.obrien@example.com', '07700 900108', '2022-07-30', 2),
  (9, 'Hannah', 'Clarke', 'hannah.clarke@example.org', '07700 900109', '2025-03-14', NULL),
  (10, 'Kwame', 'Mensah', 'kwame.mensah@example.com', NULL, '2023-08-01', 7),
  (11, 'Ruth', 'Evans', 'ruth.evans@example.net', '07700 900111', '2010-11-05', NULL),
  (12, 'Leo', 'Martin', 'leo.martin@example.com', '07700 900112', '2026-02-18', 9),
  (13, 'Zara', 'Ahmed', 'zara.ahmed@example.org', '07700 900113', '2026-06-09', NULL),
  (14, 'Olu', 'Adeyemi', 'olu.adeyemi@example.com', NULL, '2026-09-02', 11);

INSERT INTO Tenancy (tenancyId, plotId, gardenerId, startDate, endDate) VALUES
  (1, 1, 1, '2015-04-01', NULL),
  (2, 2, 4, '2017-04-01', NULL),
  (3, 4, 3, '2022-04-01', NULL),
  (4, 6, 7, '2018-04-01', '2026-12-31'),
  (5, 9, 8, '2023-04-01', NULL),
  (6, 10, 11, '2011-04-01', NULL),
  (7, 11, 2, '2020-04-01', NULL),
  (8, 12, 5, '2024-04-01', NULL),
  (9, 14, 1, '2021-04-01', NULL),
  (10, 16, 6, '2025-04-01', NULL),
  (11, 17, 11, '2025-10-01', NULL),
  (12, 19, 12, '2026-04-01', NULL),
  (13, 3, 2, '2019-07-01', '2020-03-31'),
  (14, 7, 10, '2025-09-01', '2026-09-30'),
  (15, 13, 4, '2016-10-01', '2017-03-31'),
  (16, 20, 13, '2026-07-01', NULL),
  (17, 18, 10, '2024-04-01', '2025-08-31');

INSERT INTO Payment (paymentId, tenancyId, paidOn, amountPence) VALUES
  (1, 1, '2025-03-12', 9500),
  (2, 1, '2026-03-15', 10249),
  (3, 2, '2026-03-20', 5000),
  (4, 2, '2026-09-20', 5249),
  (5, 3, '2026-04-02', 2724),
  (6, 4, '2026-03-01', 10832),
  (7, 5, '2025-03-10', 5600),
  (8, 6, '2026-04-10', 6000),
  (9, 6, '2026-10-10', 6000),
  (10, 7, '2026-04-01', 8164),
  (11, 8, '2026-05-05', 3000),
  (12, 9, '2026-04-01', 7920),
  (13, 11, '2026-02-01', 10301),
  (14, 12, '2026-04-15', 2926),
  (15, 16, '2026-07-01', 5200),
  (16, 14, '2026-02-01', 5600),
  (17, 13, '2019-07-01', 4800);

INSERT INTO Inspection (plotId, inspectedOn, grade) VALUES
  (1, '2025-06-10', 'good'),
  (1, '2026-06-12', 'good'),
  (2, '2025-06-10', 'poor'),
  (2, '2026-06-12', 'fair'),
  (4, '2026-06-12', 'poor'),
  (6, '2025-07-01', 'fair'),
  (6, '2026-07-03', 'poor'),
  (9, '2026-07-03', 'good'),
  (10, '2025-08-05', 'poor'),
  (10, '2026-03-01', 'poor'),
  (10, '2026-08-04', 'good'),
  (11, '2026-08-04', 'poor'),
  (14, '2026-05-20', 'fair'),
  (16, '2025-05-21', 'poor'),
  (19, '2026-09-15', 'fair');

INSERT INTO WorkParty (eventId, siteId, eventDate, hours) VALUES
  (1, 1, '2026-03-14', 4.0),
  (2, 1, '2026-09-12', 2.0),
  (3, 2, '2026-04-18', 4.0),
  (4, 2, '2025-06-21', 5.0),
  (5, 3, '2026-05-16', 3.5),
  (6, 4, '2026-07-11', 2.0);

INSERT INTO Attendance (eventId, gardenerId) VALUES
  (1, 1),
  (1, 9),
  (2, 1),
  (2, 12),
  (2, 14),
  (3, 7),
  (3, 3),
  (3, 13),
  (4, 7),
  (4, 8),
  (4, 10),
  (4, 3),
  (5, 11),
  (5, 2),
  (5, 5),
  (5, 9),
  (6, 1),
  (6, 6);
