import 'package:f_data_crud/domain/entities/some_data.dart';
import 'package:loggy/loggy.dart';

class LocalDataSource {
  final List<SomeData> dataList = <SomeData>[];

  Future<void> addEntry(SomeData entry) async {
    entry.id = dataList.length;
    dataList.add(entry);
    logInfo("LocalDataSource -> addEntry -> ${entry.id}");
  }

  Future<List<SomeData>> getAll() async {
    return dataList;
  }

  Future<void> deleteAll() async {
    dataList.clear();
  }

  Future<void> deleteEntry(SomeData entry) async {
    dataList.remove(entry);
  }

  Future<void> updateEntry(SomeData entry) async {
    final index = dataList.indexWhere((item) => item.id == entry.id);
    dataList[index] = entry;
  }
}
