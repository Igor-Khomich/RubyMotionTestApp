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
    #puts blockBuilder_.methods.sort

    reader = blockBuilder_.itemsReaderWithRequest()
    callback = blockBuilder_.itemsReaderCallback()
    
      
      #error_ptr = Pointer.new(:object)
    rCallback = lambda do |result, error|
        puts '[EXECUTE] Ruby callback'
        puts 'result : ' + result.to_s()
        
        #callback.objc_BlockSend( result, error )
        #return
    end
    puts 'rCallback.class : ' + rCallback.class.to_s()
    puts 'rCallback.methods : '
    puts rCallback.methods.sort()
    puts '---------'
      
    puts 'reader.class   : ' + reader.class.to_s()
    puts 'callback.class : ' + callback.class.to_s()
      
    reader.objc_BlockSend( [ callback ] )
     #reader.objc_BlockSend( [ rCallback ] )

    
      
    #blockBuilder_ = BlockBuilder.new()
    #greetingConstructor_ = blockBuilder_.createHelloBuilder()
    #
    #puts greetingConstructor_.class
    #puts greetingConstructor_.methods.sort
    #
    #greeting_ = greetingConstructor_.objc_BlockSend0()
    #puts( greeting_ )
    #puts greeting_.class
    #
    #
    #alert = UIAlertView.new
    #alert.message = greeting_
    #alert.title = "Hello World!"
    #alert.addButtonWithTitle( 'OK' )
    #alert.show




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



  def LoadLastItems

    #rootPath_ = "http://mobilesdk.sc-demo.net"
    #listOfViewControllers = NSMutableArray.new
    #titleFieldName_ = "Menu title"
    #iconFieldName_  = "Tab Icon"
    #
    #context_ = SCApiContext.contextWithHost("mobilesdk.sc-demo.net/-/item")
    #fieldsNames_ = NSSet.setWithObjects( titleFieldName_, iconFieldName_, nil)
    #itemPath_ = "/sitecore/content/nicam"
    #
    #request_ = SCItemsReaderRequest.requestWithItemPath(itemPath_, fieldsNames: fieldsNames_)
    #request_.flags = SCItemReaderRequestReadFieldsValues

    request = SCItemsReaderRequest.new
    request.request = "/sitecore/content/Nicam"
    request.requestType = SCItemReaderRequestItemPath
    request.scope = SCItemReaderSelfScope | SCItemReaderChildrenScope
    request.fieldNames = NSSet.set
    puts request.class

    host = "mobilesdk.sc-demo.net/-/item"
    puts host.class

    #puts SCApiContext.class
    #puts SCApiContext.methods.sort()
    context_ = SCApiContext.contextWithHost(host)
    puts context_.class


    operation = context_.itemsReaderWithRequest(request)
    puts operation.class

    callback = lambda do | result, error |
      puts result.class
      puts result.objectAtIndex(0).class
    end

    operation.objc_BlockSend_Noreturn( [ callback ] )


  end


end
