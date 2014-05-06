Chord c[9];

//creates a set of chords
Chord.newChord([60, 63, 67], .125) @=> c[0];
Chord.newChord([63, 67, 70], .25) @=> c[1];
Chord.newChord([60, 63, 67], .25) @=> c[2];
Chord.newChord([60, 63, 70], .25) @=> c[3];
Chord.newChord([63, 67, 72], .25) @=> c[4];
Chord.newChord([60, 65, 74], .25) @=> c[5];
Chord.newChord([60, 63, 67], .125) @=> c[6];
Chord.newChord([58, 62, 65], .25) @=> c[7];
Chord.newChord([60, 63, 67], .25) @=> c[8];

Voice v;

//adds chords to the voice
for(0 @=> int i; i < 9; i++){
    v.push(c[i]);   
}

//plays the chord progression over and over
while(true) {
    
    //signals the start of the chord progression
    StartSync.sendStartSignal("chords");
    v.play(5, 1.7::second);
}