/// Table Drawer
///
/// It has width, height,
/// starting color described by three int
///     (rgb channel 0-255)
/// and an end color described by three int
///
/// And have two functions.
///
/// String getCellColor(int x, int y)
///   return a string in 'rgb(int, int, int)' format
///
/// String getExcelCol(int)
///   return a string like this: 'ABC'
///
/// Calling:
///
/// TableDrawer(
///   width: int,
///   height: int,
///   startRed: int,
///   startGreen: int,
///   startBlue: int,
///   endRed: int,
///   endGreen: int,
///   endBlue: int
/// )
///
/// TableDrawer.getCellColor(int, int)
///   return String
///
/// TableDrawer.getExcelCol(int)
/// return String
///
class TableDrawer {
  TableDrawer({
    this.width,
    this.height,
    this.startRed,
    this.startGreen,
    this.startBlue,
    this.endRed,
    this.endGreen,
    this.endBlue,
  });

  int width;
  int height;
  int startRed = 255;
  int startGreen = 255;
  int startBlue = 255;
  int endRed = 255;
  int endGreen = 0;
  int endBlue = 0;

  String getCellColor(int x, int y) {
    // average calculating from width position and height position
    var percent =
        (((x - 1) * 100) / (width - 1) + ((y - 1) * 100) / (height - 1)) / 2;

    var red = startRed - (((startRed - endRed) / 100) * percent).round();
    var green =
        startGreen - (((startGreen - endGreen) / 100) * percent).round();
    var blue = startBlue - (((startBlue - endBlue) / 100) * percent).round();

    return 'rgb($red, $green, $blue)';
  }

  String getExcelCol(numOfCol) {
    var excelStyle = '';
    var plus = 0;
    if (numOfCol % 26 == 0 && numOfCol > 0) {
      // correction - it's give 'A@' at 26, but it should be Z
      // this will break on int that bigger than 676, but just works fine to 100
      numOfCol--;
      plus = 1;
    }
    String technical = numOfCol.toRadixString(26);
    technical.runes.forEach((int ch) {
      var char = String.fromCharCode(ch);
      excelStyle += String.fromCharCode(int.parse(char, radix: 26) + 64 + plus);
    });
    return excelStyle;
  }

  @override
  String toString() => '''
  TableDrawer:
    width: ${width}
    height: ${height}
    startRed: ${startRed}
    startGreen: ${startGreen}
    startBlue: ${startBlue}
    endRed: ${endRed}
    endGreen: ${endGreen}
    endBlue: ${endBlue}
  ''';
}
