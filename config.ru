# config.ru
require 'rack'
class MiPrimeraWebApp
 def call(env)
  if env['REQUEST_PATH'] == '/index'
    [200, { 'Content-Type' => 'text/html' }, ['<h1>Te encuentras en el index</h1>']]
  elsif env['REQUEST_PATH'] == '/otro'
    [200, { 'Content-Type' => 'text/html' }, ['<h1>Te encuentras en otro landing</h1>']]
  else
    [404, { 'Content-Type' => 'text/html' }, [File.read('index.html')]]
  end
 end
end
run MiPrimeraWebApp.new
