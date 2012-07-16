package {

import flash.display.Sprite;

public class Testing extends Sprite {
    public function Testing() {
//        var textField:TextField = new TextField();
//        textField.text = "Hello, World";
//        addChild(textField);
//        var ball:Ball = new Ball();
//        ball.draw();
//        addChild(ball);
        var firstLevel:FirstLevelController = new FirstLevelController(stage);
        addChild(firstLevel);
    }
}
}
