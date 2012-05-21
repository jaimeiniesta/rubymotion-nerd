require_relative 'item'

items = 10.times.collect { Item.randomItem }
items.each { |item| puts item }
