class Ampel {
  String zustand = "red";

  void anschalten() {
    if (zustand == "red") {
      zustand = "redYellow";
    } else if (zustand == "redYellow") {
      zustand = "green";
    } else if (zustand == "green") {
      zustand = "yellow";
    } else if (zustand == "yellow") {
      zustand = "red";
    }
    print(zustand);
  }

  List<bool> getLampen() {
    List<bool> lampen = [];
    if (zustand == "red") {
      lampen = [true, false, false];
    } else if (zustand == "redYellow") {
      lampen = [true, true, false];
    } else if (zustand == "green") {
      lampen = [false, false, true];
    } else if (zustand == "yellow") {
      lampen = [false, true, false];
    }

    return lampen;
  }
}
