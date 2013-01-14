class GreenController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.greenColor

    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setFrame([[100, 100], [400, 100]])
    @button.setTitle('Push me Red!', forState:UIControlStateNormal)
    @button.addTarget(self, action:'pushRed', forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview(@button)


    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setFrame([[100, 300], [400, 100]])
    @button.setTitle('Push me Blue!', forState:UIControlStateNormal)
    @button.addTarget(self, action:'pushBlue', forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview(@button)

  end

  def pushRed


    @redViewController  = RedController.alloc.initWithNibName(nil, bundle: nil)
    @navController = self.navigationController
    @navController.pushViewController(@redViewController, animated:true)

  end

  def pushBlue


    @blueViewController  = BlueController.alloc.initWithNibName(nil, bundle: nil)
    @navController = self.navigationController
    @navController.pushViewController(@blueViewController, animated:true)

  end

end
