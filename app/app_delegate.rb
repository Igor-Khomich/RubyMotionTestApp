class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
      
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    @redViewController  = RedController.alloc.initWithNibName(nil, bundle: nil)
    @blueViewController  = BlueController.alloc.initWithNibName(nil, bundle: nil)
    @greenViewController  = GreenController.alloc.initWithNibName(nil, bundle: nil)
    @navController = UINavigationController.alloc.initWithRootViewController(@greenViewController)
    @window.rootViewController = @navController

    blockBuilder_ = BlockBuilder.new()
    greetingConstructor_ = blockBuilder_.createHelloBuilder()

    puts greetingConstructor_.class
    puts greetingConstructor_.methods.sort

    greeting_ = greetingConstructor_.objc_BlockSend0()
    puts( greeting_ )
    puts greeting_.class


    alert = UIAlertView.new
    alert.message = greeting_
    alert.title = "Hello World!"
    alert.addButtonWithTitle( 'OK' )
    alert.show

    #alert_ = UIAlertView.alloc().initWithTitle( 'Hello', message : greeting_, delegate : nil, cancelButtonTitle : 'OK', otherButtonTitles : ['NO'] )
    #alert_.show()


    #@navController.pushViewController(@redViewController, animated:false)
    #@navController.pushViewController(@blueViewController, animated:false)

    
      #@blue_view = UIView.alloc.initWithFrame(CGRectMake(10, 10, 100, 100))
      #  @blue_view.backgroundColor = UIColor.blueColor
      #  @window.addSubview(@blue_view)
      #
      #  @green_view = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
      #  @green_view.backgroundColor = UIColor.greenColor
      #  @window.addSubview(@green_view)
      #
      # @red_view  = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
      #  @red_view.backgroundColor = UIColor.redColor
      # @blue_view.addSubview(@red_view)

  end
end
