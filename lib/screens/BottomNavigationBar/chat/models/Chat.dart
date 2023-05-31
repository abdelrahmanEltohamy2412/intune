class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Dr.Ahmed Ali",
    lastMessage: "Hope you are doing well...",
    image: "lib/assets/images/man.png",
    time: "3m ago",
    isActive: false,
  ),
];
