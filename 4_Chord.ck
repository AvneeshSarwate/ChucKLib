public class Chord {
    
    float duration;
    .25 => duration;
    List noteList;
    noteList.newList("int") @=> noteList;
    
    
    fun int length(){ return noteList.size();}
    
    
    fun static Chord newChord(int lis[], float durat) {
        Chord c;
        durat => c.duration;
        for(0 => int i; i < lis.size(); i++){
            c.addPitch(lis[i]);
        }
        c.cleanNoteList(); //sort and remove duplicates
        return c;
    }
    
    fun static Chord newChord(float durat) {
        Chord c;
        durat => c.duration;
        return c;
    }
    
    fun static Chord newChord(int lis[]) {
        Chord c;
        for(0 => int i; i < lis.size(); i++){
            c.addPitch(lis[i]);
        }
        c.cleanNoteList(); //sort and remove duplicates
        return c;
    } 
    
    fun static Chord newChord() {
        Chord c;
        return c;
    }
    
    
    fun void cleanNoteList(){
        if(noteList.size() < 2) return;
        <<<"presort">>>;
        noteList.sort();
        return;
        for(1 => int i; i < noteList.size(); i++) {
            if(noteList.getInt(i) == noteList.getInt(i-1)){
                noteList.removeInt(i);
                i-1 => i;
            }
        }
    }
    
    fun void addPitch(int p){
        noteList.push(p);
        cleanNoteList();
    } 
    
    fun void removePitch(int p){
        for(0 => int i; i < noteList.size(); i++) {
            if(noteList.getInt(i) == p){
                noteList.removeInt(i);
                i-1 => i;
            }
        }
        cleanNoteList();
    }
    
    //fun void play
}
