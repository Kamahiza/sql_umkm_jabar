-- Tampilkan semua
SELECT * FROM umkm_jabar;

-- 2. Tunjukan data umkm di KOTA BANDUNG 
SELECT * FROM umkm_jabar WHERE nama_kabupaten_kota = "KOTA BANDUNG";

-- 3. Tunjukkan data dari tahun 2019 dan disusun berdasarkan kategori_usaha!	
SELECT * FROM umkm_jabar WHERE tahun >= 2019 ORDER BY kategori_usaha, tahun;  

-- 4. no 3 tapi dibatasi 10
SELECT * FROM umkm_jabar WHERE tahun >= 2019 ORDER BY kategori_usaha, tahun LIMIT 10;

-- 5. Kategori_usaha apa saja yang tersedia di dalam dataset?
SELECT DISTINCT kategori_usaha FROM umkm_jabar;

-- 6. Tunjukan seluruh data hanya kategori_usaha FASHION dan MAKANAN
SELECT * FROM umkm_jabar WHERE kategori_usaha IN ("FASHION","MAKANAN");
SELECT * FROM umkm_jabar WHERE kategori_usaha = "FASHION" OR kategori_usaha = "MAKANAN";

-- 7. Tunjukkan seluruh data dengan kategori_usaha FASHION di kabupaten karawang
SELECT * FROM umkm_jabar WHERE kategori_usaha = "FASHION" AND nama_kabupaten_kota = "KABUPATEN KARAWANG";

-- 8. Tunjukkan seluruh data selain kategori usaha kuliner, makanan dan minuman!
SELECT * FROM umkm_jabar WHERE kategori_usaha NOT IN ("KULINER","MAKANAN","MINUMAN");

-- 9. Dari tahun 2018 s.d. 2020, bagaimana tren jumlah umkm di kabupaten Tasikmalaya untuk kategori usaha Batik?
SELECT nama_kabupaten_kota, kategori_usaha, jumlah_umkm, satuan, tahun FROM umkm_jabar
WHERE tahun <= 2020 AND tahun >= 2018 AND nama_kabupaten_kota = "KABUPATEN TASIKMALAYA" AND kategori_usaha = "BATIK";

-- 10. Diantara kota Bandung, Kabupaten Bandung, Kabupaten bandung barat,
-- dimanakah umkm kuliner terpusat pada tahun 2021?
SELECT * FROM umkm_jabar WHERE nama_kabupaten_kota LIKE "&BANDUNG&" AND kategori_usaha = "KULINER"
AND tahun = 2021;

-- 11.kabupaten/ kota mana saja yang memiliki angka 7 pada digit 3 kode tersubut?
SELECT distinct kode_kabupaten_kota, nama_kabupaten_kota FROM umkm_jabar WHERE kode_kabupaten_kota LIKE "__7%";