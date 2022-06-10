import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:object_box/objectbox.g.dart';

import 'models/worker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.instance;
  final store = await openStore();
  getIt.registerSingleton<Store>(store);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Worker> workers = [];
  final getIt = GetIt.instance;

  _addWorker({int? id}) {
    String name = '';
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              children: [
                TextField(
                  onChanged: (value) => name = value,
                )
              ],
            ),
            actions: [
              ElevatedButton(
                child: const Text('Adicionar'),
                onPressed: () async {
                  if (name.isNotEmpty) {
                    final box = getIt<Store>().box<Worker>();
                    final worker = Worker(name: name, id: 0);
                    if (id != null) {
                      worker.worker.targetId = id;
                    }

                    box.put(worker);
                  }
                },
              )
            ],
          );
        });
  }

  _reload() {
    _loadWorkers();
  }

  @override
  void initState() {
    super.initState();
    _loadWorkers();
  }

  _loadWorkers() async {
    final box = getIt<Store>().box<Worker>();
    workers = box.query().build().find();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: _addWorker, icon: const Icon(Icons.add)),
          IconButton(onPressed: _reload, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = workers[index];
                return ListTile(
                  leading: Text('${item.id ?? '0'}'),
                  title: Text(item.name),
                  subtitle:
                      Text(item.worker.target?.name ?? 'Trabalha sozinho'),
                  onTap: () {
                    _addWorker(id: item.id);
                  },
                );
              },
              childCount: workers.length,
            ),
          )
        ],
      ),
    );
  }
}
