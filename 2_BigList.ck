

public class List {
    
    FltList FltL;
    IntList IntL;
    StrList StrL;
    ObjList ObjL;
    
    int types[0];
    0 => int STRING =>types["string"];
    1=> int INT => types["int"];
    2=> int FLOAT => types["float"];
    3=> int OBJ => types["Object"]; 
    
    -1 => int elementType;
    
    null @=> Comparator c;
    
    fun static List newList(string typestr) {
        List lis;
        lis.types[typestr] => lis.elementType;
        return lis;
    }
    
    fun void sort(){
        if(elementType ==  FLOAT) FltL.sort();
        if(elementType ==  INT) IntL.sort();
        if(elementType ==  STRING) StrL.sort();
        if(elementType ==  OBJ) {
            if(c == null) {
                <<<" NO COMPARATOR SET ">>>;
                me.exit();
            }
            ObjL.sort();
        }
    }
    
    fun int size(){
        if(elementType ==  FLOAT) return FltL.getSize();
        if(elementType ==  INT) return IntL.getSize();
        if(elementType ==  STRING) return StrL.getSize();
        if(elementType ==  OBJ) return ObjL.getSize();
    }
    
    fun string getStr(int ind) {
        if(!(types["string"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH string elements ">>>;
            me.exit();
        }
        return StrL.get(ind); 
    }
    
    fun int getInt(int ind) {
        if(!(types["int"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH int elements ">>>;
            me.exit();
        }
        return IntL.get(ind); 
    }
    
    fun float getFlt(int ind) {
        if(!(types["float"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH float elements ">>>;
            me.exit();
        }
        return FltL.get(ind); 
    }
    
    fun Object getObj(int ind) {
        if(!(types["Object"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH Object elements ">>>;
            me.exit();
        }
        return ObjL.get(ind); 
    }
    
    fun string popStr(){
        if(!(types["string"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH string elements ">>>;
            me.exit();
        }
        return StrL.pop(); 
    }
    
    fun int popInt(){
        if(!(types["int"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH int elements ">>>;
            me.exit();
        }
        return IntL.pop(); 
    }
    
    fun float popFlt(){
        if(!(types["float"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH float elements ">>>;
            me.exit();
        }
        return FltL.pop(); 
    }
    
    fun Object popObj(){
        if(!(types["Object"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH Object elements ">>>;
            me.exit();
        }
        return ObjL.pop(); 
    }
    
    fun string dequeueStr(){
        if(!(types["string"] == elementType)) {
            <<<"WRONG DEQUEUE TYPE FOR LIST WITH string elements ">>>;
            me.exit();
        }
        return StrL.dequeue(); 
    }
    
    fun int dequeueInt(){
        if(!(types["int"] == elementType)) {
            <<<"WRONG DEQUEUE TYPE FOR LIST WITH int elements ">>>;
            me.exit();
        }
        return IntL.dequeue(); 
    }
    
    fun float dequeueFlt(){
        if(!(types["float"] == elementType)) {
            <<<"WRONG DEQUEUE TYPE FOR LIST WITH float elements ">>>;
            me.exit();
        }
        return FltL.dequeue(); 
    }
    
    fun Object dequeueObj(){
        if(!(types["Object"] == elementType)) {
            <<<"WRONG DEQUEUE TYPE FOR LIST WITH Object elements ">>>;
            me.exit();
        }
        return ObjL.dequeue(); 
    }
    
    fun void push(string item){
        if(!(types["string"] == elementType)) {
            <<<"WRONG PUSH TYPE FOR LIST WITH string elements ">>>;
            me.exit();
        }
        StrL.push(item); 
    }
    
    fun void push(int item){
        if(!(types["int"] == elementType)) {
            <<<"WRONG PUSH TYPE FOR LIST WITH int elements ">>>;
            me.exit();
        }
        IntL.push(item); 
    }
    
    fun void push(float item){
        if(!(types["float"] == elementType)) {
            <<<"WRONG PUSH TYPE FOR LIST WITH float elements ">>>;
            me.exit();
        }
        FltL.push(item); 
    }
    
    fun void push(Object item){
        if(!(types["Object"] == elementType)) {
            <<<"WRONG PUSH TYPE FOR LIST WITH Object elements ">>>;
            me.exit();
        }
        ObjL.push(item); 
    }
    
    fun void enqueue(string item){
        if(!(types["string"] == elementType)) {
            <<<"WRONG ENQUEUE TYPE FOR LIST WITH string elements ">>>;
            me.exit();
        }
        StrL.enqueue(item); 
    }
    
    fun void enqueue(int item){
        if(!(types["int"] == elementType)) {
            <<<"WRONG ENQUEUE TYPE FOR LIST WITH int elements ">>>;
            me.exit();
        }
        IntL.enqueue(item); 
    }
    
    fun void enqueue(float item){
        if(!(types["float"] == elementType)) {
            <<<"WRONG ENQUEUE TYPE FOR LIST WITH float elements ">>>;
            me.exit();
        }
        FltL.enqueue(item); 
    }
    
    fun void enqueue(Object item){
        if(!(types["Object"] == elementType)) {
            <<<"WRONG ENQUEUE TYPE FOR LIST WITH Object elements ">>>;
            me.exit();
        }
        ObjL.enqueue(item); 
    }
    
    fun void set(int ind, string item){
        if(!(types["string"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH string elements ">>>;
            me.exit();
        }
        StrL.set(ind, item); 
    }
    
    fun void set(int ind, int item){
        if(!(types["int"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH int elements ">>>;
            me.exit();
        }
        IntL.set(ind, item); 
    }
    
    fun void set(int ind, float item){
        if(!(types["float"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH float elements ">>>;
            me.exit();
        }
        FltL.set(ind, item); 
    }
    
    fun void set(int ind, Object item){
        if(!(types["Object"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH Object elements ">>>;
            me.exit();
        }
        ObjL.set(ind, item); 
    }
    
    fun void insert(int ind, string item){
        if(!(types["string"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH string elements ">>>;
            me.exit();
        }
        StrL.insert(ind, item); 
    }
    
    fun void insert(int ind, int item){
        if(!(types["int"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH int elements ">>>;
            me.exit();
        }
        IntL.insert(ind, item); 
    }
    
    fun void insert(int ind, float item){
        if(!(types["float"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH float elements ">>>;
            me.exit();
        }
        FltL.insert(ind, item); 
    }
    
    fun void insert(int ind, Object item){
        if(!(types["Object"] == elementType)) {
            <<<"WRONG GET TYPE FOR LIST WITH Object elements ">>>;
            me.exit();
        }
        ObjL.insert(ind, item); 
    }  
    
    fun string removeStr(int i){
        if(!(types["string"] == elementType)) {
            <<<"WRONG DEQUEUE TYPE FOR LIST WITH string elements ">>>;
            me.exit();
        }
        return StrL.remove(int i); 
    }
    
    fun int removeInt(int i){
        if(!(types["int"] == elementType)) {
            <<<"WRONG DEQUEUE TYPE FOR LIST WITH int elements ">>>;
            me.exit();
        }
        return IntL.remove(int i); 
    }
    
    fun float removeFlt(int i){
        if(!(types["float"] == elementType)) {
            <<<"WRONG DEQUEUE TYPE FOR LIST WITH float elements ">>>;
            me.exit();
        }
        return FltL.remove(int i); 
    }
    
    fun Object removeObj(int i){
        if(!(types["Object"] == elementType)) {
            <<<"WRONG DEQUEUE TYPE FOR LIST WITH Object elements ">>>;
            me.exit();
        }
        return ObjL.remove(int i); 
    }
}

class StrList {
    
    32 @=> int startSize @=> int arraySize;
    
    string array[startSize];
    
    //wraparound indices 
    //in non empty list, head/tail point to first/last elements
    startSize/2 @=> int head;
    head-1 @=> int tail;
    0 @=> int size;
    
    fun int getSize() {return size;}
    
    //find the actual array index from the wraparound index
    fun int ind(int i) {
        if(i >= 0) {
            if(i < arraySize) return i;
            else return i % arraySize;
        }
        else return arraySize + i;
    }
    
    fun static StrList newBlank(int capacity) {
        StrList lis;
        capacity @=> lis.size;
        capacity @=> lis.arraySize;
        capacity/4 @=> lis.head;
        lis.head + capacity -1 @=> lis.tail;
        string newArray[2*capacity];
        newArray @=> lis.array;
        return lis;
    }
    
    //maps the outside index [range(0, size)] to the array index
    fun int index(int i) {return ind(head+i);}
    
    //is list full?
    fun int full() {return size == arraySize;}
    
    //is index in bounds?
    fun int inBounds(int i) {return i >= 0 && i < size;}
    
    fun int empty() {return size == 0;}
    
    //assign an object to an index in the list
    fun void set(int i, string o) {
        
        if(inBounds(i)) {
            o @=> array[ind(head+i)];
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }   
    }
    
    //get an object from an index in the list
    fun string get(int i) {
        
        if(inBounds(i)) {
            return array[ind(head+i)];
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }   
    }
    
    //add element to “end” of the list (stack terminology)
    fun void push(string o) {
        
        if(full())
            resize(arraySize*2);
        
        tail++;
        size++;
        o @=> array[ind(tail)];
    }
    
    //queue terminology for push
    fun void enqueue(string o){push(o);}
    
    //remove element from the “end” of the list
    fun string pop() {
        
        if(empty()) {
            //ERROR HANDLING
            <<<"LIST IS EMPTY">>>;
            me.exit();
        }
        if(size <= arraySize/4) resize(arraySize/2);
        tail--;
        size--;
        return array[ind(tail+1)];
    }
    
    //remove element from “front” of list
    fun string dequeue() {
        
        if(empty()) {
            //ERROR HANDLING
            <<<"LIST IS EMPTY">>>;
            me.exit();
        }
        if(size <= arraySize/4) 
            resize(arraySize/2);
        head++;
        size--;
        return array[ind(head-1)];
    }
    
    
    fun void resize(int newSize) {
        <<<"resize at ", size, newSize>>>; 
        string newArray[newSize];
        newSize/2 - size/2 @=> int newHead;
        newHead + size - 1 @=> int newTail;
        <<<"resize head-tail ", newHead, newTail>>>; 
        
        for(0 @=> int i; i < size; i++){
            array[ind(head+i)] @=> newArray[newHead+i];
        }
        
        newHead @=> head;
        newTail @=> tail;
        newSize @=> arraySize;
        newArray @=> array;
    }
    
    //insert an element at index i
    //if i in “first half” of list, shift “backwards”, else, shift “forwards 
    fun void insert(int i, string o){
        if(inBounds(i)) {
            if(full())
                resize(arraySize*2);
            if(i < size/2){ //first half
                for(head @=>int k; k < head+i; k++) {
                    array[ind(k)] @=> array[ind(k-1)];
                }
                head--;
                o @=> array[ind(head+i)];
            }
            else {
                for(tail @=> int k; k >= head+i; k--){ //last half
                    array[ind(k)] @=> array[ind(k+1)];
                }
                tail++;
                o @=> array[ind(head+i)];
            }  
            size++;
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
            return;
        }
    }
    
    fun string remove(int i){
        if(empty()) {
            //ERROR HANDLING
            <<<"EMPTY LIST">>>;
            me.exit();
        }
        if(inBounds(i)) {
            if(size <= arraySize/4) 
                resize(arraySize/2);
            
            array[ind(i)] @=> string o;
            
            if(i < size/2){ //first half
                for(head+i-1 @=> int k; k >= head; k--) {
                    array[ind(k)] @=> array[ind(k+1)];
                }
                head++;
            }
            else {
                for(head+i+1 @=> int k; k <= head+size; k++) {
                    array[ind(k)] @=> array[ind(k-1)];
                }
                tail--;
            }    
            size--;
            return o;     
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }
    }
    
    fun void sort() {MergeSortstring.sort(this);}
}

class MergeSortstring {
    
    
    //static Comparator c; //dont need this for int mergesort
    
    7 => static int cutoff;
    
    fun static void merge(StrList src, StrList dst, int lo, int mid, int hi){
        
        //assert that lo-mid and mid+1-hi are sorted
        //<<<"merge" , lo, mid, hi, dst.getSize(), src.getSize()>>>;
        
        lo => int i;
        mid+1 => int j;
        for(lo => int k; k < hi; k++) {
            //<<<i, j>>>;
            if(i > mid)                  dst.set(k, src.get(j++));
            else if(j > hi)              dst.set(k, src.get(i++));
            else if(src.get(j) < src.get(i))  
                dst.set(k, src.get(j++));
            else                         dst.set(k, src.get(i++));
        }
        
        //assert lo-hi is sorted   
    }
    
    fun static void sort(StrList src) {
        //<<<"START SIZE" , src.size-1>>>;
        StrList.newBlank(src.size) @=> StrList dst;
        for(0 =>int i; i < src.size; i++) {
            dst.set(i, src.get(i));
        }
        sortR(dst, src, 0, src.size-1);
        
    }
    
    fun static void sortR(StrList src, StrList dst, int lo, int hi) {
        7 => cutoff;
        //<<<"RECURSION START" , lo, hi, lo+cutoff>>>;
        
        if(hi <= lo + cutoff) {
            //<<<"insertion" ,lo, hi>>>;
            insertionSort(dst, lo, hi);
            return;
        }
        
        lo + (hi-lo) / 2 => int mid;
        sortR(dst, src, lo, mid);
        sortR(dst, src, mid+1, hi);
        
        if(src.get(mid+1) >= src.get(mid)) {
            for(lo=>int i; i <= hi; i++) {
                dst.set(i, src.get(i));
            }
            return;
        }
        
        merge(src, dst, lo, mid, hi);
    }
    
    fun static void insertionSort(StrList lis, int lo, int hi) {
        //<<<"insertion sort" ,lo, hi, lis.size, lis.array.size()>>>;
        for(lo=>int i; i <= hi; i++) {
            //<<<i>>>;
            for(i => int j; j > lo && (lis.get(j) < lis.get(j-1)); j--) {
                //<<<"    " , j>>>;
                lis.get(j) => string swap;
                lis.set(j, lis.get(j-1));
                lis.set(j-1, swap);
            }
        }
    }   
}

class IntList {
    
    32 @=> int startSize @=> int arraySize;
    
    int array[startSize];
    
    //wraparound indices 
    //in non empty list, head/tail point to first/last elements
    startSize/2 @=> int head;
    head-1 @=> int tail;
    0 @=> int size;
    
    fun int getSize() {return size;}
    
    //find the actual array index from the wraparound index
    fun int ind(int i) {
        if(i >= 0) {
            if(i < arraySize) return i;
            else return i % arraySize;
        }
        else return arraySize + i;
    }
    
    fun static IntList newBlank(int capacity) {
        IntList lis;
        capacity @=> lis.size;
        capacity @=> lis.arraySize;
        capacity/4 @=> lis.head;
        lis.head + capacity -1 @=> lis.tail;
        int newArray[2*capacity];
        newArray @=> lis.array;
        return lis;
    }
    
    //maps the outside index [range(0, size)] to the array index
    fun int index(int i) {return ind(head+i);}
    
    //is list full?
    fun int full() {return size == arraySize;}
    
    //is index in bounds?
    fun int inBounds(int i) {return i >= 0 && i < size;}
    
    fun int empty() {return size == 0;}
    
    //assign an object to an index in the list
    fun void set(int i, int o) {
        
        if(inBounds(i)) {
            o @=> array[ind(head+i)];
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }   
    }
    
    //get an object from an index in the list
    fun int get(int i) {
        
        if(inBounds(i)) {
            return array[ind(head+i)];
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }   
    }
    
    //add element to “end” of the list (stack terminology)
    fun void push(int o) {
        
        if(full())
            resize(arraySize*2);
        
        tail++;
        size++;
        o @=> array[ind(tail)];
    }
    
    //queue terminology for push
    fun void enqueue(int o){push(o);}
    
    //remove element from the “end” of the list
    fun int pop() {
        
        if(empty()) {
            //ERROR HANDLING
            <<<"LIST IS EMPTY">>>;
            me.exit();
        }
        if(size <= arraySize/4) resize(arraySize/2);
        tail--;
        size--;
        return array[ind(tail+1)];
    }
    
    //remove element from “front” of list
    fun int dequeue() {
        
        if(empty()) {
            //ERROR HANDLING
            <<<"LIST IS EMPTY">>>;
            me.exit();
        }
        if(size <= arraySize/4) 
            resize(arraySize/2);
        head++;
        size--;
        return array[ind(head-1)];
    }
    
    
    fun void resize(int newSize) {
        <<<"resize at ", size, newSize>>>; 
        int newArray[newSize];
        newSize/2 - size/2 @=> int newHead;
        newHead + size - 1 @=> int newTail;
        <<<"resize head-tail ", newHead, newTail>>>; 
        
        for(0 @=> int i; i < size; i++){
            array[ind(head+i)] @=> newArray[newHead+i];
        }
        
        newHead @=> head;
        newTail @=> tail;
        newSize @=> arraySize;
        newArray @=> array;
    }
    
    //insert an element at index i
    //if i in “first half” of list, shift “backwards”, else, shift “forwards 
    fun void insert(int i, int o){
        if(inBounds(i)) {
            if(full())
                resize(arraySize*2);
            if(i < size/2){ //first half
                for(head @=>int k; k < head+i; k++) {
                    array[ind(k)] @=> array[ind(k-1)];
                }
                head--;
                o @=> array[ind(head+i)];
            }
            else {
                for(tail @=> int k; k >= head+i; k--){ //last half
                    array[ind(k)] @=> array[ind(k+1)];
                }
                tail++;
                o @=> array[ind(head+i)];
            }  
            size++;
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
            return;
        }
    }
    
    fun int remove(int i){
        if(empty()) {
            //ERROR HANDLING
            <<<"EMPTY LIST">>>;
            me.exit();
        }
        if(inBounds(i)) {
            if(size <= arraySize/4) 
                resize(arraySize/2);
            
            array[ind(i)] @=> int o;
            
            if(i < size/2){ //first half
                for(head+i-1 @=> int k; k >= head; k--) {
                    array[ind(k)] @=> array[ind(k+1)];
                }
                head++;
            }
            else {
                for(head+i+1 @=> int k; k <= head+size; k++) {
                    array[ind(k)] @=> array[ind(k-1)];
                }
                tail--;
            }    
            size--;
            return o;     
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }
    }
    
    fun void sort() {MergeSortint.sort(this);}
}

class MergeSortint {
    
    
    //static Comparator c; //dont need this for int mergesort
    
    7 => static int cutoff;
    
    fun static void merge(IntList src, IntList dst, int lo, int mid, int hi){
        
        //assert that lo-mid and mid+1-hi are sorted
        //<<<"merge" , lo, mid, hi, dst.getSize(), src.getSize()>>>;
        
        lo => int i;
        mid+1 => int j;
        for(lo => int k; k < hi; k++) {
            //<<<i, j>>>;
            if(i > mid)                  dst.set(k, src.get(j++));
            else if(j > hi)              dst.set(k, src.get(i++));
            else if(src.get(j) < src.get(i))  
                dst.set(k, src.get(j++));
            else                         dst.set(k, src.get(i++));
        }
        
        //assert lo-hi is sorted   
    }
    
    fun static void sort(IntList src) {
        //<<<"START SIZE" , src.size-1>>>;
        IntList.newBlank(src.size) @=> IntList dst;
        for(0 =>int i; i < src.size; i++) {
            dst.set(i, src.get(i));
        }
        sortR(dst, src, 0, src.size-1);
        
    }
    
    fun static void sortR(IntList src, IntList dst, int lo, int hi) {
        7 => cutoff;
        //<<<"RECURSION START" , lo, hi, lo+cutoff>>>;
        
        if(hi <= lo + cutoff) {
            //<<<"insertion" ,lo, hi>>>;
            insertionSort(dst, lo, hi);
            return;
        }
        
        lo + (hi-lo) / 2 => int mid;
        sortR(dst, src, lo, mid);
        sortR(dst, src, mid+1, hi);
        
        if(src.get(mid+1) >= src.get(mid)) {
            for(lo=>int i; i <= hi; i++) {
                dst.set(i, src.get(i));
            }
            return;
        }
        
        merge(src, dst, lo, mid, hi);
    }
    
    fun static void insertionSort(IntList lis, int lo, int hi) {
        //<<<"insertion sort" ,lo, hi, lis.size, lis.array.size()>>>;
        for(lo=>int i; i <= hi; i++) {
            //<<<i>>>;
            for(i => int j; j > lo && (lis.get(j) < lis.get(j-1)); j--) {
                //<<<"    " , j>>>;
                lis.get(j) => int swap;
                lis.set(j, lis.get(j-1));
                lis.set(j-1, swap);
            }
        }
    }   
}

class FltList {
    
    32 @=> int startSize @=> int arraySize;
    
    float array[startSize];
    
    //wraparound indices 
    //in non empty list, head/tail point to first/last elements
    startSize/2 @=> int head;
    head-1 @=> int tail;
    0 @=> int size;
    
    fun int getSize() {return size;}
    
    //find the actual array index from the wraparound index
    fun int ind(int i) {
        if(i >= 0) {
            if(i < arraySize) return i;
            else return i % arraySize;
        }
        else return arraySize + i;
    }
    
    fun static FltList newBlank(int capacity) {
        FltList lis;
        capacity @=> lis.size;
        capacity @=> lis.arraySize;
        capacity/4 @=> lis.head;
        lis.head + capacity -1 @=> lis.tail;
        float newArray[2*capacity];
        newArray @=> lis.array;
        return lis;
    }
    
    //maps the outside index [range(0, size)] to the array index
    fun int index(int i) {return ind(head+i);}
    
    //is list full?
    fun int full() {return size == arraySize;}
    
    //is index in bounds?
    fun int inBounds(int i) {return i >= 0 && i < size;}
    
    fun int empty() {return size == 0;}
    
    //assign an object to an index in the list
    fun void set(int i, float o) {
        
        if(inBounds(i)) {
            o @=> array[ind(head+i)];
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }   
    }
    
    //get an object from an index in the list
    fun float get(int i) {
        
        if(inBounds(i)) {
            return array[ind(head+i)];
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }   
    }
    
    //add element to “end” of the list (stack terminology)
    fun void push(float o) {
        
        if(full())
            resize(arraySize*2);
        
        tail++;
        size++;
        o @=> array[ind(tail)];
    }
    
    //queue terminology for push
    fun void enqueue(float o){push(o);}
    
    //remove element from the “end” of the list
    fun float pop() {
        
        if(empty()) {
            //ERROR HANDLING
            <<<"LIST IS EMPTY">>>;
            me.exit();
        }
        if(size <= arraySize/4) resize(arraySize/2);
        tail--;
        size--;
        return array[ind(tail+1)];
    }
    
    //remove element from “front” of list
    fun float dequeue() {
        
        if(empty()) {
            //ERROR HANDLING
            <<<"LIST IS EMPTY">>>;
            me.exit();
        }
        if(size <= arraySize/4) 
            resize(arraySize/2);
        head++;
        size--;
        return array[ind(head-1)];
    }
    
    
    fun void resize(int newSize) {
        <<<"resize at ", size, newSize>>>; 
        float newArray[newSize];
        newSize/2 - size/2 @=> int newHead;
        newHead + size - 1 @=> int newTail;
        <<<"resize head-tail ", newHead, newTail>>>; 
        
        for(0 @=> int i; i < size; i++){
            array[ind(head+i)] @=> newArray[newHead+i];
        }
        
        newHead @=> head;
        newTail @=> tail;
        newSize @=> arraySize;
        newArray @=> array;
    }
    
    //insert an element at index i
    //if i in “first half” of list, shift “backwards”, else, shift “forwards 
    fun void insert(int i, float o){
        if(inBounds(i)) {
            if(full())
                resize(arraySize*2);
            if(i < size/2){ //first half
                for(head @=>int k; k < head+i; k++) {
                    array[ind(k)] @=> array[ind(k-1)];
                }
                head--;
                o @=> array[ind(head+i)];
            }
            else {
                for(tail @=> int k; k >= head+i; k--){ //last half
                    array[ind(k)] @=> array[ind(k+1)];
                }
                tail++;
                o @=> array[ind(head+i)];
            }  
            size++;
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
            return;
        }
    }
    
    fun float remove(int i){
        if(empty()) {
            //ERROR HANDLING
            <<<"EMPTY LIST">>>;
            me.exit();
        }
        if(inBounds(i)) {
            if(size <= arraySize/4) 
                resize(arraySize/2);
            
            array[ind(i)] @=> float o;
            
            if(i < size/2){ //first half
                for(head+i-1 @=> int k; k >= head; k--) {
                    array[ind(k)] @=> array[ind(k+1)];
                }
                head++;
            }
            else {
                for(head+i+1 @=> int k; k <= head+size; k++) {
                    array[ind(k)] @=> array[ind(k-1)];
                }
                tail--;
            }    
            size--;
            return o;     
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS" , i, size>>>;
            me.exit();
        }
    }
    
    fun void sort() {MergeSortfloat.sort(this);}
}

class MergeSortfloat {
    
    
    //static Comparator c; //dont need this for int mergesort
    
    7 => static int cutoff;
    
    fun static void merge(FltList src, FltList dst, int lo, int mid, int hi){
        
        //assert that lo-mid and mid+1-hi are sorted
        //<<<"merge" , lo, mid, hi, dst.getSize(), src.getSize()>>>;
        
        lo => int i;
        mid+1 => int j;
        for(lo => int k; k < hi; k++) {
            //<<<i, j>>>;
            if(i > mid)                  dst.set(k, src.get(j++));
            else if(j > hi)              dst.set(k, src.get(i++));
            else if(src.get(j) < src.get(i))  
                dst.set(k, src.get(j++));
            else                         dst.set(k, src.get(i++));
        }
        
        //assert lo-hi is sorted   
    }
    
    fun static void sort(FltList src) {
        //<<<"START SIZE" , src.size-1>>>;
        FltList.newBlank(src.size) @=> FltList dst;
        for(0 =>int i; i < src.size; i++) {
            dst.set(i, src.get(i));
        }
        sortR(dst, src, 0, src.size-1);
        
    }
    
    fun static void sortR(FltList src, FltList dst, int lo, int hi) {
        7 => cutoff;
        //<<<"RECURSION START" , lo, hi, lo+cutoff>>>;
        
        if(hi <= lo + cutoff) {
            //<<<"insertion" ,lo, hi>>>;
            insertionSort(dst, lo, hi);
            return;
        }
        
        lo + (hi-lo) / 2 => int mid;
        sortR(dst, src, lo, mid);
        sortR(dst, src, mid+1, hi);
        
        if(src.get(mid+1) >= src.get(mid)) {
            for(lo=>int i; i <= hi; i++) {
                dst.set(i, src.get(i));
            }
            return;
        }
        
        merge(src, dst, lo, mid, hi);
    }
    
    fun static void insertionSort(FltList lis, int lo, int hi) {
        //<<<"insertion sort" ,lo, hi, lis.size, lis.array.size()>>>;
        for(lo=>int i; i <= hi; i++) {
            //<<<i>>>;
            for(i => int j; j > lo && (lis.get(j) < lis.get(j-1)); j--) {
                //<<<"    " , j>>>;
                lis.get(j) => float swap;
                lis.set(j, lis.get(j-1));
                lis.set(j-1, swap);
            }
        }
    }   
}

class Intwrap{int i;}


fun void printObjList(ObjList l) {
    
    for(0 => int i;i < l.size; i++) {
        l.get(i) $ Intwrap @=> Intwrap iw;
        <<<i, iw.i>>>;
    }
}


class ObjList {
    
    4 => int startSize => int arraySize;
    
    null => Comparator comp;
    
    Object array[startSize];
    
    //wraparound indices 
    //INVARIANT: if head == tail at the end of a function, ObjList is empty
    startSize/2 => int head;
    head-1 => int tail;
    0 => int size;
    
    fun int getSize() {return size;}
    
    //find the actual array index from the wraparound index
    fun int ind(int i) {
        if(i >= 0) {
            if(i < arraySize) return i;
            else return i % arraySize;
        }
        else return arraySize + i;
    }
    
    fun static ObjList newBlank(int capacity) {
        ObjList lis;
        capacity/2 => lis.head;
        lis.head-1 => lis.tail;
        capacity => lis.size;
        capacity => lis.arraySize;
        Object newArray[capacity];
        newArray @=> lis.array;
        return lis;
    }
    
    //maps the outside index [range(0, size)] to the array index
    fun int index(int i) {return ind(head+i);}
    
    //is ObjList full?
    fun int full() {return size == arraySize;}
    
    //is index in bounds?
    fun int inBounds(int i) {return i >= 0 && i < size;}
    
    fun int empty() {return size == 0;}
    
    //assign an object to an index in the ObjList
    fun void set(int i, Object o) {
        
        if(inBounds(i)) {
            o @=> array[ind(head+i)];
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS">>>;
            return;
        }   
    }
    
    //get an object from an index in the ObjList
    fun Object get(int i) {
        
        if(inBounds(i)) {
            return array[ind(head+i)];
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS", i>>>;
            return null;
        }   
    }
    
    //add element to “end” of the ObjList (stack terminology)
    fun void push(Object o) {
        
        if(full())
            resize(arraySize*2);
        
        tail++;
        size++;
        o @=> array[ind(tail)];
    }
    
    //queue terminology for push
    fun void enqueue(Object o){push(o);}
    
    //remove element from the “end” of the ObjList
    fun Object pop() {
        
        if(empty()) {
            //ERROR HANDLING
            <<<"ObjList IS EMPTY">>>;
            return null;
        }
        if(size <= arraySize/4) resize(arraySize/2);
        tail--;
        size--;
        return array[ind(tail+1)];
    }
    
    //remove element from “front” of ObjList
    fun Object dequeue() {
        
        if(empty()) {
            //ERROR HANDLING
            <<<"ObjList IS EMPTY">>>;
            return null;
        }
        if(size <= arraySize/4) 
            resize(arraySize/2);
        head++;
        size--;
        return array[ind(head-1)];
    }
    
    
    fun void resize(int newSize) {
        <<<"resize at ", size, newSize>>>; 
        Object newArray[newSize];
        newSize/2 - size/2 => int newHead;
        newHead + size - 1 => int newTail;
        <<<"resize head-tail ", newHead, newTail>>>; 
        
        for(0 => int i; i < size; i++){
            array[ind(head+i)] @=> newArray[newHead+i];
        }
        
        newHead => head;
        newTail => tail;
        newSize => arraySize;
        newArray @=> array;
    }
    
    //insert an element at index i
    //if i in “first half” of ObjList, shift “backwards”, else, shift “forwards 
    fun void insert(int i, Object o){
        if(inBounds(i)) {
            if(full())
                resize(arraySize*2);
            if(i < size/2){ //first half
                for(head =>int k; k < head+i; k++) {
                    array[ind(k)] @=> array[ind(k-1)];
                }
                head--;
                o @=> array[ind(head+i)];
            }
            else {
                for(tail => int k; k >= head+i; k--){ //last half
                    array[ind(k)] @=> array[ind(k+1)];
                }
                tail++;
                o @=> array[ind(head+i)];
            }  
            size++;
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS">>>;
            return;
        }
    }
    
    fun Object remove(int i){
        if(empty()) {
            //ERROR HANDLING
            <<<"EMPTY ObjList">>>;
            return null;
        }
        if(inBounds(i)) {
            if(size <= arraySize/4) 
                resize(arraySize/2);
            
            array[ind(i)] @=> Object o;
            
            if(i < size/2){ //first half
                for(head+i-1 => int k; k >= head; k--) {
                    array[ind(k)] @=> array[ind(k+1)];
                }
                head++;
            }
            else {
                for(head+i+1 => int k; k <= head+size; k++) {
                    array[ind(k)] @=> array[ind(k-1)];
                }
                tail--;
            }    
            size--;
            return o;     
        }
        else {
            //ERROR HANDLING
            <<<"INDEX OUT OF BOUNDS">>>;
            return null;
        }
    }
    
    fun void sort(Comparator c) {MergeSort.sort(this, c);}
    
    fun void sort() {MergeSort.sort(this, comp);}
    
    fun void setComparator(Comparator c) {c @=> comp;}
}

class MergeSort {
    
    
    //static Comparator c; //dont need this for int mergesort
    
    7 => static int cutoff;
    
    fun static void merge(ObjList src, ObjList dst, int lo, int mid, int hi, Comparator c){
        
        //assert that lo-mid and mid+1-hi are sorted
        <<<"merge" , lo, mid, hi, dst.getSize(), src.getSize()>>>;
        
        lo => int i;
        mid+1 => int j;
        for(lo => int k; k < hi; k++) {
            <<<i, j>>>;
            if(i > mid)                  dst.set(k, src.get(j++));
            else if(j > hi)              dst.set(k, src.get(i++));
            else if(c.compare(src.get(j), src.get(i)) < 0)  
                dst.set(k, src.get(j++));
            else                         dst.set(k, src.get(i++));
        }
        
        //assert lo-hi is sorted   
    }
    
    fun static void sort(ObjList src, Comparator c) {
        <<<"START SIZE" , src.size-1>>>;
        ObjList.newBlank(src.size) @=> ObjList dst;
        sortR(src, dst, 0, src.size-1, Comparator c);
        
    }
    
    fun static void sortR(ObjList src, ObjList dst, int lo, int hi, Comparator c) {
        7 => cutoff;
        <<<"RECURSION START" , lo, hi, lo+cutoff>>>;
        
        if(hi <= lo + cutoff) {
            <<<"insertion" ,lo, hi>>>;
            insertionSort(dst, lo, hi, c);
            return;
        }
        
        lo + (hi-lo) / 2 => int mid;
        sortR(dst, src, lo, mid, c);
        sortR(dst, src, mid+1, hi, c);
        
        if(c.compare(src.get(mid+1), src.get(mid)) >= 0) {
            for(lo=>int i; i <= hi; i++) {
                dst.set(i, src.get(i));
            }
            return;
        }
        
        merge(src, dst, lo, mid, hi, c);
    }
    
    fun static void insertionSort(ObjList lis, int lo, int hi, Comparator c) {
        <<<"insertion sort" ,lo, hi, lis.size, lis.array.size()>>>;
        for(lo=>int i; i <= hi; i++) {
            <<<i>>>;
            for(i => int j; j > lo && (c.compare(lis.get(j), lis.get(j-1)) < 0); j--) {
                <<<"    " , j>>>;
                lis.get(i) @=> Object swap;
                lis.set(i, lis.get(j));
                lis.set(j, swap);
            }
        }
    }   
} 



