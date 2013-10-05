/*
  TimerExample created a threaded JAVA timer which gets called on a specified interval.
  The cumulative normalized error (in milliseconds) between the desired interval and the
  actual execution time is calculated and can be queried using TimerScheduler.getCumulativeError().
  New timer interval can be set using TimerScheduler.setNewTimerInterbal(int newTimeInMillis), which
  also kicks the timer off and running.
  
  2013 Jordan Hochenbaum
*/

TimerScheduler clock; // Instance of the main Timer object

void setup() {
  size(200, 200);
  clock = new TimerScheduler(1000);  // Instantiate the Timer and set it to 1000ms
}

void draw() {
  background(255);
 // println(clock.getCumulativeError()); // get and print the cumulative error (will print at framerate)
}

void mousePressed() {
  clock.setNewTimerInterval(int(random(10000))); //when mouse is pressed, generate a new interval 
}

