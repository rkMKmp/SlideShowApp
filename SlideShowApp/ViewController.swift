
import UIKit

class ViewController: UIViewController {
    //各種ボタンやimageviewをアウトレットで接続する
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var slidebutton: UIButton!
    
    
    //↓画像の配列を定義する
    var imagelist = [
        UIImage(named: "うさぎ")!,
        UIImage(named:"りす")!,
        UIImage(named: "犬")!
    ]
    var nowindex:Int=0
    var check:Bool = false
    
    //タイマー
    var timer:Timer!
    //DidLoadで０番目のイメージリストにある画像を表示
    override func viewDidLoad() {
        super.viewDidLoad()
        let animalImage: UIImage = UIImage(named: "うさぎ")!
        //画面に画像を設定
        imageview.image = imagelist[nowindex]
    }
    @objc func updateTimer(_timer:Timer){
        self.nowindex += 1
        //imagelist.countはイント型の３を意味する
        if self.nowindex == imagelist.count {
            self.nowindex = 0
        }
        imageview.image = imagelist[nowindex]
        }
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        let secondviewcontroller: SecondViewController = segue.destination as!
           SecondViewController
        secondviewcontroller.image = imageview.image!
        if self.timer != nil{
            self.timer.invalidate()
        check = true
     }
     }
    //進ボタンを押した時の処理
    @IBAction func nextbutton(_sender:Any){
        self.nowindex += 1
        //imagelist.countはイント型の３を意味する
        if self.nowindex == imagelist.count {
            self.nowindex = 0
        }
        imageview.image = imagelist[nowindex]
        }
    //戻るボタンを押した時の処理
    @IBAction func backbutton(_sender:Any){
        self.nowindex -= 1
        if nowindex == -1{
            nowindex = 2
        }
        imageview.image = imagelist[nowindex]
    }
    @IBAction func slidebutton(_ sender: Any) {
     if self.timer == nil{
        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self,selector: #selector(updateTimer(_timer:)),userInfo: nil, repeats: true)
        self.slidebutton.setTitle("停止",for: .normal)
            self.nextbutton.isEnabled = false
            self.backbutton.isEnabled = false
        }
            else {
                self.timer.invalidate()
                self.timer = nil
                self.slidebutton.setTitle("再生", for: .normal)
                self.nextbutton.isEnabled = true
                self.backbutton.isEnabled = true
        }
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        if check == true{
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self,selector: #selector(updateTimer(_timer:)),userInfo: nil, repeats: true)
            self.slidebutton.setTitle("停止",for: .normal)
            self.nextbutton.isEnabled = false
            self.backbutton.isEnabled = false
        }
        }
 }



