#!/usr/bin/env ruby -w

$:.unshift File.join( File.dirname( __FILE__ ), '..', 'lib' )

require 'test/unit'
require 'terminal-display-colors'

class TestNamedColors < Test::Unit::TestCase

  def setup
    @colors = {
      'black'   => "\e[30m",
      'red'     => "\e[31m",
      'green'   => "\e[32m",
      'yellow'  => "\e[33m",
      'blue'    => "\e[34m",
      'magenta' => "\e[35m",
      'cyan'    => "\e[36m",
      'gray'    => "\e[37m",

      'dark_gray'       => "\e[90m",
      'bright_red'      => "\e[91m",
      'bright_green'    => "\e[92m",
      'bright_yellow'   => "\e[93m",
      'bright_blue'     => "\e[94m",
      'bright_magenta'  => "\e[95m",
      'bright_cyan'     => "\e[96m",
      'white'           => "\e[97m",
    }
    @backgrounds = {
      'black_background'    => "\e[40m",
      'red_background'      => "\e[41m",
      'green_background'    => "\e[42m",
      'yellow_background'   => "\e[43m",
      'blue_background'     => "\e[44m",
      'magenta_background'  => "\e[45m",
      'cyan_background'     => "\e[46m",
      'gray_background'    => "\e[47m",

      'dark_gray_background'      => "\e[100m",
      'bright_red_background'     => "\e[101m",
      'bright_green_background'   => "\e[102m",
      'bright_yellow_background'  => "\e[103m",
      'bright_blue_background'    => "\e[104m",
      'bright_magenta_background' => "\e[105m",
      'bright_cyan_background'    => "\e[106m",
      'white_background'          => "\e[107m"
    }
    @ending  = "\e[00m"
  end
  
  def test_named_colors
    @colors.each do |color, code|
      assert_equal( "#{ code }Testing #{ color } text.#{ @ending }", "Testing #{ color } text.".send( color ) )
    end
  end
  
  def test_named_backgrounds
    @backgrounds.each do |background, code|
      assert_equal( "#{ code }Testing #{ background } background.#{ @ending }", "Testing #{ background } background.".send( background ) )
    end
  end
  
  def test_named_colors_and_backgrounds
    @colors.each do |color, color_code|
      @backgrounds.each do |background, background_code|
        assert_equal( "#{ color_code }#{ background_code }Testing #{ color } text with #{ background } background.#{ @ending }#{ @ending }", "Testing #{ color } text with #{ background } background.".send( background ).send( color ) )
        assert_equal( "#{ background_code }#{ color_code }Testing #{ background } background with #{ color } text.#{ @ending }#{ @ending }", "Testing #{ background } background with #{ color } text.".send( color ).send( background ) )
      end
    end
  end
end
