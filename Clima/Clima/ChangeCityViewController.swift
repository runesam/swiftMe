
import UIKit

class ChangeCityViewController: UIViewController {
    @IBOutlet weak var changeCityTextField: UITextField!

    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        
        //1 Get the city name the user entered in the text field
        
        
        //2 If we have a delegate set, call the method userEnteredANewCityName
        
        
        //3 dismiss the Change City View Controller to go back to the WeatherViewController
        
        
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
