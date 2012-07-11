/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:29 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.model {
public class BrickModel {
    public var x:uint;
    public var y:uint;
    public var brickHight:uint = 20;
    public var brickWidth:uint = 40;


    public function BrickModel(x:uint, y:uint) {
        this.x = x;
        this.y = y;
    }
}
}
