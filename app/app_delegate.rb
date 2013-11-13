class AppDelegate
  def self.instance
    @@instance
  end

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @@instance = self

    @callback = WeakRef.new(lambda {|msg|
      puts "msg: #{msg}"
    })

    true
  end
end
