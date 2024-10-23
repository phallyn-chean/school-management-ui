class TaskModel {
  String? currentTime;
  String? remainingTime;
  String? title;
  String? subTitle;
  String? profileImage;
  String? name;
  String? id;
  String? location;
  String? room;

  TaskModel({
    this.id,
    this.name,
    this.title,
    this.location,
    this.subTitle,
    this.profileImage,
    this.currentTime,
    this.remainingTime,
    this.room,
  });
}

List<TaskModel> tasks = [
  TaskModel(
    currentTime: "07:00",
    remainingTime: "1 h 45 min",
    title: "Typography",
    subTitle: "The Basic of Typography I",
    profileImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDRlp-KGr_M94k_oor4Odjn2UzbAS7n1YoA&s",
    name: "Gabriel Sutton",
    id: "722-085-9210",
    location: "Faculty of Art & Design Building",
    room: "Room C1, 1st floor",
  ),
  TaskModel(
    currentTime: "09:30",
    remainingTime: "2 h",
    title: "Design Psychology",
    subTitle: "Principle of good design",
    profileImage: "https://media.istockphoto.com/id/1154642632/photo/close-up-portrait-of-brunette-woman.jpg?s=612x612&w=0&k=20&c=d8W_C2D-2rXlnkyl8EirpHGf-GpM62gBjpDoNryy98U=",
    name: "Gabriel Sutton",
    id: "722-085-9210",
    location: "Faculty of Art & Design Building",
    room: "Room C1, 1st floor",
  ),
  TaskModel(
    currentTime: "01:00",
    remainingTime: "1 h 45 min",
    title: "Typography",
    subTitle: "The Basic of Typography I",
    profileImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDRlp-KGr_M94k_oor4Odjn2UzbAS7n1YoA&s",
    name: "Gabriel Sutton",
    id: "722-085-9210",
    location: "Faculty of Art & Design Building",
    room: "Room C1, 1st floor",
  ),
];
