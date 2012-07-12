package yura.arkanoid {

import flash.display.Sprite;

import yura.arkanoid.controller.LevelController;
import yura.arkanoid.manager.KeyboardManager;
import yura.arkanoid.manager.MouseManager;

public class Arkanoid extends Sprite {
    public function Arkanoid() {
        MouseManager.instance.init(stage);
        KeyboardManager.instance.init(stage);
        var levelController:LevelController = new LevelController();
        addChild(levelController.field);
    }
}
}
