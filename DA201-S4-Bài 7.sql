-- Bước 1: Thêm cột DepartmentName vào bảng Employees
ALTER TABLE Employees
ADD COLUMN DepartmentName VARCHAR(100);

-- Bước 2: Cập nhật tên bộ phận cho nhân viên (tùy ví dụ của em)
UPDATE Employees SET DepartmentName = 'Sales' WHERE EmployeeID = 3;
-- Nếu có thêm nhân viên khác thì thêm tương tự:
-- UPDATE Employees SET DepartmentName = 'Marketing' WHERE EmployeeID = 2;

-- Bước 3: Hiển thị tên bộ phận và số lượng nhân viên trong bộ phận
SELECT DepartmentName AS 'Tên bộ phận',
       COUNT(EmployeeID) AS 'Số lượng nhân viên'
FROM Employees
GROUP BY DepartmentName;

-- Bước 4: Hiển thị tên bộ phận và lương trung bình của bộ phận
SELECT DepartmentName AS 'Tên bộ phận',
       AVG(Salary) AS 'Lương trung bình'
FROM Employees
GROUP BY DepartmentName;

-- Bước 5: Chỉ hiển thị các bộ phận có lương trung bình > 5000
SELECT DepartmentName AS 'Tên bộ phận',
       AVG(Salary) AS 'Lương trung bình'
FROM Employees
GROUP BY DepartmentName
HAVING AVG(Salary) > 5000;