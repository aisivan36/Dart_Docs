void main() {
  printElement(13);
  list.forEach(printElement); //To print of each item

  anonymouse();
}

void printElement(int element) {
  print(element);
}

var list = [1, 2, 3];

void anonymouse() {
  const listArray = ['apples', 'bananas', 'orange'];
  listArray.forEach((items) {
    print('${listArray.indexOf(items)} :  $items');
  });
}


// isNoble(int oddNums) {
//   return _nobleGases[oddNums] != null;
// }
