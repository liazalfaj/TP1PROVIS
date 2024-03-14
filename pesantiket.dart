import 'dart:async';

// Kelas Tiket
class Ticket {
  String id;
  String eventName;
  String ticketType;
  DateTime date;
  int price;
  int availableQuantity;

  Ticket(this.id, this.eventName, this.ticketType, this.date, this.price, this.availableQuantity);
}

// Kelas Event
class Event {
  String id;
  String name;
  String locationEvent;
  List<Ticket> tickets;

  Event(this.id, this.name, this.locationEvent, this.tickets);
}

// Kelas Order
class Order {
  String id;
  String userName;
	String emailAddress;
  List<Ticket> tickets;
  DateTime orderDate;
  int totalAmount;

  Order(this.id, this.userName, this.emailAddress, this.tickets, this.orderDate, this.totalAmount);
}

// Kelas User
class User {
  String id;
  String name;
  List<Order> orders;

  User(this.id, this.name, this.orders);
}

// Fungsi asinkron untuk mendapatkan daftar event yang tersedia
Future<List<Event>> getAvailableEvents() async {
  // Simulasi pemanggilan ke server atau basis data
  await Future.delayed(
      Duration(seconds: 2)); // Delay 2 detik untuk simulasi proses asinkron

  // Data event yang tersedia
  List<Event> availableEvents = [
    Event('1', 'NCT NATION', 'Gelora Bung Karno', [
      Ticket('1', 'NCT NATION', 'VIP', DateTime(2024, 3, 20, 19, 0), 1200000, 150),
      Ticket('2', 'NCT NATION', 'Regular', DateTime(2024, 3, 20, 19, 0), 3500000, 200),
    ]),
    Event('2', 'SYNK : Hyper Link', 'ICE BSD', [
      Ticket('3', 'SYNK : Hyper Link', 'VIP', DateTime(2024, 3, 22, 15, 30), 900000, 180),
      Ticket('4', 'SYNK : Hyper Link', 'Regular', DateTime(2024, 3, 22, 15, 30), 2500000, 300),
    ]),
    Event('3', 'Nicole World Tour', 'Istora Senayan', [
      Ticket('5', 'Nicole World Tour', 'VIP', DateTime(2024, 3, 22, 15, 30), 1750000, 100),
      Ticket('6', 'Nicole World Tour', 'Festival', DateTime(2024, 3, 22, 15, 30), 750000, 80),
    ]),
  ];

  return availableEvents;
}

void main() async {
  // Mendapatkan daftar event yang tersedia
  List<Event> events = await getAvailableEvents();

  // Menampilkan daftar event yang tersedia
	print("+---------------------------------------------------+");
  print('|            Daftar Event yang Tersedia             |');
  print("+---------------------------------------------------+");
  for (var event in events) {
    print('| No ${event.id}. Nama Event: ${event.name}');
    print('|        Lokasi : ${event.locationEvent}');
    print('|        Tiket:');
    for (var ticket in event.tickets) {
      print('|               Nama Tiket: ${ticket.eventName}');
      print('|               Tipe Tiket: ${ticket.ticketType}');
      print('|               Tanggal: ${ticket.date}');
      print('|               Harga: Rp.${ticket.price},-');
      print('|               Jumlah Tersedia: ${ticket.availableQuantity}');
			print('+===================================================+');
    }
    print("+---------------------------------------------------+");
  }

  // Data pesanan user
  List<Order> userOrders = [
    Order('101', 'Shin Ryujin', 'ryujinshin@gmail.com', [events[0].tickets[0], events[2].tickets[1]], DateTime.now(), 1950000),
    Order('102', 'Lee Haechan', 'haechanlee@gmail.com', [events[1].tickets[0]], DateTime.now(), 900000),
  ];

  // Menampilkan data pesanan user beserta pembayarannya
  print('\nDATA PESANAN');
  for (var order in userOrders) {
    print('ID Pesanan: ${order.id}');
		print('Nama: ${order.userName}');
		print('Email: ${order.emailAddress}');
		print('Tanggal Pesanan: ${order.orderDate}');
    print('Tiket yang Dipesan:');
    for (var ticket in order.tickets) {
      print('                  ID Tiket: ${ticket.id}');
			print('                  Nama Tiket: ${ticket.eventName}');
			print('                  Tipe tiket : ${ticket.ticketType}');
			print('                  Harga: Rp.${ticket.price},-');
			print('');
    }
    print('Total Pembayaran: Rp.${order.totalAmount},-');
    print('');
  }
}
