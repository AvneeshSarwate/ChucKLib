
public class Storage {
    
    static RBStrStr @strM;
    static RBStrInt @intM;
    static RBStrFlt @fltM;
    static RBStrObj @objM;
    
    static int initialized;
    
    fun static void initializeCheck() {
        
        if(!initialized) {
            <<<"INIT">>>;
            1 => initialized;
            RBStrStr r1;
            r1 @=> strM;
            RBStrInt r2;
            r2 @=> intM;
            RBStrFlt r3;
            r3 @=> fltM;
            RBStrObj r4;
            r4 @=> objM;
        }
        
    }
    
    fun static void put(string key, string val) { 
        initializeCheck();
        strM.put(key, val);
    }
    
    fun static void put(string key, int val) { 
        initializeCheck();
        intM.put(key, val);
    }
    
    fun static void put(string key, float val) { 
        initializeCheck();
        fltM.put(key, val);
    }
    
    fun static void put(string key, Object val) { 
        <<<"OBJ" , key>>>;
        initializeCheck();
        objM.put(key, val);
    }
    
    
    
    fun static string getStr(string key) { 
        initializeCheck();
        return strM.get(key);
    }
    
    fun static int getInt(string key) { 
        initializeCheck();
        return intM.get(key);
    }
    
    fun static float getFlt(string key) { 
        initializeCheck();
        return fltM.get(key);
    }
    
    fun static Object getObj(string key) { 
        initializeCheck();
        <<<"GET OBJ", key, objM.contains(key)>>>;
        return objM.get(key);
    }
    
    //ADD CONTAINS 
    
    fun static int containsStr(string key){ 
        initializeCheck();
        return strM.contains(key);
    }
    
    fun static int containsInt(string key){ 
        initializeCheck();
        return intM.contains(key);
    }
    
    fun static int containsFlt(string key){ 
        initializeCheck();
        return fltM.contains(key);
    }
    
    fun static int containsObj(string key){ 
        initializeCheck();
        return objM.contains(key);
    }
    
    
}
