# ERD Perpustakaan

```mermaid
   erDiagram
    direction LR
    BUKU }o--o{ KATEGORI : " memiliki "
    BUKU }o--o{ PETUGAS : " dikelola "
    BUKU }o--|| TRANSAKSI : " dipinjam "
    BUKU {
        string id_buku PK
        string judul
        string isbn
        string penulis
        string penerbit
        int cetakan
        int halaman
        string sinopsis
        int tanggal_rilis
        string id_kategori FK
        string id_rak_buku FK
        string id_petugas FK
    }
    PEMINJAM {
        string id_peminjam PK
        string nama_peminjam
        int nomor_hp
        string alamat
    }
    TRANSAKSI ||--o{ PEMINJAM : " dipinjam "
    TRANSAKSI {
        string id_buku FK
        string id_peminjam FK
        int deadline
        boolean dikembalikan
        int tanggal_meminjam
    }
    PETUGAS {
        string id_petugas PK
        string nama_petugas
    }
    KATEGORI {
        string id_kategori PK
        string nama
    }
    RAK_BUKU ||--o{ BUKU : " menyimpan "
    RAK_BUKU {
        string id_rak_buku PK
        int kapasitas
        int no_rak
    }
    

```