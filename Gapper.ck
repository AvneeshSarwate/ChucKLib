/* If you’re doing massive computation without advancing time
this lets you pause your shred to let others execute so you
don’t block too long and cause problems*/

public class Gapper {     
    
    int stepLimit;
    int stepCounter;
    int staticStepLimit;
    time lastChecked;
    
    fun static Gapper newGapper(int limit /*int portNum */) {
        Gapper g;
        0 => g.stepCounter;
        limit => g.stepLimit;
        now => g.lastChecked;
        
        //spork thread that is listening for an OSC event
        //at address “/Gapper” on (127.0.0.1, portNum)
        //upon recieving an event with data of an int
        //it sets that int to be the new stepLimit
        
        return g;
    }
    
    //add this function at either start/end of any loop or recursive call
    //or more generally, any “block” of repeated computation
    fun void stepAndCheck() {
        stepCounter++;
        if(stepCounter == stepLimit) {
            me.yield();
            0 => stepCounter;
        }
    }
    /*you should put stepAndCheck at the end of a computation block.
    If you’re doing a computation that is some kind of optimization,
    you should call stepAndCheck and the end of a block, and right before that
    set whatever state you want so other threads can make use of your partial optimization
    EXAMPLE: you’re running a huge genetic algorithm to find a good melody.
    Before calling step and check, you should set the best melody so far to be accessible
    by other threads, and then you can go back to computing better melodies later.
    stepAndCheck lets you run “infinite” length optimizations  
    */
    
    
    fun void timeCheck(dur intvl) {
        if(now > lastChecked) {
            me.yield();
            now => lastChecked;
        }
    }
    
    fun static void updateStepLimit(int portNum, int limit){}
    //send limit as data in an OSC message to 
    //OSC address “/Gapper” at (127.0.0.1, portNum)
    //static, so it lets you update the limit of any Gapper
    //from outside its shred 
    
    
    
}
    
    