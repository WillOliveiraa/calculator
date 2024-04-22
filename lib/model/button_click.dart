abstract class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class BackSpaceButtonClick extends ButtonClick {
  BackSpaceButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}
