#!/usr/bin/env ruby

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
   along with this program.  If not, see <https://www.gnu.org/licenses/>.
=end

trap "SIGINT" do
  abort
end

puts "What's the number one server OS in the world?"
lignux = gets.downcase.chomp
system "clear"

if (lignux == "linux")
    puts "
    I'd like to interject for a moment-- 
    what you've referred to as a #{lignux} is in fact, GNU/#{lignux}
    or, as I've recently taken to calling it, GNU plus #{lignux}
    "
elsif (lignux == "gnu/linux"|| lignux == "gnu plus linux" || lignux == "gnu + linux" || lignux == "lignux")
    puts "That's right!"
else
    puts "#{lignux} is not the number on server OS in the world..."
end