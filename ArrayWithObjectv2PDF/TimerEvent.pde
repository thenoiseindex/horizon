import java.util.TimerTask;

class TimerEvent extends TimerTask {

  double m_interval;              // the interval this event is called at. Used to normalize the difference
  double m_prevTimeInMillis = 0;  // stores the time of the last event in millis since program start
  double m_curTimeInMillis = 0;   // stores the time of the most recent event in millis since the program start
  double cumulativeError = 0; // stores the cumulative normalized error (currentTime - previousTime / interval)

  // The constructor
  public TimerEvent(int interval) {
    m_interval = interval; // sets the interval (only really used here to normalize the difference)
  }

  // This function is called by a thread automatically from TimerScheduler
  public void run() {

    //update current time
    m_curTimeInMillis = millis(); 

    //calculate normalized difference and store in cumulativeError
    cumulativeError += (m_curTimeInMillis - m_prevTimeInMillis) / (m_interval*10000000);
    m_prevTimeInMillis = m_curTimeInMillis; //store current time in previous time
    
    //println(cumulativeError); //print it out to view
    draw_map(cumulativeError);
  }
  
  // Returns the timertasks cumulative error
  public double getError() {
    return cumulativeError;
  }
}

