
//OVERWRITE DUPLICATE KEYS
public class RBStrInt {
    
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

