/**
 * Created with IntelliJ IDEA.
 * User: yura
 * Date: 7/10/12
 * Time: 8:10 PM
 * To change this template use File | Settings | File Templates.
 */
package yura.arkanoid.model {
public class FieldModel {
    public var width:uint;
    public var height:uint;
    public var bricks:Vector.<BrickModel>  = new Vector.<BrickModel>();
    public var puddle:PuddleModel;
    public var ball:BallModel;
    public function FieldModel() {
           this.width = 200;
           this.height = 300;
    }
}
}
