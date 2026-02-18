// *** PRACTICAL USAGE OF RECORDS ***

void main() {
  DateTime postAssignedDate = DateTime(2025, 12, 1); // getting post assigned date.
  print("Job assigned date: $postAssignedDate");

  // sending post assigned date to method to get differences in days and hours.
  var postPeriod = postAssignedTimeTillNow(postAssignedDate);
  print("\nTimeperiod of Job:");
  print("Days: ${postPeriod.$1}   Hours: ${postPeriod.$2}"); // fetched input through positions.
}

// method to calculate time after job assigned, uses a Record (int, int) to return two separate values at once.
(int, int) postAssignedTimeTillNow(DateTime assignedDate) {
  DateTime currentTime = DateTime.now(); // getting current time to create difference.

  int differenceInDays = currentTime.difference(assignedDate).inDays; // creating difference in days.
  int differenceInHours = currentTime.difference(assignedDate).inHours % 24; // calculating remaining hours after removing full days.

  return (differenceInDays, differenceInHours); // returning total time values.
}
