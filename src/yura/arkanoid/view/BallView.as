/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:03 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.view {
import flash.display.Shape;
import flash.events.Event;

import yura.arkanoid.model.BallModel;

public class BallView extends Shape {


    private var _model:BallModel;
    public function set model(model:BallModel):void {
        _model = model;
        x = _model.x;
        y = _model.y;
        draw();
        model.addEventListener("locationChanged", onLocationChanged);
    }


    private function draw():void {
        graphics.beginFill(0xFF0000);
//        graphics.drawCircle(_model.x, _model.y, _model.radius);
        graphics.drawCircle(0, 0, _model.radius);
        graphics.endFill();
    }

    private function onLocationChanged(event:Event):void {
        x = _model.x;
        y = _model.y;
    }

    /*private var model:BallModel;

     public function buildByModel(ballModel:BallModel):void {
     model = ballModel;
     x = model.x;
     y = model.y;
     graphics.beginFill(0xFF0000);
     graphics.drawCircle(model.x, model.y, model.radius);
     graphics.endFill();
     ballModel.addEventListener("locationChanged", onLocationChanged);
     }

     private function onLocationChanged(event:Event):void {
     x = model.x;
     y = model.y;
     }
     */
}
}
