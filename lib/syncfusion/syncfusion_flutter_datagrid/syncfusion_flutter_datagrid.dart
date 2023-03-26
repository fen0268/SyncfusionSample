import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// https://pub.dev/packages/syncfusion_flutter_datagrid
class SyncfusionFlutterDatagrid extends StatefulWidget {
  const SyncfusionFlutterDatagrid({super.key});

  @override
  State<SyncfusionFlutterDatagrid> createState() =>
      _SyncfusionFlutterDatagridState();
}

class _SyncfusionFlutterDatagridState extends State<SyncfusionFlutterDatagrid> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter DataGrid'),
      ),
      body: SfDataGrid(
        source: employeeDataSource,
        columnWidthMode: ColumnWidthMode.fill,
        columns: <GridColumn>[
          GridColumn(
            columnName: 'id',
            label: Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: const Text(
                'ID',
              ),
            ),
          ),
          GridColumn(
            columnName: 'name',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text('Name'),
            ),
          ),
          GridColumn(
            columnName: 'designation',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                'Designation',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            columnName: 'salary',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text('Salary'),
            ),
          ),
        ],
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(10001, 'James', 'Project Lead', 20000),
      Employee(10002, 'Kathryn', 'Manager', 30000),
      Employee(10003, 'Lara', 'Developer', 15000),
      Employee(10004, 'Michael', 'Designer', 15000),
      Employee(10005, 'Martin', 'Developer', 15000),
      Employee(10006, 'Newberry', 'Developer', 15000),
      Employee(10007, 'Balnc', 'Developer', 15000),
      Employee(10008, 'Perry', 'Developer', 15000),
      Employee(10009, 'Gable', 'Developer', 15000),
      Employee(10010, 'Grimes', 'Developer', 15000)
    ];
  }
}

class Employee {
  Employee(this.id, this.name, this.designation, this.salary);

  final int id;

  final String name;

  final String designation;

  final int salary;
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>(
          (e) => DataGridRow(
            cells: [
              DataGridCell<int>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(
                columnName: 'designation',
                value: e.designation,
              ),
              DataGridCell<int>(columnName: 'salary', value: e.salary),
            ],
          ),
        )
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: Text(e.value.toString()),
        );
      }).toList(),
    );
  }
}
