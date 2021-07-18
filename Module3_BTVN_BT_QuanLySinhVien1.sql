CREATE DATABASE student_managementbtvn1;
Use student_managementbtvn1;
create table tblSinhVien(
sv_Maso int primary key,
sv_Hodem varchar(30),
sv_Ten varchar(15),
sv_Ngaysinh int,
sv_Lop int,
sv_DiemTB int,
foreign key (sv_Lop) references tblLop(l_ID)
);
create table tblLop(
l_ID int primary key,
l_Ten varchar(20),
l_Khoa int,
foreign key(l_Khoa) references tblKhoa(k_ID)
);
create table tblKhoa(
k_ID int primary key,
k_Ten varchar(20)
);
Drop table tblSinhvien;
INSERT INTO tblSinhvien VALUES (1, 'Nguyen', 'Van A',30,1,33.3);
INSERT INTO tblSinhvien VALUES (2, 'Nguyễn', 'Văn B', 31,1,90.5);
INSERT INTO tblSinhvien VALUES (3, 'Nguyễn', 'Văn C', 30,2,95.8);
INSERT INTO tblSinhvien VALUES (4, 'Nguyễn', 'Văn D', 31,2,93.1);
/* Liệt kê list sinh viên*/
select * from tblSinhvien;
/* Liệt kê danh sách các sinh viên (họ tên viết liền)*/
/* Liệt kê danh sách sinh viên: Mã số, họ đệm, tên, tuổi*/
/* Liệt kê danh sách các lớp*/
select l_ID,l_Ten from tblLop;
/* Liệt kê danh sách các khoa*/
select * from tblKhoa;
/*Tìm những sinh viên thuộc khoa CNTT( CHƯA HIỂU)*/
select tblSinhvien.sv_Maso,tblSinhvien.sv_Hodem,tblSinhvien.sv_Ten,tblSinhvien.sv_Lop,tblKhoa.k_Ten 
from tblSinhvien
 inner join tblLop on tblSinhvien.sv_Lop = tblLop.l_ID
 inner join tblKhoa on tblLop.l_Khoa= tblKhoa.k_ID
 where k_Ten = 'cntt';


