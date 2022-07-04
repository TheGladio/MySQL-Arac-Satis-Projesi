-- Bütün Araç seçer
select * from Araç
-- Markası T ile başlayanları seçer
select * from Araç where Marka like 't%'
-- Markasında A harfi olanları seçer
select * from Araç where Marka like '%a%'
-- Markası r ve u arasındaki harflerle başlayanları seçer
select * from Araç where Marka like '[r,u]%'
-- Markası r ve u arasındaki harflerle başlamayanları seçer
select * from Araç where Marka not like '[r,u]%'
-- Modeli İ3 olanları seçer
select * from Araç where Model like 'İ3'
-- Modeli BAFFY olan Araçları seçer
select * from Araç where Model='Baffy'
-- Markası t ile başlayan 10 kayıt seçer
select Top 10 * from Araç where Marka like 't%'
-- Fiyatı 2000 ile 25000 arasındaki araçları seçer
select * from Araç where Fiyat between 2000 and 25000
-- Markası BMW Olanları seçer
select * from Araç where Marka='BMW'
-- Markası BMW olmayanları seçer
select * from Araç where not Marka='BMW'
select * from Araç where  Marka!='BMW'
-- Markası BMW fiyatı ise 1400000 olanları seçer
select * from Araç where Marka = 'BMW' and Fiyat = 1400000
-- Kamyon olup fiyatı 100 bin TL'nin altında olan araçları seçer
select * from Araç where [VASITA ID] = 2 and Fiyat < 100000
-- Araç tablosundaki veri sayısını döndürür
select count (*) from Araç
-- Araç tablosundaki fiyat toplamını döndürür
select SUM(Fiyat) from [Araç] 
-- Araç tablosundaki fiyat ortalamasını verir
select avg(Fiyat) from [Araç]
-- En pahalı Vasıtayı seçer
select Max(Fiyat) from [Araç]
-- Araç tablosuna YakitTUR adında bir kolon ekler
alter table Araç add YakitTUR nvarchar(15)
-- Araç tablosunda markası B harfi ile başlayan araçları Fiyatı azalıcak şeklinde 10 veri seçer
select Top 10 * from Araç where Marka like 'b%' order by Fiyat desc
-- Araç tablosunda Markası tekrar eden verileri tek kayıt olarak listeler
select distinct Marka from Araç
-- Müşteriler ve Satıcı tablosundaki verilerden farklı olanları seçer
select adres from Müşteriler union select adres from SATICI
-- Araç ve VasıtaTUR tablosunda fiyat ve Vasıta ID kolonlarında kesişen verileri seçer
select Fiyat from Araç intersect select [Vasıta ID] from VasıtaTUR
-- Araç tablosundaki Vasıta ID kolununu Araç Tipi adında seçer
select [VASITA ID] as 'Araç Tipi' from Araç 




