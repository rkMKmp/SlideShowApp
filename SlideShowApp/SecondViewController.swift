
import UIKit

class SecondViewController: UIViewController {
//uiimageviewをアウトレット接続する

    @IBOutlet weak var imageview: UIImageView!
    //viewcontrollerから送られてくるimageを入れるための変数を定義する
    var image = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = image
//uiイメージビューに送られてきたイメージを入れて表示させる
    }

}
