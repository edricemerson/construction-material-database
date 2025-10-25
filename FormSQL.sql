-- Tabel Pekerjaan
CREATE TABLE Pekerjaan (
    ID_Pekerjaan INT PRIMARY KEY,
    Pemilik_Proyek VARCHAR(100),
    Proyek VARCHAR(100),
    Paket_Pekerjaan VARCHAR(50),
    No_Pengajuan VARCHAR(20),
    Nama_Kontraktor VARCHAR(100),
    Tanggal_Pengajuan DATE,
    Kode_Material VARCHAR(20),
    Lokasi VARCHAR(50)
);

-- Tabel Material
CREATE TABLE Material (
    Kode_Material VARCHAR(20) PRIMARY KEY,
    Nama_Bahan VARCHAR(100),
    Nama_Supplier VARCHAR(100),
    Spesifikasi_Produk VARCHAR(50),
    Spesifikasi_Tipe VARCHAR(50),
    Spesifikasi_Kode VARCHAR(20)
);

-- Tabel Lampiran
CREATE TABLE Lampiran (
    ID_Pekerjaan INT PRIMARY KEY,
    Lampiran_Contoh VARCHAR(10),
    Lampiran_Brosur VARCHAR(10),
    Lampiran_Hasil_Test VARCHAR(10),
    FOREIGN KEY (ID_Pekerjaan) REFERENCES Pekerjaan(ID_Pekerjaan)
);

-- Data ke tabel Pekerjaan
INSERT INTO Pekerjaan VALUES
(1, 'Budi Susanto', 'Pembangunan Gedung A', 'Struktur Lantai', '001/PK/A', 'PT Konstruksi Jaya', '2024-12-11', 'Beton_001', 'Ruang: Lantai 1'),
(2, 'Bambang Sudono', 'Renovasi Kantor Sudirman', 'Interior', '002/PK/C', 'PT Interior Maju', '2024-12-12', 'MDF_002', 'Ruang: Meeting'),
(3, 'Bayu Alfari', 'Pembangunan Mall', 'Struktur Atap', '003/PK/C', 'PT Baja Indonesia', '2024-12-13', 'Baja_003', 'Ruang: Basement'),
(4, 'Asep Budiman', 'Pembangunan Kompleks', 'Tembok', '004/PK/D', 'PT Rumah Idaman', '2024-12-14', 'Bata_004', 'Ruang: Kamar'),
(5, 'Jojo Widodo', 'Jembatan Layang', 'Struktur', '005/PK/E', 'PT Infrastruktur Abadi', '2024-12-15', 'Aspal_005', 'Ruang: Jalan Raya');

-- Data ke tabel Material
INSERT INTO Material VALUES
('Beton_001', 'Beton Pracetak', 'PT Beton Emas', 'Beton', 'K-300', 'BTK300'),
('MDF_002', 'Papan MDF', 'PT Kayu Lestari', 'MDF', 'Premium', 'MDF400'),
('Baja_003', 'Baja WF', 'PT Baja Prima', 'Baja', '100m', 'BAJA300'),
('Bata_004', 'Bata Putih', 'PT Bata Indah', 'Bata', 'Putih', 'BT100'),
('Aspal_005', 'Aspal Polimer', 'PT Aspal Mulia', 'Aspal', 'Polimer', 'ASP600');

-- Data ke tabel Lampiran
INSERT INTO Lampiran VALUES
(1, 'Ada', 'Ada', 'Ada'),
(2, 'Tidak ada', 'Tidak ada', 'Ada'),
(3, 'Ada', 'Tidak ada', 'Tidak ada'),
(4, 'Tidak ada', 'Ada', 'Tidak ada'),
(5, 'Ada', 'Tidak ada', 'Tidak ada');

-- Insert to Table
SELECT 
    P.ID_Pekerjaan, P.Pemilik_Proyek, P.Proyek, P.Paket_Pekerjaan, 
    P.No_Pengajuan, P.Nama_Kontraktor, P.Tanggal_Pengajuan, 
    M.Nama_Bahan, M.Nama_Supplier, M.Spesifikasi_Produk
FROM 
    Pekerjaan P
JOIN 
    Material M ON P.Kode_Material = M.Kode_Material;

SELECT 
    L.ID_Pekerjaan, P.Proyek, L.Lampiran_Contoh, L.Lampiran_Brosur, L.Lampiran_Hasil_Test
FROM 
    Lampiran L
JOIN 
    Pekerjaan P ON L.ID_Pekerjaan = P.ID_Pekerjaan
WHERE 
    L.Lampiran_Contoh = 'Ada' OR L.Lampiran_Brosur = 'Ada' OR L.Lampiran_Hasil_Test = 'Ada';

SELECT 
    * 
FROM 
    Pekerjaan
WHERE 
    Lokasi LIKE '%Lantai 1%';
