/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/14/12
 * Time: 1:11 AM
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Shape;
import flash.display.Sprite;

public class Field extends Sprite {
    var _width:uint;
    var _height:uint;

    public function Field() {
        _width = 200;
        _height = 300;
        x = 0;
        y = 0;
        draw();
    }

    public function addToSprite(shape:Shape):void {
        addChild(shape);
    }

    public function draw():void {
        graphics.beginFill(0x00FF00);
        graphics.drawRect(0, 0, _width, _height);
        graphics.endFill();
    }
}
}
