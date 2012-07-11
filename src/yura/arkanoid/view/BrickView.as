/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:02 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.view {
import flash.display.Shape;

import yura.arkanoid.model.BrickModel;

public class BrickView extends Shape{
    private var brickModel:BrickModel;

    public function BrickView(brickModel:BrickModel) {
        this.brickModel = brickModel;
        draw();
    }

    private function draw():void {
        graphics.beginFill(Math.random() * 0xFFFFFF);
        graphics.drawRect(0, 0, brickModel.brickWidth, brickModel.brickHight);
        graphics.endFill();
    }

    public function buildByModel(brickModel:BrickModel):void {
        x = brickModel.x;
        y = brickModel.y;
    }
}
}
