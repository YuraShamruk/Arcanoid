/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:08 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.controller {
import flash.display.Sprite;
import flash.events.KeyboardEvent;
import flash.ui.Keyboard;

import yura.arkanoid.KeyboardManager;

import yura.arkanoid.model.FieldModel;
import yura.arkanoid.model.PuddleModel;
import yura.arkanoid.view.FieldView;
import yura.arkanoid.view.PuddleView;

public class PuddleController {
    private var puddleModel:PuddleModel = new PuddleModel();
    private var minX:uint;
    private var maxX:uint;

    public function PuddleController(fieldModel:FieldModel, spriteForKeys:Sprite) {
        this.puddleModel = fieldModel.puddle;
        minX = 0;
        maxX = fieldModel.width;
        KeyboardManager.instance.addEventListener(KeyboardEvent.KEY_DOWN, keyPressedDown);
    }

    private function keyPressedDown(event:KeyboardEvent):void {
       var key:uint = event.keyCode;
       var step:uint = 5
       switch (key) {
           case Keyboard.LEFT :
             puddleModel.x -= step;
             break;
           case Keyboard.RIGHT :
             puddleModel.x += step;
             break;

       }
       puddleModel.locationChanged();
     }
}
}
