// *** PRACTICAL USAGE OF RECORDS ***

void main() {
  DateTime postRetirementDate = DateTime(2026, 02, 1); // getting post retirement date.
  print("Job retirement date: $postRetirementDate");

  // sending post retirment date to method to get differences in days and hours.
  var (daysInRetirement, hoursInRetirement) = retirementTimeFromNow(postRetirementDate);
  print("\nJob retirment time left:");
  print("Days: ${daysInRetirement}   Hours: ${hoursInRetirement}"); // fetched input through names.
}

// method to calculate total time before the retirement.
(int, int) retirementTimeFromNow(DateTime retirementDate) {
  DateTime currentTime = DateTime.now(); // getting current time to create difference.

  int differenceInDays = retirementDate.difference(currentTime).inDays; // creating difference in days.
  int differenceInHours = retirementDate.difference(currentTime).inHours % 24; // calculating remaining hours after removing full days.

  return (differenceInDays, differenceInHours); // returning total time values.
}
