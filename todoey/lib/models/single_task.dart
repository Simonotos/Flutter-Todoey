class SingleTask{
  String title;
  bool isChecked;

  SingleTask({required this.title, required this.isChecked});

  String getTitle() => title;
  bool getChecked() => isChecked;

  bool setChecked(bool value) => isChecked = value;
}