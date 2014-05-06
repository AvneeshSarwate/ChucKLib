public class Part {
    
    List lis;
    lis.newList("Object") @=> lis;
    .5::second => dur quarter;
    
    //push pop enqueue dequeue get set insert remove
    fun int size() {return lis.size();}
    fun void push(Voice v){ lis.push(v);}
    fun Voice pop() { return (lis.popObj() $ Voice);}
    fun void enqueue(Voice v) { lis.enqueue(v);}
    fun Voice dequeue(Voice v) { return (lis.dequeueObj() $ Voice);}
    fun void set(int i, Voice v) { lis.set(i, v);}
    fun Voice get(int i) {<<<5, i>>>; return (lis.getObj(i) $ Voice);}
    fun void insert(int i, Voice v) { lis.insert(i, v);}
    fun Voice remove(int i) { return (lis.removeObj(i) $ Voice);}
    
    fun void play(dur d) {
        float maxF;
        <<<lis.size(), "SIZE">>>;
        for(0 => int i; i < lis.size(); i++) {
            <<<i>>>;
            if(get(i).duration > maxF) get(i).duration => maxF;
            spork~ get(i).play(d);
        }
        maxF * d => now;
    }
    
    fun void play() {
        play(quarter);
    }
    
    fun void playSeparate() {
        dur maxD;
        
        for(0 => int i; i < lis.size(); i++) {
            get(i).duration * get(i).quarter => dur vDur;
            if(vDur > maxD) vDur => maxD;
            spork~ get(i).play();
        }
        maxD => now;
    }   
}