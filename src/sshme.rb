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

puts "Which user do you want to login as?"
user = gets.chomp
puts "Which server do you want to log in to?"
puts "You can put a domain or IP here."
server = gets.chomp
puts "You want to login to #{user}@#{server}"
system "ssh #{user}@#{server}"