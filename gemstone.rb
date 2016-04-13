lines = $stdin.gets.to_i

char_counts = Hash.new

lines.times do

  visted_chars =  Hash.new

  line = $stdin.gets.chomp
  line.unpack('C*').each do |char|
    if visted_chars[char].nil?
      char_counts[char] = 0 if  char_counts[char].nil?
      char_counts[char] += 1
      visted_chars[char] = true
    end
  end

end

output = []
char_counts.each { |key, value| output << key if value == lines   }

puts output.length