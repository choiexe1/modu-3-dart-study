import 'package:test/test.dart';

import '../../../assignments/2025-03-13/cleric.dart';

void main() {
  test(
    '클레릭 인스턴스 생성 시 최대 HP와 최대 MP를 넘어가는 수치로 HP와 MP를 초기화하면 지정된 최대 값으로 초기화 되어야한다.',
    () {
      // GIVEN
      Cleric cleric = Cleric('A', 55, 51);

      // THEN
      expect(cleric.hp, equals(Cleric.maxHp));
      expect(cleric.mp, equals(Cleric.maxMp));
    },
  );
  test(
    '클레릭 인스턴스 생성 시 최대 HP와 최대 MP를 넘지 않는 수치로 HP와 MP를 초기화하면 해당 수치로 초기화 되어야한다.',
    () {
      // GIVEN
      Cleric cleric = Cleric('A', 40, 8);

      // THEN
      expect(cleric.hp, equals(40));
      expect(cleric.mp, equals(8));
    },
  );
}
