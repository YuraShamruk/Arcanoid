/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:03 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.view {
import flash.display.Shape;

import yura.arkanoid.model.BallModel;

public class BallView extends Shape{
    private var _model:BallModel;


    public function set model(model:BallModel):void {
        _model = model;
        draw();
    }

    private function draw():void {
        graphics.beginFill(0xFF0000);
        graphics.drawCircle(_model.x, _model.y, _model.radius);
        graphics.endFill();
    }


}
}
