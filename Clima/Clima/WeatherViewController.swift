import UIKit;
import CoreLocation;

class WeatherViewController: UIViewController, CLLocationManagerDelegate {
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather";
    let APP_KEY = "8e7e5ad91b6ab8cee2866027ff6491d1";

    let LocationMAnager = CLLocationManager();

    @IBOutlet weak var weatherIcon: UIImageView!;
    @IBOutlet weak var cityLabel: UILabel!;
    @IBOutlet weak var temperatureLabel: UILabel!;

    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        LocationMAnager.delegate = self;
        LocationMAnager.desiredAccuracy = kCLLocationAccuracyKilometer;
        LocationMAnager.requestWhenInUseAuthorization();
        LocationMAnager.startUpdatingLocation();
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1];
        if (location.horizontalAccuracy > 0) {
            manager.stopUpdatingLocation();
            let lat = location.coordinate.latitude;
            let lon = location.coordinate.longitude;
            print("lon = \(lon), lat = \(lat)");
            let params: [String: String] = [
                "lat": String(lat),
                "lon": String(lon),
                "appid": APP_KEY,
            ];
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error);
        cityLabel.text = "Location is not available"
    }
}


