import java.util.TimerTask;

class TimerEvent extends TimerTask {

  int m_interval;              // the interval this event is called at. Used to normalize the difference
  int m_prevTimeInMillis = 0;  // stores the time of the last event in millis since program start
  int m_curTimeInMillis = 0;   // stores the time of the most recent event in millis since the program start
  int cumulativeError = 0; // stores the cumulative normalized error (currentTime - previousTime / interval)

  // The constructor
  public TimerEvent(int interval) {
    m_interval = interval; // sets the interval (only really used here to normalize the difference)
  }

  // This function is called by a thread automatically from TimerScheduler
  public void run() {

    //update current time
    m_curTimeInMillis = millis(); 

    //calculate normalized difference and store in cumulativeError
    cumulativeError += (m_curTimeInMillis - m_prevTimeInMillis) / m_interval;
    m_prevTimeInMillis = m_curTimeInMillis; //store current time in previous time
    
    println(cumulativeError); //print it out to view

  }
  
  // Returns the timertasks cumulative error
  public int getError() {
    return cumulativeError;
  }
}

