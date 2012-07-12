/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/12/12
 * Time: 4:57 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.manager {
import flash.display.Stage;
import flash.events.EventDispatcher;
import flash.events.MouseEvent;

public class MouseManager extends EventDispatcher {
    private static var _instance:KeyboardManager;

    public static function get instance():KeyboardManager {
        return _instance ||= new KeyboardManager();
    }

    public function init(stage:Stage):void {
        stage.addEventListener(MouseEvent.CLICK, keyPressed);
    }

    private function keyPressed(event:MouseEvent):void {
        dispatchEvent(event.clone());
    }
}
}
