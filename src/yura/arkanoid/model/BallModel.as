/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/11/12
 * Time: 9:00 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.model {
import flash.events.Event;
import flash.events.EventDispatcher;

[Event(type="flash.events.Event", name="locationChanged")]
public class BallModel extends EventDispatcher {
    public var radius:uint = 10;
    public var x:uint;
    public var y:uint;

    public function BallModel(x:uint, y:uint) {
        this.x = x;
        this.y = y;
    }

    public function locationChanged():void {
        dispatchEvent(new Event("locationChanged"));
    }
}
}
