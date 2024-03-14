# TP1PROVIS
Kode program merupakan contoh implementasi sederhana dari sistem pembelian tiket secara online.
## OOP
* Kelas 'Ticket', 'Event', 'Order', dan 'User' merupakan implementasi dari konsep kelas dalam OOP
* Kelas 'Ticket' : Merepresentasikan tiket yang terkait dengan sebuah event. Atribut dari kelas ini adalah idTicket, eventName, ticketType, date, price, dan availableQuantity.
* Kelas 'Event' : Merepresentasikan sebuah event atau acara. Atribut dari kelas ini adalah id, name, locationEvent, dan daftar tiket yang tersedia.
* Kelas 'User' : Merepresentasikan seorang pengguna yang memesan tiket. Atribut kelas ini adalah id, name, dan list order user.
* Kelas Order : Merepresentasikan sebuah pesanan yang dibuat oleh pengguna untuk membeli tiket. Atribut dari kelas ini adalah id, username, emailAdress, list ticket, dan totalAmount.
### Konstruktor
* Setiap kelas memiliki konstruktor yang digunakan untuk membuat objek baru dari kelas tersebut. konstruktor digunakan untuk menginisialisasi properti-properti objek saat pembuatan objek.
## Asyncronus
* Fungsi getAvailableEvents() merupakan sebuah fungsi asinkron yang mensimulasikan pemanggilan ke server atau basis data untuk mendapatkan daftar event yang tersedia. Fungsi ini menunda eksekusi selama 2 detik dengan menggunakan 'await Future.delayed(Duration(seconds: 2))' untuk mensimulasikan operasi asinkron.
