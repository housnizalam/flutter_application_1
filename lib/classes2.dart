class Lamp {
  // the index of ampel stats
  var indexOfLampeStates;
  Lamp(this.indexOfLampeStates);
  // Actuall state
  String actuellLampState = "";
  List lampeStates = ["red", "redYellow", "green", "yellow"];

  void click() {
    // there is just 4 states
    if (indexOfLampeStates > 3) {
      indexOfLampeStates = 0;
    }
    actuellLampState = lampeStates[indexOfLampeStates];
    // getting the next state
    indexOfLampeStates++;
  }
}
