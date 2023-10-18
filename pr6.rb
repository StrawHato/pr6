def valid_ipv4?(str)
  parts = str.split(".")

  return false unless parts.length == 4

  parts.each do |part|
    return false unless part.match?(/^\d+$/)

    num = part.to_i
    return false unless num >= 0 && num <= 255

    return false unless part == "0" || !part.start_with?("0")
  end

  return true
end

puts valid_ipv4?("192.168.1.1")
puts valid_ipv4?("0.0.0.0")
puts valid_ipv4?("255.255.255.255")
puts valid_ipv4?("256.0.0.1")
puts valid_ipv4?("01.1.1.1")
puts valid_ipv4?("192.168.01.1")
puts valid_ipv4?("192.168.1.1.1")
