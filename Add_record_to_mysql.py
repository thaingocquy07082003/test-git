import pymysql

# Kết nối đến cơ sở dữ liệu
connection = pymysql.connect(
    host='localhost',
    user='root',
    password='root',
    database='Training_RDBMS'
)

cursor = connection.cursor()

# Câu lệnh INSERT
sql = "INSERT INTO  users(fullname,username,haspassword) values('John smith','little boy','12345')"

# Lặp lại 100 lần
for i in range(100):
    cursor.execute(sql)

# Commit các thay đổi
connection.commit()

# Đóng kết nối
connection.close()