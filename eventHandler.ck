class EventHandler {
    
    fun static int map(Event e, HandlerWrapper f) {
        spork~ handlerLoop(e, f) @=> Shred s;
        /*add {s, id} mapping to a symbol table 
        so it can be removed when a new function 
        is set as the handler*/
        return s.id();
    }
    
    fun static void handlerLoop(Event e, HandlerWrapper f) {
        while(true) {
            e => now;
            f.handlerFunction(e);
        }  
    }
}

class HandlerWrapper {
    
    //add objects to be passed to handler here
    //TYPE VARIABLE_NAME;
    //…
    
    
    fun void handlerFunction(Event e) {
        
        //cast e to your custom event type if needed
        
        //do stuff with the event 
        
        return;
    }
    
}







3434 => int a;
class PrintStuff extends HanlderWrapper {
    fun void handlerFunction(Event e) {<<<a>>>;}
}

Event e;

PrintStuff p;

EventHandler.map(e, p);

while(true){
    e.signal();
    .5::second=>now;   
}

/*think of different uses cases of when people would want
to use handlers, try to incorporate those features into 
this modue*/
