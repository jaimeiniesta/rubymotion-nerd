class Container < Item
  attr_accessor :subitems

  def initialize(item_name = "Item", value_in_dollars = 0, serial_number = "")
    super(item_name, value_in_dollars, serial_number)
    @subitems = []
  end

  # Returns the sum of the container's value and the value of all its subitems
  def total_value_in_dollars
    subitems.inject(value_in_dollars) { |sum, subitem|
                                        sum + ((subitem.is_a? Container) ? subitem.total_value_in_dollars : subitem.value_in_dollars) }
  end

  # Returns the description of the container and all the subitems it contains
  def to_s(indent = 0)
    description = "#{'  '*indent}#{item_name} (#{serial_number}): Worth $#{value_in_dollars}, Total Worth $#{total_value_in_dollars}, recorded on #{date_created}"
    subitems.each do |subitem|
      description += "\n#{subitem.to_s(indent + 1)}"
    end
    description
  end
end
