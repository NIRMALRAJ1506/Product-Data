create database Assessment8

use Assessment8

create table Products
(
PId nvarchar(50) primary key,
PName nvarchar(50) not null,
PPrice float not null,
MnfDate DateTime not null,
ExpDate DateTime not null
)

INSERT INTO Products VALUES('P00001','Laptop',45000.50,'12/12/2022','2/3/2026')

INSERT INTO Products VALUES('P00002', 'Mobile', 25000.75, '5/18/2023', '8/22/2027');

INSERT INTO Products VALUES('P00003', 'Tablet', 12000.25, '9/8/2024', '3/15/2028');

INSERT INTO Products VALUES('P00004', 'Camera', 3500.99, '7/3/2025', '11/11/2029');

INSERT INTO Products VALUES('P00005', 'Headphones', 1200.00, '2/14/2026', '6/9/2030');

INSERT INTO Products VALUES('P00006', 'Smartwatch', 8000.50, '11/30/2027', '4/20/2031');

INSERT INTO Products VALUES('P00007', 'Printer', 18000.75, '6/22/2028', '9/5/2032');

INSERT INTO Products VALUES('P00008', 'Desktop', 60000.25, '4/11/2029', '8/16/2033');

INSERT INTO Products VALUES('P00009', 'Projector', 3000.99, '10/5/2030', '1/30/2034');

INSERT INTO Products VALUES('P00010', 'External HDD', 2000.00, '8/17/2031', '12/12/2035');

select * from Products