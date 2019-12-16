package cordova-plugin-logger;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class logger extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException
     {
        if (action.equals("add")){
             this.add(args, callbackContext);
             return true;
        }

        return false;
    }



    private void add(JSONArray args , CallbackContext callback){

      if args != null {

        try {

          int p1 = Integer.parseInt(args.getJSONObject(0).getString("param1"));
          int p2 = Integer.parseInt(args.getJSONObject(1).getString("param2"));
          callback.sucess("The addition is"+(p1+p2));

        } catch (Exception ex){
           callback.error("something went wrong");
        }

      } else {
        callback.error("please don't pass null value");
      }

    }


}
