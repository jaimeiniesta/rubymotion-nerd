class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    c = Container.new("Wooden Box", 75, '4453BCD')
    c.subitems << Item.new("Cup", 15, '234321BB')
    c.subitems << Item.new("Spoon", 5, 'A312328')
    puts c.to_s

    c2 = Container.new("Metal Box", 100, '12312312')
    c2.subitems << c
    c2.subitems << Item.new("Fork", 10, '543543543')
    puts c2.to_s
  end
end
