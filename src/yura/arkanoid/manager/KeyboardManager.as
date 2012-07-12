package yura.arkanoid.manager {
import flash.display.Stage;
import flash.events.EventDispatcher;
import flash.events.KeyboardEvent;

public class KeyboardManager extends EventDispatcher {
    private static var _instance:KeyboardManager;

    public static function get instance():KeyboardManager {
        return _instance ||= new KeyboardManager();
    }

    public function init(stage:Stage):void {
        stage.addEventListener(KeyboardEvent.KEY_DOWN, keyPressedDown);
    }

    private function keyPressedDown(event:KeyboardEvent):void {
        dispatchEvent(event.clone());
    }
}
}
