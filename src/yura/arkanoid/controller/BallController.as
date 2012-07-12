/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:10 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.controller {
import flash.display.Sprite;
import flash.events.Event;

import yura.arkanoid.model.FieldModel;

public class BallController {
    private var minX:uint;
    private var maxX:uint;
    private var minY:uint;
    private var maxY:uint;

    //private var ballModel:BallModel = new BallModel()
    public function BallController(fieldModel:FieldModel, spriteForKeys:Sprite) {
        minX = 0;
        minY = 0;
        maxX = fieldModel.width;
        maxY = fieldModel.height;
        new Sprite().addEventListener(Event.ENTER_FRAME, onFrame)
    }

    private function onFrame(event:Event):void {
        trace("asda");
        // move ball
    }
}
}
