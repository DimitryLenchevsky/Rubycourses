purchase = {}
loop do
    puts "Введите название товара:"
    product_name = gets.chomp
    break if product_name == "stop"
    puts "Введите цену за товар:"
    product_price = gets.chomp.to_f
    puts "Введите количество приобретаемого товара:"
    product_quantity = gets.chomp.to_f
    purchase[product_name] = {price: product_price, quantity: product_quantity}
end

puts "Хэш: #{purchase}"

sum = 0
purchase.each do |product_name, product_info|
  product_price = product_info[:price] * product_info[:quantity]
  sum += product_price
  puts "#{product_name}: #{product_price}"
end

puts "Сумма товаров в корзине: #{sum}"