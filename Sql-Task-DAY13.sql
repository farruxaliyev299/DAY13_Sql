use NorthwindDB;

--A ile E arasında tek bir karakter olanlar
select FirstName
from Employees
where FirstName like '%A[a-z]E%'

--A ile E arasında iki tane karakter olanlar
select FirstName
from Employees
where FirstName like '%A[A-z][A-z]E%'

--Adının ilk harfi M olmayanlarAdının ilk harfi M olmayanlar
select FirstName
from Employees
where FirstName not like 'M%'

-- Adı T ile bitmeyenler
select FirstName
from Employees
where FirstName not like '%T'

-- Adının ilk harfi A ile I aralığında bulunmayanlar
select FirstName
from Employees
where FirstName not like '[A-I]%'

-- Adının 2. harfi A veya T olmayanlar
select FirstName
from Employees
where substring(FirstName,2,1) != 'A' and substring(FirstName,2,1) != 'T'

-- Adının ilk iki harfi LA, LN, AA veya AN olanlar
select FirstName
from Employees
where substring(FirstName,1,2) in ('La','Ln','Aa','An')

-- Adının içerisinde _ geçen isimleri listeleyiniz
select FirstName
from Employees
where FirstName like '%[_]%'