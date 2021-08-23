require 'pdf-reader'
require 'byebug'

reader = PDF::Reader.new("somefile.pdf")

dados = []

reader.pages.each_with_index do |page, i|
 # puts page.fonts
 # puts page.text
  dados << page.text.scan(/BRAS DE PINA .*/)
 # puts page.raw_content
  puts "=======Page: #{i+1}==========="
end

#debugger

dados.each do |dado|
  puts dado
end

x = ""