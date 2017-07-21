#!/usr/bin/ruby

=begin
   Copyright (C) <2017>  <jimmybot@teknik.io>
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published
   by the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.
   You should have received a copy of the GNU Affero General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
=end

trap "SIGINT" do
  abort
end

require "io/console"
require "securerandom"

output = `cat /proc/sys/kernel/random/entropy_avail`

puts "Ruby can only generate a good password for you if the system"
puts "you're using has high entropy.To avoid people using a would be good method to generate poor passwords,"
puts "please confirm the following number: --> #{output}(your Linux kernel entropy value) is GREATER THAN 2000 by pressing y or n here:"

answer1 = STDIN.getch

if answer1 == "y" 
	
	puts "high entropy confirmed"
  
	puts SecureRandom.base64(15)
  
elsif answer1 == "n"
    abort  
end
type 
