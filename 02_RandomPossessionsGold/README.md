# Random Possessions Gold

This is the Gold challenge for exercise 02.

In it, we practice inheritance: a Container is an Item that can contain other Items (or Containers).

Notice that the model files have been named in the correct order for the compiler to compile them. If you name them "item.rb" and "container.rb", the compiler will crash as it will try first with "container.rb", but still doesn't know what an Item is.

Another solution would be defining both classes on the same file, or declaring them in the correct order in app.files on the Rakefile.

Thanks @colinta and @cirwin on the #RubyMotion channel!
