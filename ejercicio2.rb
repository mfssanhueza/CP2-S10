module Formula
  attr_reader :largo, :ancho, :lado

  def perimetro(lado1, lado2)
    perimeter = (lado1 * 2) + (lado2 * 2)
    puts "El perímetro es de #{perimeter}"
  end

  def area(lado1, lado2)
    area = lado1 * lado2
    puts "el área es de #{area}"
  end

  def perimetro2
    perimeter = (largo * 2) + (ancho * 2)
    puts "El perímetro es de #{perimeter}"
  end

end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    print "Largo: #{@largo}\nAncho: #{@ancho}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    print "Los lados del cuadrado miden #{@lado}"
  end
end


x = Rectangulo.new(10, 6)
x.perimetro2
y = Cuadrado.new(15)
y.area(y.lado, y.lado)
