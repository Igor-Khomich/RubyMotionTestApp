class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
      
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    # This is our new line!
    #@redViewController  = RedController.alloc.initWithNibName(nil, bundle: nil)
    #@blueViewController  = BlueController.alloc.initWithNibName(nil, bundle: nil)
    #@greenViewController  = GreenController.alloc.initWithNibName(nil, bundle: nil)
    #@navController = UINavigationController.alloc.initWithRootViewController(@greenViewController)
    #@window.rootViewController = @navController
    
    #@navController.pushViewController(@redViewController, animated:true) 
   # @navController.pushViewController(@blueViewController, animated:true) 

    
      @blue_view = UIView.alloc.initWithFrame(CGRectMake(10, 10, 100, 100))
        @blue_view.backgroundColor = UIColor.blueColor
        @window.addSubview(@blue_view)

        @green_view = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
        @green_view.backgroundColor = UIColor.greenColor
        @window.addSubview(@green_view)

       @red_view  = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
        @red_view.backgroundColor = UIColor.redColor
       @blue_view.addSubview(@red_view)
    true
  end
end
