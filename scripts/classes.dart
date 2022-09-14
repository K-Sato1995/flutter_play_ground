class Monster {
  String name;
  int lifeExpectancy;

  // constructor
  Monster(this.name, this.lifeExpectancy);

  void intro() {
    print(this.name);
  }
}

final slime = Monster('Slime', 2);

void main() {
  slime.intro();
}
