class Greetings {
  static String greetingMessage() {
    final timeNow = DateTime.now().hour;

    if (timeNow <= 12) {
      return 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 15)) {
      return 'Good Afternoon';
    } else if ((timeNow > 15) && (timeNow < 21)) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }
}
