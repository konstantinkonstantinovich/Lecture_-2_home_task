class Drinks
  def initialize(array)
    @array = array
  end

  def item_in_stock
    result = []
    @array.each do |data|
      if data[:quantity_by_size] != {}
        result.push(data[:name])
      end
    end
    return result
  end

  def afforbadle
    result = []
    @array.each { |data| result.push(data) if data[:price] <= 50}
    return result
  end

  def out_of_stock
    result = []
    @array.each { |data| result.push(data) if data[:quantity_by_size] == {}}
    return result
  end

  def how_much_left(str)
    result = nil
    @array.each { |data| result = data[:quantity_by_size] if data[:name] == str }
    result
  end

  def total_stock
    sum = 0
    @array.each do |data|
       data[:quantity_by_size].each do |key, value|
         sum += value
       end
    end
    return sum
  end

  def to_s
    print @array

  end
end


inventory = [
  {price: 125.00, name: "Cola", quantity_by_size: {l033: 3, l05: 7, l1: 8, l2: 4}},
  {price: 40.00, name: "Pepsi", quantity_by_size: {}},
  {price: 39.99, name: "Water", quantity_by_size: {l033: 1, l2: 4}},
  {price: 70.00, name: "Juice", quantity_by_size: {l033: 7, l05: 2}}
]

a = Drinks.new(inventory)


print a.item_in_stock
puts
puts '###################'
puts a.afforbadle
puts '###################'

print a.out_of_stock
puts
puts '###################'
print a.how_much_left('Cola')
puts
puts '###################'
print a.total_stock
