import 'dart:async';

// 1. Model class with Null Safety
class OrderData {
  final int orderId;
  final String customerName;
  final String? deliveryAddress; // Nullable field
  final String? deliveryNotes;   // Nullable field

  OrderData({
    required this.orderId,
    required this.customerName,
    this.deliveryAddress,
    this.deliveryNotes,
  });

  // Factory constructor safely parsing mock API data
  factory OrderData.fromJson(Map<String, dynamic> json) {
    return OrderData(
      orderId: json['orderId'] as int,
      customerName: json['customerName'] as String,
      deliveryAddress: json['deliveryAddress'] as String?,
      deliveryNotes: json['deliveryNotes'] as String?,
    );
  }

  void displayOrder() {
    // Null safety: handling null values with fallback operators (??)
    print("📦 Order ID: $orderId");
    print("👤 Customer: $customerName");
    print("📍 Address: ${deliveryAddress ?? 'Address Not Provided'}");
    print("📝 Notes: ${deliveryNotes ?? 'No special instructions'}");
  }
}

// 2. Mock API Service simulating Future, async/await, delays, and errors
Future<Map<String, dynamic>> fetchMockOrderApi(int orderId) async {
  print("\n--- Connecting to Delivery Server for Order #$orderId ---");
  await Future.delayed(const Duration(seconds: 1)); // Simulating network latency

  switch (orderId) {
    case 101:
      // Case 1: Complete success payload
      return {
        "orderId": 101,
        "customerName": "Mahesh",
        "deliveryAddress": "Flat 402, Gokuldham Society",
        "deliveryNotes": "Leave at door",
      };

    case 102:
      // Case 2: Success payload with null fields
      return {
        "orderId": 102,
        "customerName": "Aman",
        "deliveryAddress": null, // Null value
        "deliveryNotes": null,   // Null value
      };

    case 404:
      // Case 3: Simulating a 404 Not Found error
      throw TimeoutException("Order #404 not found on server.");

    default:
      // Case 4: Generic server failure
      throw Exception("500 Server Error: Network connection failed.");
  }
}

// 3. Fetcher function handling try, catch, finally, and null cases
Future<void> processDelivery(int orderId) async {
  try {
    print("Fetching order data...");
    final rawData = await fetchMockOrderApi(orderId);
    
    // Parsing data safely
    OrderData order = OrderData.fromJson(rawData);
    order.displayOrder();
  } on TimeoutException catch (e) {
    print("⚠️ Timeout/NotFound Error: ${e.message}");
  } catch (error) {
    print("❌ Something went wrong while fetching Order #$orderId: $error");
  } finally {
    print("Delivery check cycle finished for Order #$orderId.");
  }
}

// 4. Bonus: Stream (over / deliveries)
Stream<int> runBanaye() async* {
  for (int i = 1; i <= 6; i++) {
    await Future.delayed(const Duration(milliseconds: 500));
    yield i;
  }
}

// 5. Single Entry Point
Future<void> main() async {
  // Test Case 1: Complete data
  await processDelivery(101);

  // Test Case 2: Data with null values
  await processDelivery(102);

  // Test Case 3: 404 Error handling
  await processDelivery(404);

  // Test Case 4: Server exception handling
  await processDelivery(999);

  // Testing the Stream
  print("\n--- Match Over Runs (Stream Demo) ---");
  await for (int ball in runBanaye()) {
    print("Ball $ball: Run Scored!");
  }
}