class EventData {
  static List<List<DateTime>> days = [];

  static List<DateTime> returnEvent(DateTime date) {
    return days[date.month];
  }

  static void addToMonth(DateTime date) {
    days[date.month].add(date);
  }
}
