class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1.to_i
    @nota2 = nota2.to_i
    @nota3 = nota3.to_i
    @nota4 = nota4.to_i
  end
  def self.read_file( file = 'ejercicio1.txt')
    alumnos = []
    data = []
    File.open(file, 'r') { |doc| data = doc.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    print alumnos
  end
end

Alumno.read_file
