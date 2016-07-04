require './player'
require './cell'
require 'pry'

class Board

	def initialize(rows,columns,mines)
		@board= Array.new(rows){Array.new(columns)}
		@board.each do |row|
       	  row.each do |column|
       	  	@board[row.to_i][column.to_i]=Cell.new(row,column,'blank')
       	  end
       	end

       	mines.times do
       		randomizer = @board.sample.sample.cellmarker
       		if randomizer.include?('bomb')
       			redo
       		else randomizer.cellmarker('bomb')
       	    end
	    end

	def render 
	   puts "------- Minesweeper--------"
       puts "---------------------------"	
       @board.each do |row|
       	 row.each do |cell|
       	  print "|"
       	  if @board[row][cell].marker =='bomb'
       	    print "*"
       	  else 
       		print "-"
       	  end 
       	  print "|"
        end
       	 puts
       end
       puts "---------------------------"
       end
	end
end


b=Board.new(9,9,10)
b.render