class Hero {
  static const int maxHp = 100;
  static const int maxMp = 100;
  static const int minHp = 0;
  static const int minMp = 0;

  int _hp = maxHp;
  int _mp = maxMp;
  final String name;

  Hero(this.name);

  int get hp => _hp;
  int get mp => _mp;

  set hp(int value) {
    if (value < minHp) {
      _hp = minHp;
    } else if (value > maxHp) {
      _hp = maxHp;
    } else {
      _hp = value;
    }
  }

  set mp(int value) {
    if (value < minMp) {
      _mp = minMp;
    } else if (value > maxMp) {
      _mp = maxMp;
    } else {
      _mp = value;
    }
  }
}
