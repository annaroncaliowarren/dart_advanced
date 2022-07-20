import 'dart:isolate';

void main() async {
  print('Começando o app...');

  final receivePort = ReceivePort();
  await Isolate.spawn(workerIsolate, receivePort.sendPort);

  print('Fazendo');

  print(await receivePort.first);
}

void workerIsolate(SendPort sendPort) async {
  final resposta = await Future.delayed(
    Duration(seconds: 2),
    () => 'Saindo do app...',
  );

  Isolate.exit(sendPort, resposta);
}
