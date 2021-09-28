String? result;

void main() {
  returnError().then((value) {
    result = 'Success!';
  }).catchError((onError) {
    result = onError;
  }).whenComplete(() => print('Complete!'));
}

Future returnError() {
  throw ('Something terrible happend!');
}
