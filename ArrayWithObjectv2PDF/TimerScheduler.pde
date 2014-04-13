import java.util.Timer;

/**
 * Uses java.util.Timer to schedule a task 
 * to execute at the specified interval
 */

class TimerScheduler {
  // The actual Java Timer and TimerEvent (TimerTask) to use
  Timer timer;
  TimerEvent timerEvent;

  // Constructor takes in the interval
  public TimerScheduler(int interval) {
    timer = new Timer(); // instantiate the time
    timerEvent = new TimerEvent(interval); // instantiate the timer event

    setNewTimerInterval(interval); // set new interval and start the timer
  }

  //Schedule the TimerEvent with 0 initial delay, and the specified
  //repeating interval. Also pass in interval to the TimerEvent
  public void setNewTimerInterval(int interval) {
    timerEvent.cancel(); //cancel current event
    timerEvent = new TimerEvent(interval); //create new timer event
    timer.scheduleAtFixedRate(timerEvent, 0, (int)interval); // schedule the event
    println("interval set to: " + interval + "ms" );
  }
  
  // Returns the timertasks cumulative error
  public double getCumulativeError() {
    return timerEvent.getError();
  }
}

