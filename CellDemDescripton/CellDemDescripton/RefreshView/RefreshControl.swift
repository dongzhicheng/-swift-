
import UIKit
import SnapKit
/*
    swift中单利的书写方式   static let sharedInstance = TheOneAndOnlyKraken()


*/

class SinaRefreshControl: UIRefreshControl {

    override init() {
        
        super.init()
        
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }

    private func setupUI(){

        tintColor = UIColor.clearColor()

        addSubview(refreshView)
        
        refreshView.snp_makeConstraints { (make) -> Void in

            make.center.equalTo(self.snp_center)
            
            // 宽高
            make.width.equalTo(160)
            
            make.height.equalTo(60)
        }

        addObserver(self, forKeyPath: "frame", options: [], context: nil)
    }

    
    // 下拉
    var isTurn: Bool = false
    // 这个标记是用于 loading加载的
    var isLoading: Bool = false

    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {

        if refreshing && !isLoading{

            refreshView.pullView.hidden = true
            
            // 转动的动画
            refreshView.loadingAnmation()
            
            isLoading = true
            
        }
        
        if object?.frame.origin.y < -50 && !isTurn{

            isTurn = true

            refreshView.startTurn()
            
        } else if object?.frame.origin.y > -50 && isTurn{
 
            isTurn = false
            
            refreshView.startTurn()
        }
    }
    
    override func endRefreshing() {

        super.endRefreshing()
        
        // 第一件事,把转动的动画移除
        refreshView.removeAnimation()
        // 第二件事,让下拉刷新视图 显示
        refreshView.pullView.hidden = false
        // 第三件事,恢复开关状态
        isLoading = false
        
    }
    
    deinit{
        
        removeObserver(self, forKeyPath: "frame")
        
    }

    lazy var refreshView: SinaRefreshView = NSBundle.mainBundle().loadNibNamed("SinaRefreshView", owner: nil, options: nil).last as! SinaRefreshView
}
