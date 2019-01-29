# ABOtpView

[![CI Status](https://img.shields.io/travis/anuranBarman/ABOtpView.svg?style=flat)](https://travis-ci.org/anuranBarman/ABOtpView)
[![Version](https://img.shields.io/cocoapods/v/ABOtpView.svg?style=flat)](https://cocoapods.org/pods/ABOtpView)
[![License](https://img.shields.io/cocoapods/l/ABOtpView.svg?style=flat)](https://cocoapods.org/pods/ABOtpView)
[![Platform](https://img.shields.io/cocoapods/p/ABOtpView.svg?style=flat)](https://cocoapods.org/pods/ABOtpView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ABOtpView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ABOtpView'
```

## Usage

```swift
class ViewController: UIViewController,ABOtpViewDelegate {

        override func viewDidLoad() {
            super.viewDidLoad()

            let label = UILabel(frame: CGRect(x: 0, y: 50, width:UIScreen.main.bounds.size.width, height: 60))
            label.text = "ABOtpView"
            label.font = UIFont.boldSystemFont(ofSize: 50.0)
            label.textColor = .black
            label.textAlignment = .center

            self.view.addSubview(label)

            let otpView = ABOtpView(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.size.width, height: 60), numberOfDigits: 6,     borderType: .ROUND, borderColor: .blue,delegate:self)
            self.view.addSubview(otpView)

            let otpView2 = ABOtpView(frame: CGRect(x: 0, y: 300, width: UIScreen.main.bounds.size.width, height: 60), numberOfDigits: 4, borderType: .SEMI_ROUND, borderColor: .red,delegate:self)
            self.view.addSubview(otpView2)

            let otpView3 = ABOtpView(frame: CGRect(x: 0, y: 400, width: UIScreen.main.bounds.size.width, height: 60), numberOfDigits: 5, borderType: .SQUARE, borderColor: .black,delegate:self)
           
           
           self.view.addSubview(otpView3)

        }

        func didEnterOTP(otp: String) {
            print(otp)
        }


}

```


## Author

anuranBarman, anuranbarman2k15@rediffmail.com

## License

ABOtpView is available under the MIT license. See the LICENSE file for more info.
