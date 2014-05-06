public class SymTable {
    
    RBStrStr SymStrStr;
    RBStrInt SymStrInt;
    RBStrFlt SymStrFlt;
    RBStrObj SymStrObj;
    RBIntStr SymIntStr;
    RBIntInt SymIntInt;
    RBIntFlt SymIntFlt;
    RBIntObj SymIntObj;
    RBFltStr SymFltStr;
    RBFltInt SymFltInt;
    RBFltFlt SymFltFlt;
    RBFltObj SymFltObj;
    RBObjStr SymObjStr;
    RBObjInt SymObjInt;
    RBObjFlt SymObjFlt;
    RBObjObj SymObjObj;
    
    int types[0];
    0=> static int STRING => types["string"];
    1=> static int INT => types["int"];
    2=> static int FLOAT => types["float"];
    3=> static int OBJECT => types["Object"]; 
    
    -1 => int keyType;
    -1 => int valType;
    
    //fun int getSize() DO LATER
    
    fun SymTable newTable(string key, string val) {
        SymTable tab;
        tab.types[key] => tab.keyType;
        tab.types[val] => tab.valType;
        if(key == "Object") {
            <<<" MUST SPECIFY COMPARATOR " >>>;
            me.exit();
        }
        return tab;
    }
    
    fun SymTable newTable(string key, string val, Comparator c) {
        SymTable tab;
        tab.types[key] => tab.keyType;
        tab.types[val] => tab.valType;
        if(key != "Object") {
            <<<" NO COMPARATOR NECESSARY " >>>;
            me.exit();
        }
        return tab;
    }
    
    fun void put(string key, string val) {
        if(!(types["string"] == keyType && types["string"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymStrStr.put(key, val); 
    }
    
    fun void put(string key, int val) {
        if(!(types["string"] == keyType && types["int"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymStrInt.put(key, val); 
    }
    
    fun void put(string key, float val) {
        if(!(types["string"] == keyType && types["float"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymStrFlt.put(key, val); 
    }
    
    fun void put(string key, Object val) {
        if(!(types["string"] == keyType && types["Object"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymStrObj.put(key, val); 
    }
    
    fun void put(int key, string val) {
        if(!(types["int"] == keyType && types["string"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymIntStr.put(key, val); 
    }
    
    fun void put(int key, int val) {
        if(!(types["int"] == keyType && types["int"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymIntInt.put(key, val); 
    }
    
    fun void put(int key, float val) {
        if(!(types["int"] == keyType && types["float"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymIntFlt.put(key, val); 
    }
    
    fun void put(int key, Object val) {
        if(!(types["int"] == keyType && types["Object"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymIntObj.put(key, val); 
    }
    
    fun void put(float key, string val) {
        if(!(types["float"] == keyType && types["string"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymFltStr.put(key, val); 
    }
    
    fun void put(float key, int val) {
        if(!(types["float"] == keyType && types["int"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymFltInt.put(key, val); 
    }
    
    fun void put(float key, float val) {
        if(!(types["float"] == keyType && types["float"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymFltFlt.put(key, val); 
    }
    
    fun void put(float key, Object val) {
        if(!(types["float"] == keyType && types["Object"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymFltObj.put(key, val); 
    }
    
    fun void put(Object key, string val) {
        if(!(types["Object"] == keyType && types["string"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymObjStr.put(key, val); 
    }
    
    fun void put(Object key, int val) {
        if(!(types["Object"] == keyType && types["int"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymObjInt.put(key, val); 
    }
    
    fun void put(Object key, float val) {
        if(!(types["Object"] == keyType && types["float"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymObjFlt.put(key, val); 
    }
    
    fun void put(Object key, Object val) {
        if(!(types["Object"] == keyType && types["Object"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        SymObjObj.put(key, val); 
    }
    
    fun string getStr(string key) {
        if(!(types["string"] == keyType && types["string"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymStrStr.get(key); 
    }
    
    fun string getStr(int key) {
        if(!(types["int"] == keyType && types["string"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymIntStr.get(key); 
    }
    
    fun string getStr(float key) {
        if(!(types["float"] == keyType && types["string"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymFltStr.get(key); 
    }
    
    fun string getStr(Object key) {
        if(!(types["Object"] == keyType && types["string"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymObjStr.get(key); 
    }
    
    fun int getInt(string key) {
        if(!(types["string"] == keyType && types["int"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymStrInt.get(key); 
    }
    
    fun int getInt(int key) {
        if(!(types["int"] == keyType && types["int"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymIntInt.get(key); 
    }
    
    fun int getInt(float key) {
        if(!(types["float"] == keyType && types["int"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymFltInt.get(key); 
    }
    
    fun int getInt(Object key) {
        if(!(types["Object"] == keyType && types["int"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymObjInt.get(key); 
    }
    
    fun float getFlt(string key) {
        if(!(types["string"] == keyType && types["float"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymStrFlt.get(key); 
    }
    
    fun float getFlt(int key) {
        if(!(types["int"] == keyType && types["float"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymIntFlt.get(key); 
    }
    
    fun float getFlt(float key) {
        if(!(types["float"] == keyType && types["float"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymFltFlt.get(key); 
    }
    
    fun float getFlt(Object key) {
        if(!(types["Object"] == keyType && types["float"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymObjFlt.get(key); 
    }
    
    fun Object getObj(string key) {
        if(!(types["string"] == keyType && types["Object"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymStrObj.get(key); 
    }
    
    fun Object getObj(int key) {
        if(!(types["int"] == keyType && types["Object"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymIntObj.get(key); 
    }
    
    fun Object getObj(float key) {
        if(!(types["float"] == keyType && types["Object"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymFltObj.get(key); 
    }
    
    fun Object getObj(Object key) {
        if(!(types["Object"] == keyType && types["Object"] == valType)) {
            <<<"WRONG TYPES USED FOR SYMBOL TABLE PUT ARGUMENTS">>>;
            me.exit();
        }
        return SymObjObj.get(key); 
    }
    
    fun int contains(string key) {
        if(valType == types["string"]) return SymStrStr.contains(key);
        if(valType == types["int"]) return SymStrInt.contains(key);
        if(valType == types["float"]) return SymStrFlt.contains(key);
        if(valType == types["Object"]) return SymStrObj.contains(key);
    }
    
    fun int contains(int key) {
        if(valType == types["string"]) return SymIntStr.contains(key);
        if(valType == types["int"]) return SymIntInt.contains(key);
        if(valType == types["float"]) return SymIntFlt.contains(key);
        if(valType == types["Object"]) return SymIntObj.contains(key);
    }
    
    fun int contains(float key) {
        if(valType == types["string"]) return SymFltStr.contains(key);
        if(valType == types["int"]) return SymFltInt.contains(key);
        if(valType == types["float"]) return SymFltFlt.contains(key);
        if(valType == types["Object"]) return SymFltObj.contains(key);
    }
    
    fun int contains(Object key) {
        if(valType == types["string"]) return SymObjStr.contains(key);
        if(valType == types["int"]) return SymObjInt.contains(key);
        if(valType == types["float"]) return SymObjFlt.contains(key);
        if(valType == types["Object"]) return SymObjObj.contains(key);
    }
}

//OVERWRITE DUPLICATE KEYS
class RBStrStr {
    
    class Node {   
        string key;
        string val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(string k, string v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun string get(string key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, string key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(string key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(string key, string val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, string key, string val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(string key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, string key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("string") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBStrInt {
    
    class Node {   
        string key;
        int val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(string k, int v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun int get(string key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, string key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(string key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(string key, int val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, string key, int val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(string key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, string key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("string") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBStrFlt {
    
    class Node {   
        string key;
        float val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(string k, float v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun float get(string key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, string key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(string key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(string key, float val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, string key, float val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(string key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, string key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("string") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBStrObj {
    
    class Node {   
        string key;
        Object val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(string k, Object v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun Object get(string key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, string key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(string key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(string key, Object val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, string key, Object val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(string key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, string key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("string") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBIntStr {
    
    class Node {   
        int key;
        string val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(int k, string v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun string get(int key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, int key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(int key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(int key, string val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, int key, string val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(int key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, int key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("int") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBIntInt {
    
    class Node {   
        int key;
        int val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(int k, int v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun int get(int key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, int key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(int key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(int key, int val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, int key, int val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(int key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, int key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("int") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBIntFlt {
    
    class Node {   
        int key;
        float val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(int k, float v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun float get(int key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, int key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(int key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(int key, float val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, int key, float val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(int key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, int key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("int") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBIntObj {
    
    class Node {   
        int key;
        Object val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(int k, Object v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun Object get(int key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, int key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(int key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(int key, Object val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, int key, Object val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(int key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, int key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("int") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBFltStr {
    
    class Node {   
        float key;
        string val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(float k, string v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun string get(float key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, float key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(float key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(float key, string val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, float key, string val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(float key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, float key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("float") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBFltInt {
    
    class Node {   
        float key;
        int val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(float k, int v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun int get(float key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, float key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(float key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(float key, int val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, float key, int val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(float key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, float key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("float") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBFltFlt {
    
    class Node {   
        float key;
        float val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(float k, float v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun float get(float key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, float key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(float key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(float key, float val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, float key, float val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(float key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, float key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("float") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBFltObj {
    
    class Node {   
        float key;
        Object val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(float k, Object v, int col) {
            k @=> key;
            v @=> val;
            col @=> color;
            //num => n;
        }
    }
    
    class NodeRef {
        null @=> Node n;
    }

    
    0 @=> int BLACK;
    1 @=> int RED;
    2 @=>  int debug;
    
    null @=> Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    fun int isEmpty() {return root == null;}
    
    //how to handle get of something not in table
    fun Object get(float key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, float key) {
        while( x != null) {
            if(key < x.key) x.left.n @=> x;
            else if(key > x.key) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(float key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(float key, Object val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, float key, Object val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (key < h.key)  putR(h.left.n, key, val) @=> h.left.n;
        else if (key > h.key)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
        //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size
        
        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(float key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK => root.color;
    }
    
    
    fun Node deleteR(Node h, float key) {
        
        if(key < h.key) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if(key == h.key && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(key == h.key) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key; 
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x; 
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("float") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */    
    
    fun void printTree() {
        printNode(root, 0, 0);
    }
    
    fun void printNode(Node h, int depth, int wait) {
        if(h == null) return;
        " " => string s;
        "" => string s2;
        for(0 => int i; i < depth; i++) {
            s + s2 => s2;
        }
        
        10::ms / Math.pow(2, depth * 1.0) => dur seg;
        wait * seg => now;
        <<<s2, depth, h.key, wait>>>; 
        (Math.pow(2, depth) - wait) * seg => now;
        
        spork~ printNode(h.left.n, depth+1, 2*wait);
        spork~ printNode(h.right.n, depth+1, 2*wait+1);
        1::second => now;
    }
    
}

/*RedBlackBST b;
Node n;
[0, 9, 3, 1, 8, 2, 4, 10, 6, 7, 5] @=> int nums[];
for(1 => int i; i <= 10; i++){
    b.put(nums[i], n);
}


b.delete(nums[6]);
b.printTree();
b.delete(nums[5]);
b.printTree();
b.delete(nums[2]);
b.printTree();

11::second => now;*/



//OVERWRITE DUPLICATE KEYS
class RBObjStr {
    
    class Node {   
        Object key;
        string val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(Object k, string v, int col) {
            k @=> key;
            v @=> val;
            col => color;
            //num => n;
        }
    }
    
    class NodeRef {
        null => Node n;
    }
    
    0 => int BLACK;
    1 => int RED;
    2 =>  int debug;
    
    null => Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    Comparator c; 
    
    fun void setComparator(Comparator comp) {
        comp @=> c;
    }
    
    fun int isEmpty() {return root == null;}
    
    fun string get(Object key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, Object key) {
        while( x != null) {
            if(c.compare(key, x.key) < 0) x.left.n @=> x;
            else if(c.compare(key, x.key) > 0) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(Object key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(Object key, string val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, Object key, string val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (c.compare(key, h.key) < 0)  putR(h.left.n, key, val) @=> h.left.n;
        else if (c.compare(key, h.key) > 0)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
                //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size

        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(Object key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK @=> root.color;
    }
    
    
    fun Node deleteR(Node h, Object key) {
        
        if(c.compare(key, h.key) < 0) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if((c.compare(key, h.key) == 0) && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(c.compare(key, h.key) == 0) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key;
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x;
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("Object") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */
    
    
}



//OVERWRITE DUPLICATE KEYS
class RBObjInt {
    
    class Node {   
        Object key;
        int val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(Object k, int v, int col) {
            k @=> key;
            v @=> val;
            col => color;
            //num => n;
        }
    }
    
    class NodeRef {
        null => Node n;
    }
    
    0 => int BLACK;
    1 => int RED;
    2 =>  int debug;
    
    null => Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    Comparator c; 
    
    fun void setComparator(Comparator comp) {
        comp @=> c;
    }
    
    fun int isEmpty() {return root == null;}
    
    fun int get(Object key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, Object key) {
        while( x != null) {
            if(c.compare(key, x.key) < 0) x.left.n @=> x;
            else if(c.compare(key, x.key) > 0) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(Object key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(Object key, int val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, Object key, int val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (c.compare(key, h.key) < 0)  putR(h.left.n, key, val) @=> h.left.n;
        else if (c.compare(key, h.key) > 0)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
                //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size

        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(Object key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK @=> root.color;
    }
    
    
    fun Node deleteR(Node h, Object key) {
        
        if(c.compare(key, h.key) < 0) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if((c.compare(key, h.key) == 0) && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(c.compare(key, h.key) == 0) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key;
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x;
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("Object") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */
    
    
}



//OVERWRITE DUPLICATE KEYS
class RBObjFlt {
    
    class Node {   
        Object key;
        float val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(Object k, float v, int col) {
            k @=> key;
            v @=> val;
            col => color;
            //num => n;
        }
    }
    
    class NodeRef {
        null => Node n;
    }
    
    0 => int BLACK;
    1 => int RED;
    2 =>  int debug;
    
    null => Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    Comparator c; 
    
    fun void setComparator(Comparator comp) {
        comp @=> c;
    }
    
    fun int isEmpty() {return root == null;}
    
    fun float get(Object key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, Object key) {
        while( x != null) {
            if(c.compare(key, x.key) < 0) x.left.n @=> x;
            else if(c.compare(key, x.key) > 0) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(Object key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(Object key, float val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, Object key, float val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (c.compare(key, h.key) < 0)  putR(h.left.n, key, val) @=> h.left.n;
        else if (c.compare(key, h.key) > 0)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
                //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size

        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(Object key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK @=> root.color;
    }
    
    
    fun Node deleteR(Node h, Object key) {
        
        if(c.compare(key, h.key) < 0) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if((c.compare(key, h.key) == 0) && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(c.compare(key, h.key) == 0) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key;
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x;
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("Object") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */
    
    
}



//OVERWRITE DUPLICATE KEYS
class RBObjObj {
    
    class Node {   
        Object key;
        Object val;
        NodeRef left;
        NodeRef right;
        int color;
        int n;
        
        fun void set(Object k, Object v, int col) {
            k @=> key;
            v @=> val;
            col => color;
            //num => n;
        }
    }
    
    class NodeRef {
        null => Node n;
    }
    
    0 => int BLACK;
    1 => int RED;
    2 =>  int debug;
    
    null => Node root;
    
    fun int isRed(Node h) {
        if(h == null) return 0;
        return h.color;
    }
    
    Comparator c; 
    
    fun void setComparator(Comparator comp) {
        comp @=> c;
    }
    
    fun int isEmpty() {return root == null;}
    
    fun Object get(Object key){ 
        if(getR(root, key) != null) return getR(root, key).val;
        else {
            <<< " ERROR: KEY NOT IN TABLE" >>>;
            me.exit();
        }
    }
    
    fun Node getR(Node x, Object key) {
        while( x != null) {
            if(c.compare(key, x.key) < 0) x.left.n @=> x;
            else if(c.compare(key, x.key) > 0) x.right.n @=> x;
            else return x;
        }
        return null;
    }
    
    fun int contains(Object key) {return getR(root, key) != null;}
    
    
    //PUT functions --------------------------------------
    fun void put(Object key, Object val) {
        putR(root, key, val) @=> root;
        BLACK => root.color;
        //<<<" put done ",  key>>>;
    }
    
    fun Node putR(Node h, Object key, Object val) {
        if(h == null) {
            Node node;
            node.set(key, val, RED);
            return node;
        }
        //<<< " traversing thru " , h.key>>>;
        if      (c.compare(key, h.key) < 0)  putR(h.left.n, key, val) @=> h.left.n;
        else if (c.compare(key, h.key) > 0)  putR(h.right.n, key, val) @=> h.right.n;
        else                   val @=> h.val;
                //fix up link coloring
        if(isRed(h.right.n) && !isRed(h.left.n))       rotateLeft(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.left.n.left.n)) rotateRight(h) @=> h;
        if(isRed(h.left.n)  && isRed(h.right.n))       flipColors(h);
        //h.n = node size

        return h;
    }
    
    fun Node rotateRight(Node h) {
        
        h.left.n @=> Node x;
        x.right.n @=> h.left.n;
        h @=> x.right.n;
        x.right.n.color => x.color;
        RED => x.right.n.color;
        //size stuff
        return x;
    }
    
    fun Node rotateLeft(Node h) {
        
        h.right.n @=> Node x;
        x.left.n @=> h.right.n;
        h @=> x.left.n;
        x.left.n.color => x.color;
        RED => x.left.n.color;
        //size stuff
        return x;
    }
    
    fun void flipColors(Node h) {
        !h.color => h.color;
        !h.left.n.color => h.left.n.color;
        !h.right.n.color => h.right.n.color;
    }
    
    fun void delete(Object key) {
        
        if(!contains(key)){
            //ERROR HANDLING
            return;
        }
        
        if(!isRed(root.left.n) && !isRed(root.right.n)) RED =>root.color;
        deleteR(root, key) @=> root;
        
        if(!isEmpty()) BLACK @=> root.color;
    }
    
    
    fun Node deleteR(Node h, Object key) {
        
        if(c.compare(key, h.key) < 0) {
            if(!isRed(h.left.n) && !isRed(h.left.n.left.n)) 
                moveRedLeft(h) @=> h;
            deleteR(h.left.n, key) @=> h.left.n;
        }
        else {
            if(isRed(h.left.n))
                rotateRight(h) @=> h;
            if((c.compare(key, h.key) == 0) && (h.right.n == null))
                return null;
            if(!isRed(h.right.n) && !isRed(h.right.n.left.n))
                moveRedRight(h) @=> h;
            if(c.compare(key, h.key) == 0) {
                min(h.right.n) @=> Node x;
                x.key @=> h.key;
                x.val @=> x.val;
                deleteMin(h.right.n) @=> h.right.n; 
            }
            else deleteR(h.right.n, key) @=> h.right.n;
        }
        return balance(h);
    }
    
    fun Node deleteMin(Node h) {
        if(h.left.n == null) return null;
        
        if(!isRed(h.left.n) && !isRed(h.left.n.left.n))
            moveRedLeft(h) @=> h;
        
        deleteMin(h.left.n) @=> h.left.n;
        return balance(h);
    }
    
    fun Node moveRedLeft(Node h) {
        
        if(!( isRed(h) && !isRed(h.left.n) && !isRed(h.left.n.left.n) )) {
            <<<" FAILED ASSERT MOVE RED LEFT " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.right.n.left.n)) { 
            rotateRight(h.right.n) @=> h.right.n;
            rotateLeft(h) @=> h;
        }
        return h;
    }
    
    fun Node moveRedRight(Node h) {
        
        if(!( isRed(h) && !isRed(h.right.n) && !isRed(h.right.n.left.n) )){
            <<<" FAILED ASSERT MOVE RED right " >>>; 
            return null;
        }
        
        flipColors(h);
        if (isRed(h.left.n.left.n)) { 
            rotateRight(h) @=> h;
        }
        return h;   
    }
    
    fun Node balance(Node h) {
        
        if (isRed(h.right.n))                      
            rotateLeft(h) @=> h;
        if (isRed(h.left.n) && isRed(h.left.n.left.n)) 
            rotateRight(h) @=> h;
        if (isRed(h.left.n) && isRed(h.right.n))     
            flipColors(h);
        
        //size stuff
        return h;
    }
    
    fun Node min(Node x) {
        if(x == null){
            <<<" FAILED ASSERT min " >>>; 
            return null;
        }
        
        if(x.left.n == null) return x;
        else                 return min(x.left.n);
        
    }
    /*
    fun List keys() {
        List.newList("Object") @=>List lis;
        keysR(lis, root);
        return lis;
    }
    
    fun void keysR(List lis, Node root) {
        lis.append(root.key);
        if(root.left.n != null) keysR(lis, root.left.n);
        if(root.right.n != null) keysR(lis, root.right.n);
        return;
    }
    */
    
    
}

