void main() {
  int? lineCount;
  assert(lineCount == null);

  if (weLikeToCount) {
    lineCount = countLines();
  } else {
    lineCount = 0;
  }

  print(lineCount);
}
