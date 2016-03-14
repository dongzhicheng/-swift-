
import UIKit

class ViewController: baseUITableViewController,heardImageDelegateProtocol{
    
 
    @IBOutlet var baseTabelView: UITableView!
    
    func imageCellClick() {
        
        self.navigationController?.pushViewController(secondTabelViewController(), animated: true) //实现代理方法  然后去切换控制器到 secondTabelViewController
    }

    var numZu : [CellModel] = [] //初始化一个数组
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRefresh()//开始刷新数据
        setModelData() //转成模型数据
        
    }
    
    func setupRefresh(){
        
//MARK自定义的下拉控件
        refreshControl = RefreshControl()
        refreshControl!.addTarget(self, action:"startRefreshData", forControlEvents: UIControlEvents.ValueChanged)
        
        
//MARK下边这个是系统本身带的刷新功能
        
//        self.refreshControl?.addTarget(self, action:"startRefreshData", forControlEvents: UIControlEvents.ValueChanged) // 值改变的时候刷新数据
//        self.refreshControl?.attributedTitle = NSAttributedString(string: "不要急正在拼命刷新")
//        
//        self.refreshControl?.tintColor = UIColor.redColor()
        
//        baseTabelView.addSubview(refreshController)
        
    }
    
    func startRefreshData() {//刷新数据的方法
        
        self.performSelector(Selector("endRefreshTbaleView"), withObject: nil, afterDelay: 3)
        
    }
    
    func endRefreshTbaleView() {
        
        self.refreshControl?.endRefreshing()
    }
    
    func setModelData(){
        
        let image = UIImage()
        
        let imageSecond = UIImage()
        
        let firstCellModel = CellModel(name: "nvli", age: 22, image: image, identify: "TableViewCellIdentif")
        
        let secondCellModel = CellModel(name: "小王", age: 33, image: imageSecond, identify: "secondTableViewCellIdentif")
        
        for var i = 0 ; i < 20 ; i++ {
            
            numZu.append(firstCellModel)
            
            numZu.append(secondCellModel)
        }
        
        
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return numZu.count
    }
    //返回怎样的cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let model = numZu[indexPath.row]
 
        let cell = tableView.dequeueReusableCellWithIdentifier(model.identify!, forIndexPath: indexPath) as!TableViewCell
        
        cell.cellModel = self.numZu[indexPath.row]
        
        cell.delegate = self //设置代理
        
        return cell

    }
    
    
}

//对类进行扩展
extension ViewController {

}
