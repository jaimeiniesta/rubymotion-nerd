class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    items = 10.times.collect { Item.randomItem }
    items.each { |item| NSLog item.to_s }
  end
end
