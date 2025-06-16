// import 'dart:convert';

// import 'package:crypto/crypto.dart';
// import 'package:logger/logger.dart';

// class LocalDBRepository {
//   final log = Logger();
//   final Database references;
//   final Database transactions;
//   final Database datacache;
//   final Database analytics;

//   LocalDBRepository({
//     required this.references,
//     required this.transactions,
//     required this.datacache,
//     required this.analytics,
//   });

//   Database getDatabase(String dbName) {
//     switch (dbName) {
//       case Constants.REFERENCES_DB:
//         return references;
//       case Constants.TRANSACTIONS_DB:
//         return transactions;
//       case Constants.DATACACHE_DB:
//         return datacache;
//       default:
//         return analytics;
//     }
//   }

//   Future<void> addData(String dbName, String storeName, String documentId,
//       Map<String, dynamic> data) async {
//     try {
//       log.d("localDBRepository:::addData: $dbName - $storeName}");

//       Database db = getDatabase(dbName);

//       var store = intMapStoreFactory.store(storeName);
//       int id = generateUniqueIntFromString(documentId);

//       // Upsert record and merge the map if it exists
//       await store.record(id).put(db, data, merge: true);

//       // // Check if a record with the given ID exists
//       // final existingRecord = await store.record(id).get(db);

//       // if (existingRecord != null) {
//       //   // Update the existing record
//       //   log.d("localDBRepository::Updating existing record with ID: $id");
//       //   await store.record(id).update(db, data);
//       // } else {
//       //   // Add a new record
//       //   log.d("localDBRepository::Adding new record with ID: $id");
//       //   await store.record(id).add(db, data);
//       // }
//     } catch (error) {
//       log.e("localDBRepository::AddData::Error:$error");
//     }
//   }

//   Future<void> putKVData(String dbName, String key, String value) async {
//     try {
//       log.d("localDBRepository:::putKVData: $dbName - $key - $value}");

//       Database db = getDatabase(dbName);
//       // Use the main store for storing key values as String
//       var store = StoreRef<String, String>.main();
//       //Writing records
//       await store.record(key).put(db, value);
//     } catch (error) {
//       log.e("localDBRepository::putKVData::Error:$error");
//     }
//   }

//   Future<String> getKVData(String dbName, String key) async {
//     String value = "";
//     try {
//       log.d("localDBRepository:::getKVData: $dbName");

//       Database db = getDatabase(dbName);
//       // Use the main store for storing key values as String
//       var store = StoreRef<String, String>.main();
//       //Writing records
//       String? value = await store.record(key).get(db);
//       log.d("localDBRepository:::Returning Data for $dbName - $key: $value");
//       return value ?? "";
//     } catch (error) {
//       log.e("localDBRepository::getKVData::Error:$error");
//     }

//     return value;
//   }

//   Future<Map<String, dynamic>?> getData(
//       String dbName, String storeName, String documentId) async {
//     try {
//       Database db = getDatabase(dbName);
//       log.d("localDBRepository:::In getData: $storeName ::: $documentId");
//       var store = intMapStoreFactory.store(storeName);
//       int id = generateUniqueIntFromString(documentId);
//       var record = await store.record(id).get(db);
//       if (record != null && record.isNotEmpty) {
//         //Send a copy of the Map instead of an immutable object
//         Map<String, dynamic> data = {};
//         data = Map<String, dynamic>.from(record);
//         return data;
//       }
//       return {};
//     } catch (error) {
//       log.e("localDBRepository::getData::Error:$error");
//       return {};
//     }
//   }

//   Future<List<Map<String, dynamic>>> getDataByFilter(
//       String dbName, String storeName, Filter filter) async {
//     try {
//       Database db = getDatabase(dbName);
//       log.d("localDBRepository:::In getDataByFilter: $storeName ::: $filter");
//       var store = intMapStoreFactory.store(storeName);
//       var finder = Finder(
//         filter: filter,
//       );
//       var data = await store.find(db, finder: finder);
//       return data.map((snapshot) => snapshot.value).toList();
//     } catch (error) {
//       log.e("localDBRepository::getDataByFilter::Error:$error");
//       return [];
//     }
//   }

//   Future<List<Map<String, dynamic>>> getAllData(
//       String dbName, String storeName) async {
//     try {
//       log.d("localDBRepository:::In getAllData: $storeName");
//       Database db = getDatabase(dbName);
//       var store = intMapStoreFactory.store(storeName);
//       var records = await store.find(db);
//       return records.map((snapshot) => snapshot.value).toList();
//     } catch (error) {
//       log.e("localDBRepository::getAllData::Error:$error");
//       return [];
//     }
//   }

//   Future<void> updateData(String dbName, String storeName, String documentId,
//       Map<String, dynamic> data) async {
//     try {
//       log.d("localDBRepository:::updateData: $storeName ::: $documentId");
//       Database db = getDatabase(dbName);
//       var store = intMapStoreFactory.store(storeName);
//       int id = generateUniqueIntFromString(documentId);
//       await store.record(id).update(db, data);
//     } catch (error) {
//       log.e("localDBRepository::updateData::Error:$error");
//     }
//   }

//   Future<void> removeData(
//       String dbName, String storeName, String documentId) async {
//     try {
//       log.d("localDBRepository:::removeData: $storeName ::: $documentId");
//       Database db = getDatabase(dbName);
//       var store = intMapStoreFactory.store(storeName);
//       int id = generateUniqueIntFromString(documentId);
//       log.d("localDBRepository:::removeData: $storeName :: $documentId :: $id");
//       await store.record(id).delete(db);
//     } catch (error) {
//       log.e("localDBRepository::removeData::Error:$error");
//     }
//   }

//   // Future<void> removeStore(String storeName) async {
//   //   var store = intMapStoreFactory.store(storeName);
//   //   log.d("localDBRepository:::In deleteStore: $storeName ");
//   //   await store.delete(localDB);
//   // }

//   Future<void> addOrUpdateKey(String dbName, String storeName,
//       String documentId, String key, dynamic value) async {
//     try {
//       log.d("localDBRepository:::addOrUpdateKey: $storeName ::: $documentId");
//       Database db = getDatabase(dbName);

//       var store = intMapStoreFactory.store(storeName);
//       int id = generateUniqueIntFromString(documentId);
//       var record = await store.record(id).get(db);
//       if (record != null) {
//         //record[key] = value;
//         await store.record(id).update(db, {key: value});
//       }
//     } catch (error) {
//       log.e("localDBRepository::addOrUpdateKey::Error:$error");
//     }
//   }

//   // Future<void> deleteKey(String storeName, String documentId, String key) async {
//   //   var store = intMapStoreFactory.store(storeName);
//   //   int id = generateUniqueIntFromString(documentId);
//   //   var record = await store.record(id).get(localDB);
//   //   if (record != null) {
//   //     record.remove(key);
//   //     await store.record(id).put(localDB, record);
//   //   }
//   // }

//   int generateUniqueIntFromString(String input) {
//     //log.d("localDBRepository:::In generateUniqueIntFromString - Input: $input");
//     var bytes = utf8.encode(input);
//     var digest = sha512.convert(bytes);
//     int uniqueInt = 0;
//     for (int i = 0; i < 4; i++) {
//       uniqueInt = (uniqueInt << 8) | digest.bytes[i];
//     }
//     //log.d("localDBRepository:::In generateUniqueIntFromString - Returning: $uniqueInt");
//     return uniqueInt;
//   }


// }
