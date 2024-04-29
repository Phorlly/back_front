class Contact {
  String name;
  String imageUrl;

  Contact({required this.name, required this.imageUrl});
}

List<Contact> contact() {
  return [
    Contact(name: "Anne", imageUrl: "assets/images/image6.webp"),
    Contact(name: "Kate", imageUrl: "assets/images/image7.webp"),
    Contact(name: "Edwards", imageUrl: "assets/images/image2.webp"),
    Contact(name: "Philip", imageUrl: "assets/images/image1.jpg"),
    Contact(name: "Mark", imageUrl: "assets/images/image5.webp"),
    Contact(name: "Scarlet", imageUrl: "assets/images/image8.webp"),
    Contact(name: "Gary", imageUrl: "assets/images/image9.webp"),
  ];
}
