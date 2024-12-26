use Training_RDBMS;

create table users(
	id int auto_increment primary key,
    fullname varchar(100),
    username varchar(50),
    password varchar(100)
);
-- đổi cột password thành haspassword
alter table users change password haspassword varchar(100);
-- Đổi độ dài haspassword từ 100 len 255 
alter table users MODIFY haspassword VARCHAR(255);
-- insert dữ liệu 
insert into users(fullname,username,haspassword) values('Htk','little boy','12345');
insert into users(fullname,username,haspassword) values('Hong kong atitue','little boy','12345');
insert into users(fullname,username,haspassword) values('Huong duong','little boy','12345');
--Lấy danh sách 100 users theo thứ tự fullname sắp xếp theo a-z
SELECT * FROM users ORDER BY fullname ASC LIMIT 100;
-- Lấy danh sách users có tên bắt đầu bằng chữ H.
SELECT * FROM users WHERE fullname LIKE 'H%';