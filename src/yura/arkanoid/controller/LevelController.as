/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:20 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.controller {
import yura.arkanoid.model.BallModel;
import yura.arkanoid.model.BrickModel;
import yura.arkanoid.model.FieldModel;
import yura.arkanoid.model.PuddleModel;
import yura.arkanoid.view.FieldView;

public class LevelController {
    public var field:FieldView = new FieldView();
    private var fieldModel:FieldModel = new FieldModel();

    private var puddleController:PuddleController;
    private var ballController:BallController;

    public function LevelController() {
        buildFirstLevel();
        puddleController = new PuddleController(fieldModel, field);
        ballController = new BallController(fieldModel, field);
        field.buildByModel(fieldModel);
    }

    private function buildFirstLevel():void {
        fieldModel.bricks.push(new BrickModel(10, 10));
        fieldModel.bricks.push(new BrickModel(60, 10));
        fieldModel.bricks.push(new BrickModel(30, 50));
        fieldModel.puddle = new PuddleModel();
        fieldModel.ball = new BallModel(fieldModel.puddle.x, fieldModel.puddle.y);
    }
}
}
