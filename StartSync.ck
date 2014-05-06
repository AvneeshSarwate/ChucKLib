public class StartSync {
    
    class StartEvent extends Event {
        string startString;
    }
    
    static StartEvent @se;
    static int initialized;
    
    fun static void sendStartSignal(string s) {
        if(!initialized) {
            <<<"INIT">>>;
            1 => initialized;
            StartEvent st;
            st @=> se;
        }
        s @=> se.startString;
        se.broadcast();
    }
    
    //IS THIS EVEN NEEDED
    //Waits on the signal only the first time its called in the shred
    //used when you must wait for a start in a loop (WHY WOULD YOU)
    fun static void waitOnSignalOnce(string s) {
        if(!initialized) {
            <<<"INIT">>>;
            1 => initialized;
            StartEvent st;
            st @=> se;
        }
        se => now;
        while(se.startString != s) {
            se => now;
        }
    }
    
    fun static void waitOnSignal(string s) {
        if(!initialized) {
            <<<"INIT">>>;
            1 => initialized;
            StartEvent st;
            st @=> se;
        }
        <<<5555>>>;
        se => now;
        while(se.startString != s) {
            se => now;
        }     
    }
}