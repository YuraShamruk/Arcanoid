/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/14/12
 * Time: 1:34 AM
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Shape;

public class Puddle extends Shape {
    var _width:uint = 40;
    var _height:uint = 5;
    var drawTarget:Field;

    public function Puddle(drawTarget:Field) {
        this.drawTarget = drawTarget;
        x = 80;
        y = 250;
        draw();
    }

    public function draw():void {
        graphics.beginFill(0x000000);
        graphics.drawRect(0, 0, _width, _height);
        graphics.endFill();
    }

    public function move(step:int):void {
        var newX:uint = x + step;
        if (newX >= 0 && (newX + _width) <= drawTarget._width) {
            x = newX;
        }

    }
}
}
