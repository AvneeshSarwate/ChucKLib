public class Voice {
    
    List.newList("Object") @=> List lis;
    .5::second => dur quarter;
    
    fun int size(){return lis.size();}
    
    int instCode;
    StkInstrument instrs[10];
    MidiOut mout;
    0 => int midiChan;
    0 => int midiMode;
    0 => float duration;
    setInstrument(0);
    
    fun void setMidiDevice(int i, int chan) {
        if( !mout.open( 0 ) ) {
            <<< "MIDI DEVICE NOT CONNECTED ">>>;
            me.exit();
        }
        chan-1 => midiChan;
    }
    
    fun void midiModeOn() {1 => midiMode;}
    fun void midiModeOff() {0 => midiMode;}
    
    
    fun void clear(){ List.newList("Object") @=> lis;}
    
    //copy all list operations
    fun void push(Chord c){ 
        duration + c.duration => duration;
        lis.push(c);
    }
    fun Chord pop(){ 
        (lis.popObj() $ Chord) @=> Chord c;
        duration - c.duration => duration;
        return c;
    }
    fun void enqueue(Chord c){ 
        duration + c.duration => duration;
        lis.enqueue(Chord c);
    }
    fun Chord dequeue(){ 
        (lis.dequeueObj() $ Chord) @=> Chord c;
        duration - c.duration => duration;
        return c;
    }
    fun Chord insert(int i, Chord c){ 
        duration + c.duration => duration;
        lis.insert(i, c);
    }
    fun Chord remove(int i){ 
        (lis.removeObj(i) $ Chord) @=> Chord c;
        duration - c.duration => duration;
        return c;
    }
    fun void set(int i, Chord c){ 
        duration + c.duration => duration;
        duration - get(i).duration => duration;
        lis.set(i, c);
    }
    fun Chord get(int i){ return (lis.getObj(i) $ Chord);}
    
    fun void play(dur q) { //FIGURE OUT PARAMETERS
        Gain g => dac;
        
        //gain => g.gain;
        
        for(0=>int k; k < instrs.size(); k++) {
            instrs[k] => g;
        }         
        <<<"playing">>>;
        for(0 => int i; i < size(); i++){
            get(i) @=> Chord c;
            if(instrs.size() < c.length()) {
                instrs.size(c.length());
                for(0=>int k; k < instrs.size(); k++) {
                    instrs[k] => g;
                }
            }
            1.0 / c.length() => g.gain;
            <<<"preMiniPlay">>>;
            for(0 => int j; j < c.length(); j++) {
                <<<i, c.noteList.size()>>>;
                if(midiMode) spork~ midiPlay(c.noteList.getInt(j), c.duration*q);
                else spork~ miniPlay(instrs[j], c.noteList.getInt(j), c.duration*q);
            }
            c.duration*q=>now;
        }    
        for(0=>int k; k < instrs.size(); k++) {
            instrs[k] =< g;
        }      
        g =< dac;
    }
    
    fun void play() {
        play(quarter);
    }
    
    fun void play(int instInd, dur q) {
        setInstrument(instInd);
        play(q);
    }
    
    fun void play(int instInd) {
        setInstrument(instInd);
        play();
    }
    
    
    fun void setInstrument(int ind) {
        if(ind == 0){ 
            Mandolin inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 1){ 
            BandedWG inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 2){ 
            BlowBotl inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 3){ 
            BlowHole inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 4){ 
            Brass inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 5){ 
            Bowed inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 6){ 
            Clarinet inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 7){ 
            Flute inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 8){ 
            Moog inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 9){ 
            Saxofony inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 10){ 
            Shakers inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 11){ 
            Sitar inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 12){ 
            VoicForm inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 13){ 
            HevyMetl inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
        if(ind == 14){ 
            Rhodey inst[10];
            for(0 => int i; i < 10; i++) inst[i] @=> instrs[i];
        }
    }
    
    fun static void miniPlay(StkInstrument ins, int pitch, dur beat) {
        Std.mtof(pitch) => ins.freq;
        1 => ins.noteOn;
        beat - 10::ms => now;
        1 => ins.noteOff;
        10::ms => now;
    }
    
    fun void midiOn(int note, int chan){
        MidiMsg msg;
        144 + chan => msg.data1;
        note => msg.data2;
        100 => msg.data3;
        mout.send( msg );
    }
    
    fun void midiOff(int note, int chan){
        MidiMsg msg;
        128 + chan => msg.data1;
        note => msg.data2;
        100 => msg.data3;
        mout.send( msg );
    }
    
    fun void midiPlay(int pitch, dur beat) {
        midiOn(pitch, midiChan);
        beat - 10::ms => now;
        midiOff(pitch, midiChan);
        10::ms => now;
    }
    
    
    //keep track of biggest chord in list?
    0 => int mostVoice;
}
