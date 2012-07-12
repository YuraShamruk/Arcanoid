/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:13 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.view {
import flash.display.Sprite;

import yura.arkanoid.model.BrickModel;
import yura.arkanoid.model.FieldModel;

public class FieldView extends Sprite {
    public function FieldView() {

    }

    public function buildByModel(fieldModel:FieldModel):void {
        graphics.beginFill(0x000000);
        graphics.drawRect(0, 0, fieldModel.width, fieldModel.height);
        graphics.endFill();
        for each(var brickModel:BrickModel in fieldModel.bricks) {
            var brickView:BrickView = new BrickView(brickModel);
            brickView.buildByModel(brickModel);
            addChild(brickView);
        }
        var puddleView:PuddleView = new PuddleView();
        puddleView.buildByModel(fieldModel.puddle);
        addChild(puddleView);
        var ballView:BallView = new BallView();
        ballView.model = fieldModel.ball;
        //ballView.buildByModel(fieldModel.ball);
        addChild(ballView);

    }
}
}
