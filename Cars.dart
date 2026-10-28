abstract class Tunable {
  void tune();
}

mixin NitroBoost {
  void nitro() => print("Nitro boost!");
}

class Car {
  String name;
  Car(this.name);
  void drive() => print("$name is driving");
}

class ToyotaAE86 extends Car implements Tunable {
  ToyotaAE86(super.name);
  @override
  void drive() => print("Toyota AE86 drifts the touge hairpin");
  @override
  void tune() {}
}

class GTRR34 extends Car with NitroBoost implements Tunable {
  GTRR34(super.name);
  @override
  void drive() => print("GTR R34 slides with ATTESA AWD");
  @override
  void tune() {}
}

class MazdaRX7 extends Car implements Tunable {
  MazdaRX7(super.name);
  @override
  void drive() => print("Mazda RX-7 rotary screams at redline");
  @override
  void tune() {}
}

class MitsubishiEvoIX extends Car with NitroBoost implements Tunable {
  MitsubishiEvoIX(super.name);
  @override
  void drive() => print("Mitsubishi Evo IX rips through rally dirt");
  @override
  void tune() {}
}

void main() {
  ToyotaAE86("AE86").drive();
  GTRR34("R34").drive();
  MazdaRX7("RX7").drive();
  MitsubishiEvoIX("Evo").drive();
}
