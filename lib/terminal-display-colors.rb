$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module TerminalDispayColors
  VERSION = '0.1.0'

  colors = {
    'black'   => "\033[30m",
    'red'     => "\033[31m",
    'green'   => "\033[32m",
    'yellow'  => "\033[33m",
    'blue'    => "\033[34m",
    'magenta' => "\033[35m",
    'cyan'    => "\033[36m",
    'gray'    => "\033[37m",

    'dark_gray'       => "\033[90m",
    'bright_red'      => "\033[91m",
    'bright_green'    => "\033[92m",
    'bright_yellow'   => "\033[93m",
    'bright_blue'     => "\033[94m",
    'bright_magenta'  => "\033[95m",
    'bright_cyan'     => "\033[96m",
    'white'           => "\033[97m",

    'black_background'    => "\033[40m",
    'red_background'      => "\033[41m",
    'green_background'    => "\033[42m",
    'yellow_background'   => "\033[43m",
    'blue_background'     => "\033[44m",
    'magenta_background'  => "\033[45m",
    'cyan_background'     => "\033[46m",
    'gray_background'     => "\033[47m",

    'dark_gray_background'      => "\033[100m",
    'bright_red_background'     => "\033[101m",
    'bright_green_background'   => "\033[102m",
    'bright_yellow_background'  => "\033[103m",
    'bright_blue_background'    => "\033[104m",
    'bright_magenta_background' => "\033[105m",
    'bright_cyan_background'    => "\033[106m",
    'white_background'          => "\033[107m"
  }
  ending  = "\033[00m"

  colors.keys.each do | color |
    color_block = lambda { | *args |
      colors[ color ] + self + ending
    }
    String.send( :define_method, color.to_sym, color_block )
  end
end
