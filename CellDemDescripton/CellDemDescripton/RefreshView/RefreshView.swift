
import UIKit

class SinaRefreshView: UIView {
    
    @IBOutlet weak var pullView: UIView!

    @IBOutlet weak var pullImageView: UIImageView!
    
    @IBOutlet weak var loadingImageView: UIImageView!
    
    //添加动画
    func loadingAnmation(){

        let animation = CABasicAnimation(keyPath: "transform.rotation")
        
        animation.toValue = 2 * M_PI
        
        animation.duration = 2
        
        animation.repeatCount = MAXFLOAT
        
        animation.removedOnCompletion = false

        loadingImageView.layer.addAnimation(animation, forKey: nil)
        
    }
    
    // 移除所有动画
    func removeAnimation(){
        
        loadingImageView.layer.removeAllAnimations()
        
    }
    // 下拉刷新的动画
    func startTurn(){
        
        UIView.animateWithDuration(1) { () -> Void in
        
            self.pullImageView.transform = CGAffineTransformRotate(self.pullImageView.transform, CGFloat(M_PI))
            
        }
        
    }
    
}
