import 'package:objectbox/objectbox.dart';

@Entity()
class Worker {
  int? id;
  String name;

  final worker = ToOne<Worker>();
  Worker({
    this.id,
    required this.name,
  });
}
