
//defines the C minor pentatonic scale
[55, 58, 60, 63, 65, 67, 70, 72, 75, 79] @=> int cMinPent[];

//defines a rhythm
[.25, .125, .125, .125, .125, .125, .375, .125, .125, .25, .25] @=> float rhy1[];

//defines another rhythm
[.375, .375, .375, .375, .25, .25] @=> float rhy2[];

//a variable to store the index of the wanted pitch
int pitchInd;

//a variable to store the wanted rhythm
float rh[];

Voice v;

//waits till the chord progression is back to the beginning
StartSync.waitOnSignal("chords");

while(true) {
    
    //randomly picks a rhythm
    if(Math.randomf() > .5) rhy1 @=> rh;
    else rhy2 @=> rh;
    
    for(0 @=> int i; i < rh.size(); i++) {
        
        //performs a random walk to select the pitches of the melody
        pitchInd + Math.random2(-3, 3) => pitchInd;
        Math.abs(pitchInd % cMinPent.size()) @=> pitchInd;
        
        //adds the Notes to the voice
        v.push(Note.midi(cMinPent[pitchInd], rh[i]));
    }
    
    //plays the voice
    v.play(5, 1.7::second);
    
    //clears the voice to get ready for the next random melody
    v.clear();
}
        
    
    
    
    
    

