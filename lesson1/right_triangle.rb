puts "Введите длинну стороны 1:"
first = gets.chomp.to_f
puts "Введите длинну стороны 2:"
second = gets.chomp.to_f
puts "Введите длинну стороны 3:"
third = gets.chomp.to_f

cathetus1, cathetus2, hypotenuse = [first, second, third].sort!
right_triangle = cathetus1**2 + cathetus2**2 == hypotenuse**2
isosceles_triangle = first == second && second == third
equilateral_triangle = first == second || second == third || first == third

if right_triangle
  puts "Треугольник является прямоугольным"
else
  puts "Треугольник не является прямоугольным"
end

puts "Треугольник является равносторонним и равнобедренным" if equilateral_triangle
puts "Треугольник является равносторонним" if equilateral_triangle