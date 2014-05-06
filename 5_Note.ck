public class Note extends Chord {
    
    
    
    fun static Note midi(int i){
        Note n;
        n.addPitch(i);
        return n;
    }
    
    fun static Note midi(int i, float d){
        Note n;
        d => n.duration;
        n.addPitch(i);
        return n;
    }
    
    fun static Note pitch(string s){
        
        SymTable pitchMap;
        pitchMap.newTable("string", "int") @=> pitchMap;
        
        ["C", "C#", "Db", "D", "D#", "Eb", "E", "F", "F#", "Gb", "G", "G#", "Ab", "A", "A#", "Bb", "B"] @=> string noteNames[];
        ["0", "1", "2", "3", "4", "5", "6", "7",  "8"] @=> string octaves[];
        
        for(0 => int i; i < octaves.size(); i++) {
            -1 => int offset;
            for(0 => int j; j < noteNames.size(); j++) {
                if(noteNames[j].length() == 2 && !(noteNames[j].substring(1, 1) == "b") ) offset++;
                pitchMap.put(noteNames[j] + octaves[i], (i+1)*12 + offset); 
            }
        }
        
        Note n;
        if(!pitchMap.contains(s)) return null;
        n.addPitch(pitchMap.getInt(s)); //will change once above implemented
        return n;
    }
    
    fun static Note pitch(string s, float d){
        
        SymTable pitchMap;
        pitchMap.newTable("string", "int") @=> pitchMap;
        
        ["C", "C#", "Db", "D", "D#", "Eb", "E", "F", "F#", "Gb", "G", "G#", "Ab", "A", "A#", "Bb", "B"] @=> string noteNames[];
        ["0", "1", "2", "3", "4", "5", "6", "7",  "8"] @=> string octaves[];
        
        for(0 => int i; i < octaves.size(); i++) {
            -1 => int offset;
            for(0 => int j; j < noteNames.size(); j++) {
                if(noteNames[j].length() == 2 && !(noteNames[j].substring(1, 1) == "b") ) offset++;
                pitchMap.put(noteNames[j] + octaves[i], (i+1)*12 + offset); 
            }
        }
        
        Note n;
        d => n.duration;
        if(!pitchMap.contains(s)) return null;
        n.addPitch(pitchMap.getInt(s)); //will change once above implemented
        return n;
    }
}