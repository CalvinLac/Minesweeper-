require './player'
require './board'
require 'colorize'
require 'pry'

class Game
attr_reader :difficulty , :player , :grid

  def initialize
    @board
    puts "What is your name"
    name = gets.chomp
    @player=Player.new(name)
  end

  def intro
    puts "Welcome to Minesweeper, have fun and dont step on any mines!".blue
  end

  def select_difficulty
    puts "Please select your difficulty, 1:easy 2:medium 3:hard"
    difficulty=gets.chomp
    game_mode(difficulty)
  end

  def game_mode(difficulty)
    if difficulty=='1'
      @board=Board.new(9,9,10,@player)
    elsif difficulty=='2'
      @board=Board.new(16,16,40,@player)
    elsif difficulty=='3'
      @board=Board.new(16,30,99,@player) 
    end
  end

  def play
    intro
    select_difficulty
    while true 
      @board.render 
      @player.coordinates
      break if game_over?
      @board.set_value(@player.coord)
    end
    puts "game over"
  end

  def game_over?
    print @player.coord
    if @board.is_bomb?(@player.coord)
      puts "hihi"
      return true
    else
      return false
    end
  end

end

g=Game.new
g.play