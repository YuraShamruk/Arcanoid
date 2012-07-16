/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/14/12
 * Time: 1:46 PM
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Shape;

public class Brick extends Shape {
    var _width:uint = 30;
    var _height:uint = 20;

    public function Brick(x:uint, y:uint) {
        this.x = x;
        this.y = y;
        draw();
    }

    private function draw():void {
        graphics.beginFill(Math.random() * 0xFFFFFF);
        graphics.drawRect(0, 0, _width, _height);
        graphics.endFill();
    }
}
}
