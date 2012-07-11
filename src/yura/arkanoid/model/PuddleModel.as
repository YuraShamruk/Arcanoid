/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 11:33 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.model {
import flash.events.Event;
import flash.events.EventDispatcher;
[Event(type="flash.events.Event", name="locationChanged")]
public class PuddleModel extends EventDispatcher{
    public var x:uint;
    public var y:uint;
    public var width:uint = 50;
    public var height:uint = 10;
    public function PuddleModel(){
        x = 90;
        y = 290;
    }
    public function locationChanged():void{
        dispatchEvent(new Event("locationChanged"));
    }
}
}
