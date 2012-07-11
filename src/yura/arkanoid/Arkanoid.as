package yura.arkanoid {

import flash.display.Sprite;

import yura.arkanoid.controller.LevelController;

public class Arkanoid extends Sprite {
    public function Arkanoid() {
        KeyboardManager.instance.init(stage);
        var levelController:LevelController = new LevelController();
        addChild(levelController.field);
    }
}
}
