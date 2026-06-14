# Sales & Product Performance Analysis (Jan 2019 - Mei 2020)

Data ini berisi analisis performa penjualan bisnis retail atau e-commerce pada periode Januari 2019 - Mei 2020.

---

## 📌 1. Project Overview & Business Problem
Proyek ini bertujuan untuk menganalisis performa penjualan bisnis ritel/e-commerce selama periode Januari 2019 hingga Mei 2020. Analisis ini berfokus pada pelacakan tren pendapatan (*revenue growth*), identifikasi produk unggulan (*Top/Bottom Products*), serta kontribusi setiap kategori produk terhadap total bisnis. 

Hasil analisis ini diharapkan dapat membantu tim Manajemen, Marketing, dan Inventory dalam mengambil keputusan strategis berbasis data untuk periode berikutnya.

---

## 🛠️ 2. Data Preparation & Cleaning

Proses pengolahan data mentah dilakukan melalui beberapa tahapan berikut untuk memastikan validitas analisis:
1. **Data Cleaning:** Membersihkan data duplikat, menangani *missing values*, serta membuang data transaksi yang tidak valid/dibatalkan.
2. **Data Transformation:** Mengubah tipe data teks pada kolom tanggal menjadi format `Date` standar, serta menyamakan format penulisan nama produk.
3. **Data Aggregation:** Mengelompokkan total kuantitas (`QTY`) dan menghitung total pendapatan berdasarkan kategori produk dan periode bulanan sebelum dihubungkan ke alat visualisasi.
4. **Tools Used:** Python (Pandas/NumPy) / SQL untuk pengolahan data, dan Looker Studio / Tableau untuk pembuatan *dashboard* visual.

---

## 📈 3. Key Performance Indicators (KPI)
Berdasarkan data yang telah diolah, berikut adalah ringkasan performa bisnis makro selama periode analisis (17 bulan):

| Metrik KPI | Nilai | Deskripsi |
| :--- | :---: | :--- |
| **Total Revenue** | **Rp 148,9 M** | Total pendapatan kotor selama periode analisis. |
| **Total Transactions** | **74,9 rb** | Jumlah total order/transaksi yang berhasil diproses. |
| **Total Customers** | **17,9 rb** | Jumlah pelanggan unik (*unique buyers*) yang bertransaksi. |
| **Average Order Value (AOV)** | **Rp 2,0 jt** | Rata-rata nilai belanja per satu kali transaksi. |
| **Total Discount Given** | **Rp 1,2 M** | Total potongan harga yang diberikan kepada konsumen. |

---

## 🔍 4. Key Insights & Deep Dive Analysis

### A. Tren Pendapatan & Efek Musiman (*Seasonality*)
* **Pertumbuhan Eksponensial:** Tren pendapatan menunjukkan pertumbuhan yang masif dan mencapai puncaknya pada **Mei 2020** dengan pendapatan menyentuh **~Rp 31 Miliar**.
* **Anomali Awal Tahun (*Post-Holiday Slump*):** Terjadi penurunan tajam pada **Januari 2020 (~ -49%)**. Penurunan ini diidentifikasi sebagai efek musiman (*seasonality*) yang wajar pasca-liburan akhir tahun, di mana daya beli konsumen kembali ke level normal setelah melonjak di kuartal ke-4 (Q4).

### B. Analisis Kategori & Performa Produk
* **Kategori Dominan:** Kategori **Kebersihan Diri** merupakan *revenue driver* terbesar bagi bisnis, berkontribusi sebanyak **30,9%** dari total pendapatan, disusul oleh **Pakaian Pria (19,4%)** dan **Fresh Food (18,2%)**.
* **Kesenjangan Performa Produk (*Sales Gap*):** Distribusi penjualan belum merata. Terdapat gap yang sangat besar antara produk teratas dan terbawah:

#### 📊 Tabel Perbandingan Produk (Revenue vs Volume)

| Kategori Analisis | Top Performance | Bottom Performance |
| :--- | :--- | :--- |
| **Berdasarkan Revenue** | **Suplemen Kesehatan** (seperti *Blackmores*) mendominasi Top 5 Revenue.<br>• *Kontribusi:* **> Rp 1,1 M - Rp 1,5 M** per produk. | **Mi Instan** (seperti *Indomie & Sedaap*) berada di Bottom 5.<br>• *Kontribusi:* **< Rp 4,5 Juta** per produk. |
| **Berdasarkan Volume (QTY)** | **Pakaian & Kebutuhan Wanita** (seperti *Emba Short Pant* & *Laurier*).<br>• *Total Terjual:* **> 4.800 unit**. | *(Data volume penjualan terendah tidak signifikan)* |

---

## 💡 5. Business Recommendations

* **Strategi Antisipasi *Post-Holiday Slump*:** Tim Marketing disarankan membuat kampanye khusus di awal tahun (misalnya: *New Year Resolution Promo* atau diskon bundling khusus Januari) untuk menjaga stabilitas transaksi agar tidak merosot tajam pasca-Desember.
* **Optimalisasi Kategori Kebersihan Diri:** Meningkatkan ketersediaan stok (*inventory level*) dan memperluas variasi produk pada kategori Kebersihan Diri, karena kategori ini memiliki minat pasar (*market share*) tertinggi (**30,9%**).
* **Evaluasi *Bottom Products*:** Melakukan evaluasi mendalam terhadap produk mi instan dan barang-barang di kategori *Bottom 5*. Perlu dianalisis apakah marginnya terlalu kecil atau kalah bersaing secara harga, sehingga bisa diputuskan untuk retur ke *supplier* atau diberikan promo *bundling* dengan produk *Top Performance*.

