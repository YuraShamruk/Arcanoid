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

import yura.arkanoid.model.PuddleModel;

public class PuddleView extends Shape {
    private var model:PuddleModel;


    public function buildByModel(puddleModel:PuddleModel):void {
        model = puddleModel;
        x = puddleModel.x;
        y = puddleModel.y;
        graphics.beginFill(0xFF00FF);
        graphics.drawRect(0, 0, puddleModel.width, puddleModel.height);
        graphics.endFill();
        puddleModel.addEventListener("locationChanged", onLocationChanged);
    }

    private function onLocationChanged(event:Event):void {
        x =  model.x;
    }
}
}
