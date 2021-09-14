void main() {
  var gifts = {'first': 'dunno!'};
  gifts['second'] = 'yes it is'; // add a key-value pair just like in javascript
  assert(gifts['first'] == null);
  print(gifts);
}
