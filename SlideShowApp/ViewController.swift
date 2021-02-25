
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
        imageview.image = animalImage
    }
    @objc func updateTimer(_timer:Timer){
        self.nowindex += 1
        
        if self.nowindex == 2{
            self.nowindex = 0
        }
        }
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        let
        if self.timer! = nil{
            self.timer.invalidate()
        check = true
     }
     }
    //進ボタンを押した時の処理
    @IBAction func backimage(_sender:Any){
        if() {
            
        }
     }
    //戻るボタンを押した時の処理
    @IBAction func backimage(_sender:Any){
        if(){
            
        }
    }
    
 }



