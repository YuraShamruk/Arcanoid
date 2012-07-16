/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/14/12
 * Time: 12:34 AM
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Shape;

public class Ball extends Shape {
    private var radius:uint = 10;
    private var speed:uint = 5;
    private var centorX:uint;
    private var centorY:uint;
    private var direction:Number = Math.PI / 4 * 3;
    private var drawTarget:Field;
    private var puddle:Puddle;

    public function Ball(drawTarget:Field, puddle:Puddle) {
        this.puddle = puddle;
        this.drawTarget = drawTarget;
        x = 50;
        y = 50;
        centorX = x + radius;
        centorY = y + radius;
        draw();
    }

    public function draw():void {
        graphics.beginFill(0xFF0000);
        graphics.drawCircle(radius, radius, radius);
        graphics.endFill();
    }

    public function move():void {
        var newX:uint = int(speed * Math.cos(direction)) + centorX;
        var newY:uint = int(speed * Math.sin(direction)) + centorY;

        if ((newX + radius) >= drawTarget._width || (newX - radius) <= 0) {
            direction = Math.PI - direction;

        }
        else {
            centorX = newX;
        }
        if ((newY + radius) >= drawTarget._height || (newY - radius) <= 0) {
            direction = 2 * Math.PI - direction;

        }
        else {
            centorY = newY;
        }
        if (this.hitTestObject(puddle)) {
            direction = 2 * Math.PI - direction;
            newX = int(speed * Math.cos(direction)) + centorX;
            newY = int(speed * Math.sin(direction)) + centorY;
            x = newX - radius;
            y = newY - radius;
        }
        x = centorX - radius;
        y = centorY - radius;
    }
}
}
