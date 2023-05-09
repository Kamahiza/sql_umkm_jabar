SELECT * FROM umkm_jabar;

-- 1. Berapa jumlah baris dari tabel umkm_jabar?
SELECT COUNT(*) AS jumlah_baris FROM umkm_jabar;

-- 2. Berapa jumlah umkm di kabupaten bekasi pada tahun 2017?
SELECT SUM(jumlah_umkm) AS jumlah_umkm_kab_bekasi_2017 FROM umkm_jabar 
WHERE nama_kabupaten_kota = "KOTA BEKASi" AND tahun = 2017;

-- 3. Bagaimana tren jumlah umkm di kabupaten karawang dari tahun 2017 s.d. 2021?
SELECT tahun, SUM(jumlah_umkm) AS tren_umkm_kab_karawang FROM umkm_jabar
group by tahun having tahun >= 2017 AND tahun <= 2021;

-- 4. Berapa jumlah rata rata umkm setiap kategori usaha per kabupaten/ kota di jawa barat pada tahun 2021?
SELECT tahun, AVG(jumlah_umkm) AS rata_rata_umkm, kategori_usaha FROM umkm_jabar WHERE tahun = 2021 group by kategori_usaha;

-- 5. Nilai minimum dan maksimum dari kolom jumlah umkm 
SELECT MIN(jumlah_umkm) AS nilai_terkecil_jumlah_umkm, max(jumlah_umkm) AS nilai_tertinggi_jumlah_umkm FROM umkm_jabar;

-- 6. kabupaten atau kota apa yang memiliki jumlah UMKM kurang dari 100.000 pada tahun 2020?
SELECT tahun, nama_kabupaten_kota, SUM(jumlah_umkm) AS jumlah_umkm_per_kota_kabupaten FROM umkm_jabar WHERE tahun = 2020 AND jumlah_umkm >= 100000 group by nama_kabupaten_kota;