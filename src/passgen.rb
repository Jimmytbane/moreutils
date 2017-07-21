#!/usr/bin/ruby

require "io/console"
require "securerandom"

puts "Ruby can only generate a good password for you if the system"
puts "you're using has high entropy.To avoid people using a would be good method to generate poor passwords,"
puts "please confirm the following number(your Linux kernel entropy value) is greater than 2000 by pressing y or n here:"

answer1 = STDIN.getch

if answer1 == "y"
  puts "high entropy confirmed"
  system "cat /proc/sys/kernel/random/entropy_avail"
  puts SecureRandom.base64(15)
  elsif answer1 == "n"
    abort  
end
