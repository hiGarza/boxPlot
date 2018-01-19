require 'chunky_png'

min = ARGV[0].to_i
max = ARGV[4].to_i
q1 = 40+(((ARGV[1].to_i-min)*460)/(max-min))
q2 = 40+(((ARGV[2].to_i-min)*460)/(max-min))
q3 = 40+(((ARGV[3].to_i-min)*460)/(max-min))


png = ChunkyPNG::Image.new(540, 200, ChunkyPNG::Color::TRANSPARENT)
black = ChunkyPNG::Color.rgba(0, 0, 0, 255)
gray = ChunkyPNG::Color.rgba(115, 115, 115, 255)

png.rect(40,80,42,120,black,black)
png.rect(40,99,q1,101,black,black)
png.rect(q1,50,q2,150,black,gray)
png.rect(q2,50,q3,150,black,gray)
png.rect(q3,99,500,101,black,black)
png.rect(498,80,500,120,black,black)

png.save('filename.png', :interlace => true)