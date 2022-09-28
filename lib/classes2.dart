class Lamp {
  var counter;
  Lamp(this.counter);
  String lampState = "red";
  List<bool> lamps = [];
  List lampsStates = ["red", "redYellow", "green", "yellow"];

  void click() {
    if (counter > 3) {
      counter = 0;
    }
    print(counter);
    lampState = lampsStates[counter];
    counter++;
    print(counter);
  }

  List<bool> getLight() {
    if (lampState == "red") {
      lamps = [true, false, false];
    } else if (lampState == "redYellow") {
      lamps = [true, true, false];
    } else if (lampState == "green") {
      lamps = [false, false, true];
    } else if (lampState == "yellow") {
      lamps = [false, true, false];
    }
    return lamps;
  }
}
