require './player'

class Board

	def initialize(rows,columns,mines)
		@board= Array.new(rows){Array.new(columns)}
		cell=0
	end

	def render 
	   puts "------- Minesweeper--------"
       puts "---------------------------"	
       @board.each do |row|
       	 row.each do |cell|
       	  print "|"
       	  print "-"
       	  print "|"
         end
       	 puts
       end
       puts "---------------------------"
       end
	end

	

b=Board.new(9,9,10)
b.render