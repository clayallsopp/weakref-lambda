class AppDelegate
  def self.instance
    @@instance
  end

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @@instance = self

    # uncomment to make it work
=begin
    @callback = lambda {|msg|
      puts "msg: #{msg}"
    }
=end

    @callback = WeakRef.new(lambda {|msg|
      puts "msg: #{msg}"
    })

    true
  end
end
