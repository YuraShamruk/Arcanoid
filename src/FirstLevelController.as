/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/14/12
 * Time: 12:47 AM
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Sprite;
import flash.display.Stage;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.ui.Keyboard;

public class FirstLevelController extends Sprite {
    public var ball:Ball;
    public var field:Field;
    public var puddle:Puddle;
    public var bricks:Vector.<Brick> = new Vector.<Brick>;

    public function FirstLevelController(stage:Stage) {
        bricks.push(new Brick(20, 20));
        bricks.push(new Brick(70, 20));
        bricks.push(new Brick(40, 60));
        field = new Field();
        puddle = new Puddle(field);
        ball = new Ball(field, puddle);
        field.addToSprite(puddle);
        field.addToSprite(ball);
        for each(var brick:Brick in bricks) {
            field.addToSprite(brick);
        }
        addChild(field);
        stage.addEventListener(Event.ENTER_FRAME, onFrame);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, keyPressedDown);
    }

    private function onFrame(event:Event):void {
        ball.move();
    }

    private function keyPressedDown(event:KeyboardEvent):void {
        var key:uint = event.keyCode;
        var step:uint = 5
        switch (key) {
            case Keyboard.LEFT :
                puddle.move(-step);
                break;
            case Keyboard.RIGHT :
                puddle.move(step);
                break;

        }

    }
}
}
