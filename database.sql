CREATE DATABASE BLUESTAR COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8;
USE BLUESTAR


CREATE TABLE SANBAY (
	airportID NVARCHAR(20) primary key not null,
	airportName  NVARCHAR(255),
	place  NVARCHAR(255),

);


INSERT INTO SANBAY (airportID, airportName, place) 
VALUES 
('VVCS', 'Sân bay Côn Đảo', 'Bà Rịa - Vũng Tàu'),
('VVPC', 'Sân bay Phù Cát', 'Bình Định'),
('VVCM', 'Sân bay Cà Mau', 'Cà Mau'),
('VVCT', 'Sân bay quốc tế Cần Thơ', 'Cần Thơ'),
('VVBM', 'Sân bay Buôn Ma Thuột', 'Đắk Lắk'),
('VVDN', 'Sân bay quốc tế Đà Nẵng', 'Đà Nẵng'),
('VVDB', 'Sân bay Điện Biên Phủ', 'Điện Biên'),
('VVPK', 'Sân bay Pleiku', 'Gia Lai'),
('VVCI', 'Sân bay quốc tế Cát Bi', 'Hải Phòng'),
('VVNB', 'Sân bay quốc tế Nội Bài', 'Hà Nội'),
('VVTS', 'Sân bay quốc tế Tân Sơn Nhất', 'TPHCM'),
('VVCR', 'Sân bay quốc tế Cam Ranh', 'Khánh Hòa'),
('VVRG', 'Sân bay Rạch Giá', 'Kiên Giang'),
('VVPQ', 'Sân bay quốc tế Phú Quốc', 'Kiên Giang'),
('VVDL', 'Sân bay Liên Khương', 'Lâm Đồng'),
('VVVH', 'Sân bay quốc tế Vinh', 'Nghệ An'),
('VVTH', 'Sân bay Tuy Hòa', 'Phú Yên'),
('VVDH', 'Sân bay Đồng Hới', 'Quảng Bình'),
('VVCA', 'Sân bay Chu Lai', 'Quảng Nam'),
('VVTX', 'Sân bay Thọ Xuân', 'Thanh Hóa'),
('VVPB', 'Sân bay quốc tế Phú Bài', 'Thừa Thiên - Huế');




CREATE TABLE PLANE
(
	PL_ID VARCHAR(4) NOT NULL,
	TYPEOFPLANE VARCHAR(20),
	BUSINESS_CAPACITY INT,
	ECONOMY_CAPACITY INT
	CONSTRAINT pk_plane PRIMARY KEY (PL_ID)
)

INSERT INTO PLANE (PL_ID, TYPEOFPLANE, BUSINESS_CAPACITY, ECONOMY_CAPACITY)
VALUES
    ('PL01', 'Airbus A320', 12, 108),
    ('PL02', 'Boeing 737', 12, 108),
    ('PL03', 'Airbus A330', 12, 108),
    ('PL04', 'Boeing 787', 12, 108),
    ('PL05', 'Embraer E190', 12, 108),
    ('PL06', 'Airbus A350', 12, 108),
    ('PL07', 'Boeing 777', 12, 108),
    ('PL08', 'Airbus A321', 12, 108),
    ('PL09', 'Boeing 747', 12, 108),
    ('PL10', 'Embraer E195', 12, 108),
    ('PL11', 'Airbus A319', 12, 108),
    ('PL12', 'Boeing 767', 12, 108),
    ('PL13', 'Airbus A380', 12, 108),
    ('PL14', 'Boeing 737 MAX', 12, 108),
    ('PL15', 'Airbus A330neo', 12, 108),
    ('PL16', 'Boeing 787-10', 12, 108),
    ('PL17', 'Embraer E175', 12, 108),
    ('PL18', 'Airbus A321XLR', 12, 108),
    ('PL19', 'Boeing 777X', 12, 108),
    ('PL20', 'Embraer E175-E2', 12, 108);



CREATE TABLE CHUYENBAY(
	flyID NVARCHAR(20) primary key not null,
	Pl_ID NVARCHAR(5),
	airport_ID NVARCHAR(5),
	fromLocation NVARCHAR(255),
	toLocation NVARCHAR(255),
	departureTime DATETIME,
	arrivalTime DATETIME,
	departureDay DATE,
    originalPrice MONEY,
);



INSERT INTO CHUYENBAY (flyID, Pl_ID, fromLocation, toLocation, departureTime, arrivalTime, departureDay)
VALUES
	('F001','PL01','Hà Nội', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-01'),
	('F002','PL02','Hà Nội', 'Bình Định', '09:00', '11:00', '2023-12-02'),
	('F003','PL03', 'Hà Nội', 'Cà Mau', '10:00', '12:00', '2023-12-03'),
	('F004','PL04', 'Hà Nội', 'Cần Thơ', '11:00', '13:00', '2023-12-04'),
	('F005','PL05','Hà Nội', 'Đắk Lắk', '12:00', '14:00', '2023-12-05'),
	('F006','PL06', 'Hà Nội', 'Đà Nẵng', '13:00', '15:00', '2023-12-06'),
	('F007','PL07', 'Hà Nội', 'Điện Biên', '14:00', '16:00', '2023-12-07'),
	('F008','PL08', 'Hà Nội', 'Gia Lai', '15:00', '17:00', '2023-12-08'),	
	('F009','PL09', 'Hà Nội', 'Hải Phòng', '16:00', '18:00', '2023-12-09'),
	('F010','PL10', 'Hà Nội', 'TPHCM', '17:00', '19:00', '2023-12-10'),
	('F011','PL11', 'Hà Nội', 'Khánh Hòa', '18:00', '20:00', '2023-12-11'),
	('F012','PL12', 'Hà Nội', 'Kiên Giang', '19:00', '21:00', '2023-12-12'),
	('F014','PL14', 'Hà Nội', 'Lâm Đồng', '21:00', '23:00', '2023-12-14'),
	('F015','PL15', 'Hà Nội', 'Nghệ An', '22:00', '00:00', '2023-12-15'),
	('F016','PL16', 'Hà Nội', 'Phú Yên', '23:00', '01:00', '2023-12-16'),
	('F017','PL17', 'Hà Nội', 'Quảng Bình', '00:00', '02:00', '2023-12-17'),
	('F018','PL18', 'Hà Nội', 'Quảng Nam', '01:00', '03:00', '2023-12-18'),
	('F019','PL19', 'Hà Nội', 'Thanh Hóa', '02:00', '04:00', '2023-12-19'),
	('F020','PL20', 'Hà Nội', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-20')



INSERT INTO CHUYENBAY (flyID, fromLocation, toLocation, departureTime, arrivalTime, departureDay)
VALUES
	-----
('F021', 'TPHCM', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-01'),
('F022', 'TPHCM', 'Bình Định', '09:00', '11:00', '2023-12-02'),
('F023', 'TPHCM', 'Cà Mau', '10:00', '12:00', '2023-12-03'),
('F024', 'TPHCM', 'Cần Thơ', '11:00', '13:00', '2023-12-04'),
('F025', 'TPHCM', 'Đắk Lắk', '12:00', '14:00', '2023-12-05'),
('F026', 'TPHCM', 'Đà Nẵng', '13:00', '15:00', '2023-12-06'),
('F027', 'TPHCM', 'Điện Biên', '14:00', '16:00', '2023-12-07'),
('F028', 'TPHCM', 'Gia Lai', '15:00', '17:00', '2023-12-10'),
('F029', 'TPHCM', 'Hải Phòng', '16:00', '18:00', '2023-12-09'),
('F030', 'TPHCM', 'Hà Nội', '17:00', '19:00', '2023-12-08'),
('F031', 'TPHCM', 'Khánh Hòa', '18:00', '20:00', '2023-12-11'),
('F032', 'TPHCM', 'Kiên Giang', '19:00', '21:00', '2023-12-12'),
('F033', 'TPHCM', 'Kiên Giang', '20:00', '22:00', '2023-12-13'),
('F034', 'TPHCM', 'Lâm Đồng', '21:00', '23:00', '2023-12-16'),
('F035', 'TPHCM', 'Nghệ An', '22:00', '00:00', '2023-12-21'),
('F036', 'TPHCM', 'Phú Yên', '23:00', '01:00', '2023-12-22'),
('F037', 'TPHCM', 'Quảng Bình', '00:00', '02:00', '2023-12-24'),
('F038', 'TPHCM', 'Quảng Nam', '01:00', '03:00', '2023-12-26'),
('F039', 'TPHCM', 'Thanh Hóa', '02:00', '04:00', '2023-12-27'),
('F040', 'TPHCM', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-28'),
-----
('F041', 'Bà Rịa - Vũng Tàu', 'Bình Định', '08:00', '10:00', '2023-12-30'),
('F042', 'Bà Rịa - Vũng Tàu', 'Cà Mau', '09:00', '11:00', '2023-12-31'),
('F043', 'Bà Rịa - Vũng Tàu', 'Cần Thơ', '10:00', '12:00', '2023-12-29'),
('F044', 'Bà Rịa - Vũng Tàu', 'Đắk Lắk', '11:00', '13:00', '2023-12-28'),
('F045', 'Bà Rịa - Vũng Tàu', 'Đà Nẵng', '12:00', '14:00', '2023-12-27'),
('F046', 'Bà Rịa - Vũng Tàu', 'Điện Biên', '13:00', '15:00', '2023-12-26'),
('F047', 'Bà Rịa - Vũng Tàu', 'Gia Lai', '14:00', '16:00', '2023-12-25'),
('F048', 'Bà Rịa - Vũng Tàu', 'Hải Phòng', '15:00', '17:00', '2023-12-24'),
('F049', 'Bà Rịa - Vũng Tàu', 'Hà Nội', '16:00', '18:00', '2023-12-23'),
('F050', 'Bà Rịa - Vũng Tàu', 'TPHCM', '17:00', '19:00', '2023-12-22'),
('F051', 'Bà Rịa - Vũng Tàu', 'Khánh Hòa', '18:00', '20:00', '2023-12-21'),
('F052', 'Bà Rịa - Vũng Tàu', 'Kiên Giang', '19:00', '21:00', '2023-12-11'),
('F053', 'Bà Rịa - Vũng Tàu', 'Kiên Giang', '20:00', '22:00', '2023-12-12'),
('F054', 'Bà Rịa - Vũng Tàu', 'Lâm Đồng', '21:00', '23:00', '2023-12-13'),
('F055', 'Bà Rịa - Vũng Tàu', 'Nghệ An', '22:00', '00:00', '2023-12-22'),
('F056', 'Bà Rịa - Vũng Tàu', 'Phú Yên', '23:00', '01:00', '2023-12-22'),
('F057', 'Bà Rịa - Vũng Tàu', 'Quảng Bình', '00:00', '02:00', '2023-12-02'),
('F058', 'Bà Rịa - Vũng Tàu', 'Quảng Nam', '01:00', '03:00', '2023-12-02'),
('F059', 'Bà Rịa - Vũng Tàu', 'Thanh Hóa', '02:00', '04:00', '2023-12-03'),
('F060', 'Bà Rịa - Vũng Tàu', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-07'),
-------
('F061', 'Bình Định', 'Cà Mau', '08:00', '10:00', '2023-12-05'),
('F062', 'Bình Định', 'Cần Thơ', '09:00', '11:00', '2023-12-06'),
('F063', 'Bình Định', 'Đắk Lắk', '10:00', '12:00', '2023-12-07'),
('F064', 'Bình Định', 'Đà Nẵng', '11:00', '13:00', '2023-12-08'),
('F065', 'Bình Định', 'Điện Biên', '12:00', '14:00', '2023-12-09'),
('F066', 'Bình Định', 'Gia Lai', '13:00', '15:00', '2023-12-10'),
('F067', 'Bình Định', 'Hải Phòng', '14:00', '16:00', '2023-12-11'),
('F068', 'Bình Định', 'Hà Nội', '15:00', '17:00', '2023-12-12'),
('F069', 'Bình Định', 'TPHCM', '16:00', '18:00', '2023-12-13'),
('F070', 'Bình Định', 'Khánh Hòa', '17:00', '19:00', '2023-12-14'),
('F071', 'Bình Định', 'Kiên Giang', '18:00', '20:00', '2023-12-15'),
('F072', 'Bình Định', 'Kiên Giang', '19:00', '21:00', '2023-12-16'),
('F073', 'Bình Định', 'Lâm Đồng', '20:00', '22:00', '2023-12-17'),
('F074', 'Bình Định', 'Nghệ An', '21:00', '23:00', '2023-12-18'),
('F075', 'Bình Định', 'Phú Yên', '22:00', '00:00', '2023-12-19'),
('F076', 'Bình Định', 'Quảng Bình', '23:00', '01:00', '2023-12-20'),
('F077', 'Bình Định', 'Quảng Nam', '00:00', '02:00', '2023-12-21'),
('F078', 'Bình Định', 'Thanh Hóa', '01:00', '03:00', '2023-12-22'),
('F079', 'Bình Định', 'Thừa Thiên - Huế', '02:00', '04:00', '2023-12-23'),
('F080', 'Bình Định', 'Bà Rịa - Vũng Tàu', '03:00', '05:00', '2023-12-24'),
------
('F081', 'Cà Mau', 'Cần Thơ', '08:00', '10:00', '2023-12-15'),
('F082', 'Cà Mau', 'Đắk Lắk', '09:00', '11:00', '2023-12-16'),
('F083', 'Cà Mau', 'Đà Nẵng', '10:00', '12:00', '2023-12-17'),
('F084', 'Cà Mau', 'Điện Biên', '11:00', '13:00', '2023-12-18'),
('F085', 'Cà Mau', 'Gia Lai', '12:00', '14:00', '2023-12-19'),
('F086', 'Cà Mau', 'Hải Phòng', '13:00', '15:00', '2023-12-20'),
('F087', 'Cà Mau', 'Hà Nội', '14:00', '16:00', '2023-12-22'),
('F088', 'Cà Mau', 'TPHCM', '15:00', '17:00', '2023-12-25'),
('F089', 'Cà Mau', 'Khánh Hòa', '16:00', '18:00', '2023-12-31'),
('F090', 'Cà Mau', 'Kiên Giang', '17:00', '19:00', '2023-12-21'),
('F091', 'Cà Mau', 'Kiên Giang', '18:00', '20:00', '2023-12-3'),
('F092', 'Cà Mau', 'Lâm Đồng', '19:00', '21:00', '2023-12-01'),
('F093', 'Cà Mau', 'Nghệ An', '20:00', '22:00', '2023-12-08'),
('F094', 'Cà Mau', 'Phú Yên', '21:00', '23:00', '2023-12-09'),
('F095', 'Cà Mau', 'Quảng Bình', '22:00', '00:00', '2023-12-07'),
('F096', 'Cà Mau', 'Quảng Nam', '23:00', '01:00', '2023-12-06'),
('F097', 'Cà Mau', 'Thanh Hóa', '00:00', '02:00', '2023-12-04'),
('F098', 'Cà Mau', 'Thừa Thiên - Huế', '01:00', '03:00', '2023-12-02'),
('F099', 'Cà Mau', 'Bà Rịa - Vũng Tàu', '02:00', '04:00', '2023-12-02'),
('F100', 'Cà Mau', 'Bình Định', '03:00', '05:00', '2023-12-05'),
------
('F101', 'Cần Thơ', 'Đắk Lắk', '08:00', '10:00', '2023-12-11'),
('F102', 'Cần Thơ', 'Đà Nẵng', '09:00', '11:00', '2023-12-21'),
('F103', 'Cần Thơ', 'Điện Biên', '10:00', '12:00', '2023-12-31'),
('F104', 'Cần Thơ', 'Gia Lai', '11:00', '13:00', '2023-12-01'),
('F105', 'Cần Thơ', 'Hải Phòng', '12:00', '14:00', '2023-12-01'),
('F106', 'Cần Thơ', 'Hà Nội', '13:00', '15:00', '2023-12-22'),
('F107', 'Cần Thơ', 'TPHCM', '14:00', '16:00', '2023-12-23'),
('F108', 'Cần Thơ', 'Khánh Hòa', '15:00', '17:00', '2023-12-24'),
('F109', 'Cần Thơ', 'Kiên Giang', '16:00', '18:00', '2023-12-25'),
('F110', 'Cần Thơ', 'Kiên Giang', '17:00', '19:00', '2023-12-26'),
('F111', 'Cần Thơ', 'Lâm Đồng', '18:00', '20:00', '2023-12-27'),
('F112', 'Cần Thơ', 'Nghệ An', '19:00', '21:00', '2023-12-28'),
('F113', 'Cần Thơ', 'Phú Yên', '20:00', '22:00', '2023-12-29'),
('F114', 'Cần Thơ', 'Quảng Bình', '21:00', '23:00', '2023-12-30'),
('F115', 'Cần Thơ', 'Quảng Nam', '22:00', '00:00', '2023-12-01'),
('F116', 'Cần Thơ', 'Thanh Hóa', '23:00', '01:00', '2023-12-01'),
('F117', 'Cần Thơ', 'Thừa Thiên - Huế', '00:00', '02:00', '2023-12-02'),
('F118', 'Cần Thơ', 'Bà Rịa-Vũng Tàu', '01:00', '03:00', '2023-12-03'),
('F119', 'Cần Thơ', 'Bình Định', '02:00', '04:00', '2023-12-05'),
('F120', 'Cần Thơ', 'Cà Mau', '03:00', '05:00', '2023-12-04'),
------
('F121', 'Đắk Lắk', 'Đà Nẵng', '08:00', '10:00', '2023-12-11'),
('F122', 'Đắk Lắk', 'Điện Biên', '09:00', '11:00', '2023-12-26'),
('F123', 'Đắk Lắk', 'Gia Lai', '10:00', '12:00', '2023-12-29'),
('F124', 'Đắk Lắk', 'Hải Phòng', '11:00', '13:00', '2023-12-06'),
('F125', 'Đắk Lắk', 'Hà Nội', '12:00', '14:00', '2023-12-19'),
('F126', 'Đắk Lắk', 'TPHCM', '13:00', '15:00', '2023-12-14'),
('F127', 'Đắk Lắk', 'Khánh Hòa', '14:00', '16:00', '2023-12-07'),
('F128', 'Đắk Lắk', 'Kiên Giang', '15:00', '17:00', '2023-12-18'),
('F129', 'Đắk Lắk', 'Kiên Giang', '16:00', '18:00', '2023-12-16'),
('F130', 'Đắk Lắk', 'Lâm Đồng', '17:00', '19:00', '2023-12-25'),
('F131', 'Đắk Lắk', 'Nghệ An', '18:00', '20:00', '2023-12-04'),
('F132', 'Đắk Lắk', 'Phú Yên', '19:00', '21:00', '2023-12-09'),
('F133', 'Đắk Lắk', 'Quảng Bình', '20:00', '22:00', '2023-12-22'),
('F134', 'Đắk Lắk', 'Quảng Nam', '21:00', '23:00', '2023-12-10'),
('F135', 'Đắk Lắk', 'Thanh Hóa', '22:00', '00:00', '2023-12-02'),
('F136', 'Đắk Lắk', 'Thừa Thiên - Huế', '23:00', '01:00', '2023-12-15'),
('F137', 'Đắk Lắk', 'Bà Rịa-Vũng Tàu', '00:00', '02:00', '2023-12-23'),
('F138', 'Đắk Lắk', 'Bình Định', '01:00', '03:00', '2023-12-20'),
('F139', 'Đắk Lắk', 'Cà Mau', '02:00', '04:00', '2023-12-30'),
('F140', 'Đắk Lắk', 'Cần Thơ', '02:00', '04:00', '2023-12-27'),


-----
('F141', 'Đà Nẵng', 'Điện Biên', '08:00', '10:00', '2023-12-03'),
('F142', 'Đà Nẵng', 'Gia Lai', '09:00', '11:00', '2023-12-15'),
('F143', 'Đà Nẵng', 'Hải Phòng', '10:00', '12:00', '2023-12-27'),
('F144', 'Đà Nẵng', 'Hà Nội', '11:00', '13:00', '2023-12-09'),
('F145', 'Đà Nẵng', 'TPHCM', '12:00', '14:00', '2023-12-18'),
('F146', 'Đà Nẵng', 'Khánh Hòa', '13:00', '15:00', '2023-12-05'),
('F147', 'Đà Nẵng', 'Kiên Giang', '14:00', '16:00', '2023-12-11'),
('F148', 'Đà Nẵng', 'Kiên Giang', '15:00', '17:00', '2023-12-26'),
('F149', 'Đà Nẵng', 'Lâm Đồng', '16:00', '18:00', '2023-12-13'),
('F150', 'Đà Nẵng', 'Nghệ An', '17:00', '19:00', '2023-12-19'),
('F151', 'Đà Nẵng', 'Phú Yên', '18:00', '20:00', '2023-12-07'),
('F152', 'Đà Nẵng', 'Quảng Bình', '19:00', '21:00', '2023-12-01'),
('F153', 'Đà Nẵng', 'Quảng Nam', '20:00', '22:00', '2023-12-14'),
('F154', 'Đà Nẵng', 'Thanh Hóa', '21:00', '23:00', '2023-12-21'),
('F155', 'Đà Nẵng', 'Thừa Thiên - Huế', '22:00', '00:00', '2023-12-16'),
('F156', 'Đà Nẵng', 'Bà Rịa-Vũng Tàu', '23:00', '01:00', '2023-12-24'),
('F157', 'Đà Nẵng', 'Bình Định', '00:00', '02:00', '2023-12-08'),
('F158', 'Đà Nẵng', 'Cà Mau', '01:00', '03:00', '2023-12-04'),
('F159', 'Đà Nẵng', 'Cần Thơ', '02:00', '04:00', '2023-12-10'),
('F160', 'Đà Nẵng', 'Đắk Lắk', '03:00', '05:00', '2023-12-20'),


------
('F161', 'Điện Biên', 'Gia Lai', '08:00', '10:00', '2023-12-07'),
('F162', 'Điện Biên', 'Hải Phòng', '09:00', '11:00', '2023-12-12'),
('F163', 'Điện Biên', 'Hà Nội', '10:00', '12:00', '2023-12-26'),
('F164', 'Điện Biên', 'TPHCM', '11:00', '13:00', '2023-12-09'),
('F165', 'Điện Biên', 'Khánh Hòa', '12:00', '14:00', '2023-12-19'),
('F166', 'Điện Biên', 'Kiên Giang', '13:00', '15:00', '2023-12-22'),
('F167', 'Điện Biên', 'Kiên Giang', '14:00', '16:00', '2023-12-14'),
('F168', 'Điện Biên', 'Lâm Đồng', '15:00', '17:00', '2023-12-15'),
('F169', 'Điện Biên', 'Nghệ An', '16:00', '18:00', '2023-12-03'),
('F170', 'Điện Biên', 'Phú Yên', '17:00', '19:00', '2023-12-21'),
('F171', 'Điện Biên', 'Quảng Bình', '18:00', '20:00', '2023-12-13'),
('F172', 'Điện Biên', 'Quảng Nam', '19:00', '21:00', '2023-12-07'),
('F173', 'Điện Biên', 'Thanh Hóa', '20:00', '22:00', '2023-12-17'),
('F174', 'Điện Biên', 'Thừa Thiên - Huế', '21:00', '23:00', '2023-12-20'),
('F175', 'Điện Biên', 'Bà Rịa-Vũng Tàu', '22:00', '00:00', '2023-12-01'),
('F176', 'Điện Biên', 'Bình Định', '23:00', '01:00', '2023-12-02'),
('F177', 'Điện Biên', 'Cà Mau', '00:00', '02:00', '2023-12-23'),
('F178', 'Điện Biên', 'Cần Thơ', '00:00', '02:00', '2023-12-28'),


-----
('F181', 'Gia Lai', 'Hải Phòng', '08:00', '10:00', '2023-12-07'),
('F182', 'Gia Lai', 'Hà Nội', '09:00', '11:00', '2023-12-18'),
('F183', 'Gia Lai', 'TPHCM', '10:00', '12:00', '2023-12-22'),
('F184', 'Gia Lai', 'Khánh Hòa', '11:00', '13:00', '2023-12-04'),
('F185', 'Gia Lai', 'Kiên Giang', '12:00', '14:00', '2023-12-11'),
('F186', 'Gia Lai', 'Kiên Giang', '13:00', '15:00', '2023-12-25'),
('F187', 'Gia Lai', 'Lâm Đồng', '14:00', '16:00', '2023-12-09'),
('F188', 'Gia Lai', 'Nghệ An', '15:00', '17:00', '2023-12-01'),
('F189', 'Gia Lai', 'Phú Yên', '16:00', '18:00', '2023-12-14'),
('F190', 'Gia Lai', 'Quảng Bình', '17:00', '19:00', '2023-12-21'),
('F191', 'Gia Lai', 'Quảng Nam', '18:00', '20:00', '2023-12-11'),
('F192', 'Gia Lai', 'Thanh Hóa', '19:00', '21:00', '2023-12-27'),
('F193', 'Gia Lai', 'Thừa Thiên - Huế', '20:00', '22:00', '2023-12-16'),
('F194', 'Gia Lai', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-03'),
('F195', 'Gia Lai', 'Bình Định', '09:00', '11:00', '2023-12-20'),
('F196', 'Gia Lai', 'Cà Mau', '10:00', '12:00', '2023-12-23'),
('F197', 'Gia Lai', 'Cần Thơ', '11:00', '13:00', '2023-12-10'),
('F198', 'Gia Lai', 'Đắk Lắk', '12:00', '14:00', '2023-12-26'),
('F199', 'Gia Lai', 'Đà Nẵng', '13:00', '15:00', '2023-12-02'),
('F200', 'Gia Lai', 'Điện Biên', '14:00', '16:00', '2023-12-17'),


('F201', 'Hải Phòng', 'Hà Nội', '08:00', '10:00', '2023-12-06'),
('F202', 'Hải Phòng', 'TPHCM', '09:00', '11:00', '2023-12-10'),
('F203', 'Hải Phòng', 'Khánh Hòa', '10:00', '12:00', '2023-12-16'),
('F204', 'Hải Phòng', 'Kiên Giang', '11:00', '13:00', '2023-12-08'),
('F205', 'Hải Phòng', 'Kiên Giang', '12:00', '14:00', '2023-12-12'),
('F206', 'Hải Phòng', 'Lâm Đồng', '13:00', '15:00', '2023-12-19'),
('F207', 'Hải Phòng', 'Nghệ An', '14:00', '16:00', '2023-12-02'),
('F208', 'Hải Phòng', 'Phú Yên', '15:00', '17:00', '2023-12-15'),
('F209', 'Hải Phòng', 'Quảng Bình', '16:00', '18:00', '2023-12-22'),
('F210', 'Hải Phòng', 'Quảng Nam', '17:00', '19:00', '2023-12-11'),
('F211', 'Hải Phòng', 'Thanh Hóa', '18:00', '20:00', '2023-12-27'),
('F212', 'Hải Phòng', 'Thừa Thiên - Huế', '19:00', '21:00', '2023-12-14'),
('F213', 'Hải Phòng', 'Bà Rịa-Vũng Tàu', '20:00', '22:00', '2023-12-25'),
('F214', 'Hải Phòng', 'Bình Định', '21:00', '23:00', '2023-12-09'),
('F215', 'Hải Phòng', 'Cà Mau', '22:00', '00:00', '2023-12-29'),
('F216', 'Hải Phòng', 'Đắk Lắk', '23:00', '01:00', '2023-12-24'),
('F217', 'Hải Phòng', 'Đà Nẵng', '00:00', '02:00', '2023-12-07'),
('F218', 'Hải Phòng', 'Điện Biên', '01:00', '03:00', '2023-12-23'),
('F219', 'Hải Phòng', 'Gia Lai', '02:00', '04:00', '2023-12-18'),
('F220', 'Hải Phòng', 'Cần Thơ', '18:00', '20:00', '2023-12-17'),

-----
('F221', 'Khánh Hòa', 'Kiên Giang', '08:00', '10:00', '2023-12-17'),
('F222', 'Khánh Hòa', 'Kiên Giang', '09:00', '11:00', '2023-12-28'),
('F223', 'Khánh Hòa', 'Lâm Đồng', '10:00', '12:00', '2023-12-09'),
('F224', 'Khánh Hòa', 'Nghệ An', '11:00', '13:00', '2023-12-15'),
('F225', 'Khánh Hòa', 'Phú Yên', '12:00', '14:00', '2023-12-05'),
('F226', 'Khánh Hòa', 'Quảng Bình', '13:00', '15:00', '2023-12-19'),
('F227', 'Khánh Hòa', 'Quảng Nam', '14:00', '16:00', '2023-12-04'),
('F228', 'Khánh Hòa', 'Thanh Hóa', '15:00', '17:00', '2023-12-20'),
('F229', 'Khánh Hòa', 'Thừa Thiên - Huế', '16:00', '18:00', '2023-12-13'),
('F230', 'Khánh Hòa', 'Đắk Lắk', '23:00', '01:00', '2023-12-03'),
('F231', 'Khánh Hòa', 'Đà Nẵng', '00:00', '02:00', '2023-12-27'),
('F232', 'Khánh Hòa', 'Điện Biên', '01:00', '03:00', '2023-12-14'),
('F233', 'Khánh Hòa', 'Gia Lai', '02:00', '04:00', '2023-12-08'),
('F234', 'Khánh Hòa', 'Cần Thơ', '18:00', '20:00', '2023-12-23'),
('F235', 'Khánh Hòa', 'Bình Định', '18:00', '20:00', '2023-12-01'),
('F236', 'Khánh Hòa', 'Hà Nội', '18:00', '20:00', '2023-12-21'),
('F237', 'Khánh Hòa', 'Bà Rịa-Vũng Tàu', '18:00', '20:00', '2023-12-18'),
('F238', 'Khánh Hòa', 'TPHCM', '18:00', '20:00', '2023-12-16'),
('F239', 'Khánh Hòa', 'Hải Phòng', '18:00', '20:00', '2023-12-12'),
('F240', 'Khánh Hòa', 'Cà Mau', '16:00', '18:00', '2023-12-26'),



---
('F241', 'Phú Yên', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-13'),
('F242', 'Phú Yên', 'Bình Định', '09:00', '11:00', '2023-12-07'),
('F243', 'Phú Yên', 'Cà Mau', '10:00', '12:00', '2023-12-19'),
('F244', 'Phú Yên', 'Cần Thơ', '11:00', '13:00', '2023-12-26'),
('F245', 'Phú Yên', 'Đắk Lắk', '12:00', '14:00', '2023-12-15'),
('F246', 'Phú Yên', 'Đà Nẵng', '13:00', '15:00', '2023-12-05'),
('F247', 'Phú Yên', 'Điện Biên', '14:00', '16:00', '2023-12-09'),
('F248', 'Phú Yên', 'Gia Lai', '15:00', '17:00', '2023-12-18'),
('F249', 'Phú Yên', 'Hải Phòng', '16:00', '18:00', '2023-12-12'),
('F250', 'Phú Yên', 'Hà Nội', '17:00', '19:00', '2023-12-23'),
('F251', 'Phú Yên', 'TPHCM', '18:00', '20:00', '2023-12-20'),
('F252', 'Phú Yên', 'Khánh Hòa', '19:00', '21:00', '2023-12-02'),
('F253', 'Phú Yên', 'Kiên Giang', '20:00', '22:00', '2023-12-27'),
('F254', 'Phú Yên', 'Lâm Đồng', '21:00', '23:00', '2023-12-16'),
('F255', 'Phú Yên', 'Nghệ An', '22:00', '00:00', '2023-12-03'),
('F256', 'Phú Yên', 'Phú Yên', '23:00', '01:00', '2023-12-28'),
('F257', 'Phú Yên', 'Quảng Bình', '00:00', '02:00', '2023-12-22'),
('F258', 'Phú Yên', 'Quảng Nam', '01:00', '03:00', '2023-12-21'),
('F259', 'Phú Yên', 'Thanh Hóa', '02:00', '04:00', '2023-12-17'),
('F260', 'Phú Yên', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-11'),

-------
('F261', 'Kiên Giang', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-21'),
('F262', 'Kiên Giang', 'Bình Định', '09:00', '11:00', '2023-12-04'),
('F263', 'Kiên Giang', 'Cà Mau', '10:00', '12:00', '2023-12-17'),
('F264', 'Kiên Giang', 'Cần Thơ', '11:00', '13:00', '2023-12-09'),
('F265', 'Kiên Giang', 'Đắk Lắk', '12:00', '14:00', '2023-12-26'),
('F266', 'Kiên Giang', 'Đà Nẵng', '13:00', '15:00', '2023-12-06'),
('F267', 'Kiên Giang', 'Điện Biên', '14:00', '16:00', '2023-12-10'),
('F268', 'Kiên Giang', 'Gia Lai', '15:00', '17:00', '2023-12-18'),
('F269', 'Kiên Giang', 'Hải Phòng', '16:00', '18:00', '2023-12-11'),
('F270', 'Kiên Giang', 'Hà Nội', '17:00', '19:00', '2023-12-23'),
('F271', 'Kiên Giang', 'TPHCM', '18:00', '20:00', '2023-12-12'),
('F272', 'Kiên Giang', 'Khánh Hòa', '19:00', '21:00', '2023-12-02'),
('F273', 'Kiên Giang', 'Kiên Giang', '20:00', '22:00', '2023-12-27'),
('F274', 'Kiên Giang', 'Lâm Đồng', '21:00', '23:00', '2023-12-16'),
('F275', 'Kiên Giang', 'Nghệ An', '22:00', '00:00', '2023-12-03'),
('F276', 'Kiên Giang', 'Phú Yên', '23:00', '01:00', '2023-12-15'),
('F277', 'Kiên Giang', 'Quảng Bình', '00:00', '02:00', '2023-12-22'),
('F278', 'Kiên Giang', 'Quảng Nam', '01:00', '03:00', '2023-12-20'),
('F279', 'Kiên Giang', 'Thanh Hóa', '02:00', '04:00', '2023-12-19'),
('F280', 'Kiên Giang', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-07'),

------
('F281', 'Lâm Đồng', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-11'),
('F282', 'Lâm Đồng', 'Bình Định', '09:00', '11:00', '2023-12-24'),
('F283', 'Lâm Đồng', 'Cà Mau', '10:00', '12:00', '2023-12-16'),
('F284', 'Lâm Đồng', 'Cần Thơ', '11:00', '13:00', '2023-12-09'),
('F285', 'Lâm Đồng', 'Đắk Lắk', '12:00', '14:00', '2023-12-05'),
('F286', 'Lâm Đồng', 'Đà Nẵng', '13:00', '15:00', '2023-12-18'),
('F287', 'Lâm Đồng', 'Điện Biên', '14:00', '16:00', '2023-12-07'),
('F288', 'Lâm Đồng', 'Gia Lai', '15:00', '17:00', '2023-12-14'),
('F289', 'Lâm Đồng', 'Hải Phòng', '16:00', '18:00', '2023-12-25'),
('F290', 'Lâm Đồng', 'Hà Nội', '17:00', '19:00', '2023-12-03'),
('F291', 'Lâm Đồng', 'TPHCM', '18:00', '20:00', '2023-12-20'),
('F292', 'Lâm Đồng', 'Khánh Hòa', '19:00', '21:00', '2023-12-13'),
('F293', 'Lâm Đồng', 'Kiên Giang', '20:00', '22:00', '2023-12-28'),
('F294', 'Lâm Đồng', 'Lâm Đồng', '21:00', '23:00', '2023-12-01'),
('F295', 'Lâm Đồng', 'Nghệ An', '22:00', '00:00', '2023-12-19'),
('F296', 'Lâm Đồng', 'Phú Yên', '23:00', '01:00', '2023-12-10'),
('F297', 'Lâm Đồng', 'Quảng Bình', '00:00', '02:00', '2023-12-28'),
('F298', 'Lâm Đồng', 'Quảng Nam', '01:00', '03:00', '2023-12-22'),
('F299', 'Lâm Đồng', 'Thanh Hóa', '02:00', '04:00', '2023-12-08'),
('F300', 'Lâm Đồng', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-12'),

--------
('F301', 'Nghệ An', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-11'),
('F302', 'Nghệ An', 'Bình Định', '09:00', '11:00', '2023-12-24'),
('F303', 'Nghệ An', 'Cà Mau', '10:00', '12:00', '2023-12-16'),
('F304', 'Nghệ An', 'Cần Thơ', '11:00', '13:00', '2023-12-09'),
('F305', 'Nghệ An', 'Đắk Lắk', '12:00', '14:00', '2023-12-05'),
('F306', 'Nghệ An', 'Đà Nẵng', '13:00', '15:00', '2023-12-18'),
('F307', 'Nghệ An', 'Điện Biên', '14:00', '16:00', '2023-12-07'),
('F308', 'Nghệ An', 'Gia Lai', '15:00', '17:00', '2023-12-14'),
('F309', 'Nghệ An', 'Hải Phòng', '16:00', '18:00', '2023-12-25'),
('F310', 'Nghệ An', 'Hà Nội', '17:00', '19:00', '2023-12-03'),
('F311', 'Nghệ An', 'TPHCM', '18:00', '20:00', '2023-12-20'),
('F312', 'Nghệ An', 'Khánh Hòa', '19:00', '21:00', '2023-12-13'),
('F313', 'Nghệ An', 'Kiên Giang', '20:00', '22:00', '2023-12-28'),
('F314', 'Nghệ An', 'Lâm Đồng', '21:00', '23:00', '2023-12-01'),
('F315', 'Nghệ An', 'Nghệ An', '22:00', '00:00', '2023-12-19'),
('F316', 'Nghệ An', 'Phú Yên', '23:00', '01:00', '2023-12-10'),
('F317', 'Nghệ An', 'Quảng Bình', '00:00', '02:00', '2023-12-28'),
('F318', 'Nghệ An', 'Quảng Nam', '01:00', '03:00', '2023-12-22'),
('F319', 'Nghệ An', 'Thanh Hóa', '02:00', '04:00', '2023-12-08'),
('F320', 'Nghệ An', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-12'),

------------
('F321', 'Quảng Bình', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-05'),
('F322', 'Quảng Bình', 'Bình Định', '09:00', '11:00', '2023-12-18'),
('F323', 'Quảng Bình', 'Cà Mau', '10:00', '12:00', '2023-12-11'),
('F324', 'Quảng Bình', 'Cần Thơ', '11:00', '13:00', '2023-12-07'),
('F325', 'Quảng Bình', 'Đắk Lắk', '12:00', '14:00', '2023-12-23'),
('F326', 'Quảng Bình', 'Đà Nẵng', '13:00', '15:00', '2023-12-06'),
('F327', 'Quảng Bình', 'Điện Biên', '14:00', '16:00', '2023-12-15'),
('F328', 'Quảng Bình', 'Gia Lai', '15:00', '17:00', '2023-12-14'),
('F329', 'Quảng Bình', 'Hải Phòng', '16:00', '18:00', '2023-12-17'),
('F330', 'Quảng Bình', 'Hà Nội', '17:00', '19:00', '2023-12-28'),
('F331', 'Quảng Bình', 'TPHCM', '18:00', '20:00', '2023-12-01'),
('F332', 'Quảng Bình', 'Khánh Hòa', '19:00', '21:00', '2023-12-09'),
('F333', 'Quảng Bình', 'Kiên Giang', '20:00', '22:00', '2023-12-10'),
('F334', 'Quảng Bình', 'Lâm Đồng', '21:00', '23:00', '2023-12-13'),
('F335', 'Quảng Bình', 'Nghệ An', '22:00', '00:00', '2023-12-25'),
('F336', 'Quảng Bình', 'Phú Yên', '23:00', '01:00', '2023-12-03'),
('F337', 'Quảng Bình', 'Quảng Bình', '00:00', '02:00', '2023-12-20'),
('F338', 'Quảng Bình', 'Quảng Nam', '01:00', '03:00', '2023-12-16'),
('F339', 'Quảng Bình', 'Thanh Hóa', '02:00', '04:00', '2023-12-24'),
('F340', 'Quảng Bình', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-19'),

--------------
('F341', 'Quảng Nam', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-07'),
('F342', 'Quảng Nam', 'Bình Định', '09:00', '11:00', '2023-12-15'),
('F343', 'Quảng Nam', 'Cà Mau', '10:00', '12:00', '2023-12-02'),
('F344', 'Quảng Nam', 'Cần Thơ', '11:00', '13:00', '2023-12-12'),
('F345', 'Quảng Nam', 'Đắk Lắk', '12:00', '14:00', '2023-12-28'),
('F346', 'Quảng Nam', 'Đà Nẵng', '13:00', '15:00', '2023-12-05'),
('F347', 'Quảng Nam', 'Điện Biên', '14:00', '16:00', '2023-12-22'),
('F348', 'Quảng Nam', 'Gia Lai', '15:00', '17:00', '2023-12-16'),
('F349', 'Quảng Nam', 'Hải Phòng', '16:00', '18:00', '2023-12-20'),
('F350', 'Quảng Nam', 'Hà Nội', '17:00', '19:00', '2023-12-26'),
('F351', 'Quảng Nam', 'TPHCM', '18:00', '20:00', '2023-12-10'),
('F352', 'Quảng Nam', 'Khánh Hòa', '19:00', '21:00', '2023-12-13'),
('F353', 'Quảng Nam', 'Kiên Giang', '20:00', '22:00', '2023-12-18'),
('F354', 'Quảng Nam', 'Lâm Đồng', '21:00', '23:00', '2023-12-08'),
('F355', 'Quảng Nam', 'Nghệ An', '22:00', '00:00', '2023-12-14'),
('F356', 'Quảng Nam', 'Phú Yên', '23:00', '01:00', '2023-12-03'),
('F357', 'Quảng Nam', 'Quảng Bình', '00:00', '02:00', '2023-12-23'),
('F358', 'Quảng Nam', 'Quảng Nam', '01:00', '03:00', '2023-12-19'),
('F359', 'Quảng Nam', 'Thanh Hóa', '02:00', '04:00', '2023-12-25'),
('F360', 'Quảng Nam', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-09'),

----------
('F361', 'Thanh Hóa', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-04'),
('F362', 'Thanh Hóa', 'Bình Định', '09:00', '11:00', '2023-12-07'),
('F363', 'Thanh Hóa', 'Cà Mau', '10:00', '12:00', '2023-12-10'),
('F364', 'Thanh Hóa', 'Cần Thơ', '11:00', '13:00', '2023-12-12'),
('F365', 'Thanh Hóa', 'Đắk Lắk', '12:00', '14:00', '2023-12-14'),
('F366', 'Thanh Hóa', 'Đà Nẵng', '13:00', '15:00', '2023-12-16'),
('F367', 'Thanh Hóa', 'Điện Biên', '14:00', '16:00', '2023-12-19'),
('F368', 'Thanh Hóa', 'Gia Lai', '15:00', '17:00', '2023-12-21'),
('F369', 'Thanh Hóa', 'Hải Phòng', '16:00', '18:00', '2023-12-23'),
('F370', 'Thanh Hóa', 'Hà Nội', '17:00', '19:00', '2023-12-25'),
('F371', 'Thanh Hóa', 'TPHCM', '18:00', '20:00', '2023-12-28'),
('F372', 'Thanh Hóa', 'Khánh Hòa', '19:00', '21:00', '2023-12-02'),
('F373', 'Thanh Hóa', 'Kiên Giang', '20:00', '22:00', '2023-12-05'),
('F374', 'Thanh Hóa', 'Lâm Đồng', '21:00', '23:00', '2023-12-08'),
('F375', 'Thanh Hóa', 'Nghệ An', '22:00', '00:00', '2023-12-11'),
('F376', 'Thanh Hóa', 'Phú Yên', '23:00', '01:00', '2023-12-13'),
('F377', 'Thanh Hóa', 'Quảng Bình', '00:00', '02:00', '2023-12-15'),
('F378', 'Thanh Hóa', 'Quảng Nam', '01:00', '03:00', '2023-12-18'),
('F379', 'Thanh Hóa', 'Thanh Hóa', '02:00', '04:00', '2023-12-20'),
('F380', 'Thanh Hóa', 'Thừa Thiên - Huế', '03:00', '05:00', '2023-12-22'),

----------
('F381', 'Thừa Thiên - Huế', 'Bà Rịa-Vũng Tàu', '08:00', '10:00', '2023-12-05'),
('F382', 'Thừa Thiên - Huế', 'Bình Định', '09:00', '11:00', '2023-12-06'),
('F383', 'Thừa Thiên - Huế', 'Cà Mau', '10:00', '12:00', '2023-12-07'),
('F384', 'Thừa Thiên - Huế', 'Cần Thơ', '11:00', '13:00', '2023-12-08'),
('F385', 'Thừa Thiên - Huế', 'Đắk Lắk', '12:00', '14:00', '2023-12-09'),
('F386', 'Thừa Thiên - Huế', 'Đà Nẵng', '13:00', '15:00', '2023-12-10'),
('F387', 'Thừa Thiên - Huế', 'Điện Biên', '14:00', '16:00', '2023-12-11'),
('F388', 'Thừa Thiên - Huế', 'Gia Lai', '15:00', '17:00', '2023-12-12'),
('F389', 'Thừa Thiên - Huế', 'Hải Phòng', '16:00', '18:00', '2023-12-13'),
('F390', 'Thừa Thiên - Huế', 'Hà Nội', '17:00', '19:00', '2023-12-14'),
('F391', 'Thừa Thiên - Huế', 'TPHCM', '18:00', '20:00', '2023-12-15'),
('F392', 'Thừa Thiên - Huế', 'Khánh Hòa', '19:00', '21:00', '2023-12-16'),
('F393', 'Thừa Thiên - Huế', 'Kiên Giang', '20:00', '22:00', '2023-12-17'),
('F394', 'Thừa Thiên - Huế', 'Lâm Đồng', '21:00', '23:00', '2023-12-18'),
('F395', 'Thừa Thiên - Huế', 'Nghệ An', '22:00', '00:00', '2023-12-19'),
('F396', 'Thừa Thiên - Huế', 'Phú Yên', '23:00', '01:00', '2023-12-20'),
('F397', 'Thừa Thiên - Huế', 'Quảng Bình', '00:00', '02:00', '2023-12-21'),
('F398', 'Thừa Thiên - Huế', 'Quảng Nam', '01:00', '03:00', '2023-12-22'),
('F399', 'Thừa Thiên - Huế', 'Thanh Hóa', '02:00', '04:00', '2023-12-23');


--Thêm giá vé gốc và mã máy bay vào CHUYENBAY
UPDATE CHUYENBAY
SET Pl_ID = 'PL01', originalPrice = 1000000
WHERE toLocation = 'Hải Phòng' 

UPDATE CHUYENBAY
SET Pl_ID = 'PL02', originalPrice = 1100000
WHERE toLocation = 'Bà Rịa - Vũng Tàu'

UPDATE CHUYENBAY
SET Pl_ID = 'PL03', originalPrice = 1300000
WHERE toLocation = 'Bình Định'

UPDATE CHUYENBAY
SET Pl_ID = 'PL04', originalPrice = 1300000
WHERE toLocation = 'Cà Mau'

UPDATE CHUYENBAY
SET Pl_ID = 'PL05', originalPrice = 1500000
WHERE toLocation = 'Cần Thơ'

UPDATE CHUYENBAY
SET Pl_ID = 'PL06', originalPrice = 1000000
WHERE toLocation = 'Đắk Lắk'

UPDATE CHUYENBAY
SET Pl_ID = 'PL07', originalPrice = 1600000
WHERE toLocation = 'Đà Nẵng'

UPDATE CHUYENBAY
SET Pl_ID = 'PL08', originalPrice = 1900000
WHERE toLocation = 'Điện Biên'

UPDATE CHUYENBAY
SET Pl_ID = 'PL09', originalPrice = 1900000
WHERE toLocation = 'Gia Lai'

UPDATE CHUYENBAY
SET Pl_ID = 'PL10', originalPrice = 1000000
WHERE toLocation = 'TPHCM'

UPDATE CHUYENBAY
SET Pl_ID = 'PL11', originalPrice = 1200000
WHERE toLocation = 'Khánh Hòa'

UPDATE CHUYENBAY
SET Pl_ID = 'PL12', originalPrice = 1400000
WHERE toLocation = 'Kiên Giang'

UPDATE CHUYENBAY
SET Pl_ID = 'PL013', originalPrice = 1000000
WHERE toLocation = 'Lâm Đồng'

UPDATE CHUYENBAY
SET Pl_ID = 'PL14', originalPrice = 1800000
WHERE toLocation = 'Nghệ An'

UPDATE CHUYENBAY
SET Pl_ID = 'PL15', originalPrice = 1700000
WHERE toLocation = 'Phú Yên'

UPDATE CHUYENBAY
SET Pl_ID = 'PL16', originalPrice = 1400000
WHERE toLocation = 'Quảng Bình'

UPDATE CHUYENBAY
SET Pl_ID = 'PL17', originalPrice = 1300000
WHERE toLocation = 'Quảng Nam'

UPDATE CHUYENBAY
SET Pl_ID = 'PL18', originalPrice = 1500000
WHERE toLocation = 'Thanh Hóa'

UPDATE CHUYENBAY
SET Pl_ID = 'PL19', originalPrice = 1100000
WHERE toLocation = 'Thừa Thiên - Huế'

UPDATE CHUYENBAY
SET Pl_ID = 'PL20', originalPrice = 1000000
WHERE toLocation = 'Hà Nội'



--Cập nhật trường airport_id trong bảng CHUYENBAY
UPDATE CHUYENBAY
SET airport_ID = SANBAY.airportID
FROM CHUYENBAY
INNER JOIN SANBAY ON CHUYENBAY.fromLocation = SANBAY.place;



CREATE TABLE DISCOUNT
(
	D_ID VARCHAR(3) NOT NULL,
	D_NAME VARCHAR(100),
	D_START SMALLDATETIME,
	D_FINISH SMALLDATETIME,
	D_PERCENT INT
	CONSTRAINT pk_discount PRIMARY KEY (D_ID)
);
INSERT INTO DISCOUNT (D_ID, D_NAME, D_START, D_FINISH, D_PERCENT)
VALUES
    ('D01', N'Mùa hoa đào rực rỡ', '2023-12-01', '2024-01-15', 10),
    ('D02', N'Biển xanh vàng cát', '2023-12-05', '2024-01-20', 15),
    ('D03', N'Khám phá văn hóa dân tộc', '2023-12-10', '2024-01-25', 20),
    ('D04', N'Thành phố ánh đèn sáng lung linh', '2023-12-15', '2024-01-30', 12),
    ('D05', N'Nét cổ kính và hiện đại hòa quyện', '2023-12-20', '2024-01-10', 8),
    ('D06', N'Làng nghề truyền thống', '2023-12-25', '2024-01-05', 17),
    ('D07', N'Bãi biển đẹp mê ly', '2023-12-02', '2024-01-18', 14),
    ('D08', N'Hành trình mạo hiểm', '2023-12-08', '2024-01-28', 19),
    ('D09', N'Thiên đàng biển đỏ', '2023-12-12', '2024-01-22', 11),
    ('D10', N'Khu du lịch thiên đàng', '2023-12-18', '2024-01-15', 13),
    ('D11', N'Phố cổ tình yêu', '2023-12-22', '2024-01-10', 9),
    ('D12', N'Mộng mơ giữa thiên nhiên', '2023-12-26', '2024-01-02', 16),
    ('D13', N'Lễ hội đèn lồng lung linh', '2023-12-03', '2024-01-29', 21),
    ('D14', N'Trải nghiệm vùng quê bình yên', '2023-12-07', '2024-01-24', 18),
    ('D15', N'Điểm đến hoàn hảo', '2023-12-13', '2024-01-19', 10),
    ('D16', N'Khám phá vùng miền quê', '2023-12-19', '2024-01-25', 12),
    ('D17', N'Hòa mình vào cuộc sống dân dã', '2023-12-23', '2024-01-15', 14),
    ('D18', N'Lặn sâu khám phá đại dương', '2023-12-27', '2024-01-10', 7),
    ('D19', N'Đảo thiên đàng', '2023-12-04', '2024-01-20', 9),
    ('D20', N'Thiên đàng núi rừng', '2023-12-09', '2024-01-28', 11);
	




CREATE TABLE FOOD
(
	F_ID VARCHAR(3) NOT NULL,
	F_NAME VARCHAR(30),
	F_PRICE VARCHAR(10),
	CONSTRAINT pk_food PRIMARY KEY (F_ID)
)
INSERT INTO FOOD (F_ID, F_NAME, F_PRICE)
VALUES
    ('FD01', 'Bữa sáng ấm áp', '150000'),
    ('FD02', 'Mì quảng', '120000'),
    ('FD03', 'Phở bò', '130000'),
    ('FD04', 'Bánh mì sandwich', '100000'),
    ('FD05', 'Gỏi cuốn', '110000'),
    ('FD06', 'Cơm gà hấp', '140000'),
    ('FD07', 'Bún riêu cua', '125000'),
    ('FD08', 'Bánh xèo', '130000'),
    ('FD09', 'Bánh mì pate', '90000'),
    ('FD10', 'Bún chả Hà Nội', '135000'),
	('FD11', 'Nước suối', '10000'),
    ('FD12', 'Nước ngọt', '15000'),


CREATE TABLE ACCOUNT 
(
	EMAIL NVARCHAR(30) PRIMARY KEY,
	PASSWORD NVARCHAR(20),
	NAME NVARCHAR(30),
)

INSERT INTO ACCOUNT (EMAIL, PASSWORD, NAME)
SELECT MAIL, '123456', FULLNAME
FROM CUSTOMER;



CREATE TABLE CUSTOMER
(
	C_ID VARCHAR(3) PRIMARY KEY NOT NULL,
	NUM_ID VARCHAR(20),
	FULLNAME VARCHAR(100),
	POINT INT,
	MAIL NVARCHAR(30),
	CONSTRAINT fk_customer FOREIGN KEY (MAIL) REFERENCES ACCOUNT(EMAIL)
);


INSERT INTO CUSTOMER(C_ID, NUM_ID, FULLNAME, POINT, MAIL)
VALUES
    ('C01', '001234567890', 'Nguyễn Văn Hải', null, 'nguyenvanhai@gmail.com'),
    ('C02', '002345678901', 'Trần Thị Linh', null, 'tranthinguyen@gmail.com'),
    ('C03', '003456789012', 'Lê Văn Đức', null, 'levanduc@gmail.com'),
    ('C04', '004567890123', 'Phạm Thị Hương', null, 'phamthihuong@gmail.com'),
    ('C05', '005678901234', 'Hoàng Văn Nam', null, 'hoangvannam@gmail.com'),
    ('C06', '006789012345', 'Trịnh Thị Thảo', null, 'trinhthithao@gmail.com'),
    ('C07', '007890123456', 'Nguyễn Thị Mai', null, 'nguyenthimai@gmail.com'),
    ('C08', '008901234567', 'Lý Văn Minh', null, 'lyvanminh@gmail.com'),
    ('C09', '009012345678', 'Vũ Thị Phương', null, 'vuthiphuong@gmail.com'),
    ('C10', '000123456789', 'Ngô Văn Khánh', null, 'ngovankhanh@gmail.com'),
    ('C11', '001234567890', 'Phan Thị Trang', null, 'phanthitrang@gmail.com'),
    ('C12', '002345678901', 'Trương Văn Hiền', null, 'truongvanhien@gmail.com'),
    ('C13', '003456789012', 'Mai Thị Nga', null, 'maithinga@gmail.com'),
    ('C14', '004567890123', 'Vương Văn Thanh', null, 'vuongvanthanh@gmail.com'),
    ('C15', '005678901234', 'Đinh Thị Lan', null, 'dinhthilan@gmail.com'),
    ('C16', '006789012345', 'Lâm Văn Tùng', null, 'lamvantung@gmail.com'),
    ('C17', '007890123456', 'Võ Thị Hà', null, 'vothiha@gmail.com'),
    ('C18', '008901234567', 'Đặng Văn Trung', null, 'dangvantrung@gmail.com'),
    ('C19', '009012345678', 'Hồ Thị Lan', null, 'hothilan@gmail.com'),
    ('C20', '000123456789', 'Chu Văn Tuấn', null, 'chuvantuan@gmail.com')
 



CREATE TABLE TICKET (
    T_ID VARCHAR(4) NOT NULL,
    CCCD VARCHAR(12) NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Fly_ID VARCHAR(4) NOT NULL,
    Kg_ID VARCHAR(3) NOT NULL,
    Seat_ID VARCHAR(3) NOT NULL,
    Food_ID VARCHAR(5) NULL,
    Ticket_Price INT NOT NULL,
    Mail VARCHAR(50) NOT NULL,
    Dis_ID NVARCHAR(5)
    PRIMARY KEY (T_ID),
    CONSTRAINT UQ_Fly_Seat_CCCD_Name_Mail UNIQUE (Fly_ID, Seat_ID, CCCD, Name, Mail),
    CONSTRAINT UQ_Fly_Seat UNIQUE (Fly_ID, Seat_ID)
);


INSERT INTO TICKET (T_ID, CCCD, NAME, Fly_ID, Kg_ID, Seat_ID, Food_ID, Ticket_Price, Mail, Dis_ID) VALUES 
('T001', '001234567890', 'Nguyễn Văn Hải', 'F009', 'K50', 'D09', 'FD07', 700000, 'nguyenvanhai@gmail.com', 'D01'),
('T002', '002345678901', 'Trần Thị Linh', 'F017', 'K07', 'F17', 'FD01', 1000000, 'tranthinguyen@gmail.com', 'D02'),
('T003', '003456789012', 'Lê Văn Đức', 'F020', 'K07', 'F20', 'FD09', 2000000, 'levanduc@gmail.com', 'D03'),
('T004', '004567890123', 'Phạm Thị Hương', 'F028', 'K50', 'F28', 'FD04', 100000, 'phamthihuong@gmail.com', 'D04'),
('T005', '128717000549', 'Châu Thành Tuấn ', 'F024', 'K07', 'B24', 'FD04', 700000, 'afrzbgmf@gmail.com', 'DO5'),
('T006', '986240306308', 'Hồ Ngọc Tiến ', 'F015', 'K07', 'A15', 'FD09', 2000000, 'selrinaj@gmail.com', 'DO6'),
('T007', '005678901234', 'Hoàng Văn Nam ', 'F011', 'K20', 'E11', 'FD03', 1200000, 'hoangvannam@gmail.com', 'DO7'),
('T008', '006789012345', 'Trịnh Thị Thảo ', 'F018', 'K07', 'A18', 'FD04', 1000000, 'trinhthithao@gmail.com', 'DO8'),
('T009', '281997473875', 'Trần Ngọc Thành ', 'F004', 'K20', 'F04', 'FD02', 1200000, 'umqsgutn@gmail.com', 'D09'),
('T010', '840231298539', 'Hồ Tiến Văn ', 'F010', 'K50', 'F10', 'FD05', 800000, 'nppqerzc@gmail.com', 'D10'),
('T011', '007890123456', 'Nguyễn Thị Mai ', 'F015', 'K07', 'F15', 'FD08', 700000, 'nguyenthimai@gmail.com', 'D11'),
('T012', '202492183468', 'Phùng Trọng Ngọc ', 'F027', 'K50', 'E27', 'FD02', 1700000, 'bmxvuqmq@gmail.com', 'D12'),
('T013', '057696678701', 'Thạch Thuỳ Tuấn ', 'F010', 'K20', 'F11', 'FD03', 1200000, 'avoneukh@gmail.com', 'D13'),
('T014', '008901234567', 'Lý Văn Minh ', 'F008', 'K50', 'F08', 'FD10', 700000, 'lyvanminh@gmail.com', 'D14'),
('T015', '653498944350', 'Huỳnh Văn Thành ', 'F015', 'K07', 'D15', 'FD08', 800000, 'bzgfoagn@gmail.com', 'D15'),
('T016', '277130118940', 'Phạm Thuỳ Trí ', 'F022', 'K20', 'E22', 'FD07', 1200000, 'zmplltbg@gmail.com', 'D16'),
('T017', '881787145129', 'Lê Mỹ Đăng ', 'F027', 'K20', 'B27', 'FD06', 2000000, 'urocxwep@gmail.com', 'D17'),
('T018', '009012345678', 'Vũ Thị Phương ', 'F015', 'K20', 'E15', 'FD06', 1500000, 'vuthiphuong@gmail.com', 'D18'),
('T019', '000123456789', 'Ngô Văn Khánh ', 'F027', 'K20', 'A27', 'FD09', 2000000, 'ngovankhanh@gmail.com', 'D19'),
('T020', '208542925163', 'Thạch Tiến Tiến ', 'F008', 'K20', 'D08', 'FD06', 2000000, 'ezrohsev@gmail.com', 'D20'),
('T021', '001234567890', 'Phan Thị Trang ', 'F001', 'K07', 'C01', 'FD04', 1700000, 'phanthitrang@gmail.com', 'D01'),
('T022', '002345678901', 'Trương Văn Hiền ', 'F006', 'K07', 'F06', 'FD08', 1700000, 'truongvanhien@gmail.com', 'D02'),
('T023', '907345516869', 'Huỳnh Trí Khang ', 'F030', 'K20', 'D30', 'FD05', 700000, 'uzqowwdi@gmail.com', 'D03'),
('T024', '003456789012', 'Mai Thị Nga ', 'F006', 'K20', 'C06', 'FD05', 700000, 'maithinga@gmail.com', 'D04'),
('T025', '004567890123', 'Vương Văn Thanh ', 'F010', 'K20', 'F12', 'FD06', 2000000, 'vuongvanthanh@gmail.com', 'D05'),
('T026', '171912269099', 'Võ Ngọc Tiến ', 'F030', 'K07', 'A30', 'FD10', 2000000, 'zncpbvkf@gmail.com', 'D06'),
('T027', '444113310326', 'Lê Thiên Mỹ ', 'F018', 'K50', 'B18', 'FD05', 1700000, 'njiyzyxy@gmail.com', 'D07'),
('T028', '005678901234', 'Đinh Thị Lan ', 'F020', 'K50', 'D20', 'FD03', 1700000, 'dinhthilan@gmail.com', 'D08'),
('T029', '044112052680', 'Huỳnh Tiến Bình ', 'F016', 'K07', 'C16', 'FD10', 800000, 'wqivsvll@gmail.com', 'D09'),
('T030', '007890123456', 'Lâm Văn Tùng ', 'F003', 'K50', 'A03', 'FD07', 1700000, 'lamvantung@gmail.com', 'D10'),
('T031', '006789012345', 'Võ Thị Hà ', 'F005', 'K50', 'E05', 'FD04', 2000000, 'vothiha@gmail.com', 'D11'),
('T032', '557425910583', 'Bùi Trọng Thu ', 'F013', 'K20', 'C13', 'FD05', 2000000, 'gvfcpyec@gmail.com', 'D12'),
('T033', '008901234567', 'Đặng Văn Trung ', 'F014', 'K20', 'A14', 'FD04', 1200000, 'dangvantrung@gmail.com', 'D13'),
('T034', '647087038603', 'Hồ Thành Minh ', 'F015', 'K20', 'E16', 'FD10', 1000000, 'gphrhidy@gmail.com', 'D14'),
('T035', '009012345678', 'Hồ Thị Lan ', 'F012', 'K20', 'A12', 'FD07', 1700000, 'hothilan@gmail.com', 'D15'),
('T036', '161482422113', 'Đặng Minh Trung ', 'F007', 'K50', 'F07', 'FD05', 2000000, 'kdxzzkcc@gmail.com', 'D16'),
('T037', '000123456789', 'Chu Văn Tuấn ', 'F022', 'K20', 'A22', 'FD06', 2000000, 'chuvantuan@gmail.com', 'D17'),
('T038', '991719754719', 'Nguyễn Minh Huy ', 'F001', 'K20', 'C02', 'FD06', 1500000, 'ndixfhtw@gmail.com', 'D18'),
('T039', '981479936688', 'Nguyễn Bình Thiên ', 'F021', 'K07', 'B21', 'FD07', 2000000, 'dwuqmxad@gmail.com', 'D20'),
('T040', '304467797859', 'Đặng Thu Trí ', 'F026', 'K50', 'C26', 'FD07', 1500000, 'mjlhcjdm@gmail.com', 'D19'),
('T041', '543299202539', 'Hoàng Trung Phúc ', 'F023', 'K50', 'A23', 'FD08', 1700000, 'ubndwqkf@gmail.com', 'D01'),
('T042', '640205897797', 'Phùng Văn Ngọc ', 'F018', 'K07', 'F18', 'FD03', 2000000, 'ekbgmxei@gmail.com', 'D02'),
('T043', '358400116765', 'Phan Thị Thu ', 'F013', 'K50', 'B13', 'FD06', 1000000, 'wbwblydd@gmail.com', NULL),
('T044', '634143933877', 'Phan Phúc Phúc ', 'F008', 'K07', 'C08', 'FD04', 800000, 'smqsjulq@gmail.com', NULL),
('T045', '640279162765', 'Phùng Huy Bảo ', 'F009', 'K20', 'C09', 'FD04', 800000, 'sayaydac@gmail.com', NULL),
('T046', '617968740893', 'Trần Ngọc Khang ', 'F004', 'K50', 'F05', 'FD09', 1200000, 'haxujogj@gmail.com', NULL),
('T047', '648221836433', 'Lê Văn Văn ', 'F030', 'K07', 'F30', 'FD08', 800000, 'apuqtyiu@gmail.com', NULL),
('T048', '283668925730', 'Vũ Tuấn Thu ', 'F025', 'K50', 'F25', 'FD10', 800000, 'hijiuath@gmail.com', NULL),
('T049', '992622086378', 'Thạch Bình Thuỳ ', 'F001', 'K50', 'E01', 'FD09', 800000, 'rzbqkllh@gmail.com', NULL),
('T050', '153579216535', 'Vũ Huy Thiên ', 'F009', 'K07', 'C10', 'FD04', 1500000, 'yamdhlxj@gmail.com', NULL)



CREATE TABLE LUGGAGE 
(
     LUGGAGE_CODE VARCHAR(10) PRIMARY KEY,
     MASS VARCHAR(5),
     PRICE  INT
)

INSERT INTO LUGGAGE  (LUGGAGE_CODE,MASS, PRICE) VALUES('K07','7kg',30000)
INSERT INTO LUGGAGE  (LUGGAGE_CODE,MASS, PRICE) VALUES('K10','10kg',30000)
INSERT INTO LUGGAGE  (LUGGAGE_CODE,MASS, PRICE) VALUES('K20','50kg',30000)

---SEAT TABLE
CREATE TABLE SEAT 
(
     SEAT_ID VARCHAR(10) PRIMARY KEY,
     SEAT_TYPE VARCHAR(20),
     PRIVILEGE_CODE VARCHAR(2),  
     FOREIGN KEY (PRIVILEGE_CODE) REFERENCES PRIVILEGE(PRIVILEGE_ID)
)

