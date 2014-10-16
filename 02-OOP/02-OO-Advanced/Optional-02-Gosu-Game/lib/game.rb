require 'gosu'

class GameWindow < Gosu::Window

  def initialize
    super(1600, 900, false)
    self.caption = "Gosu Tutorial Game"
    @background_image = Gosu::Image.new(self, "/Users/julien/code/jpicque/promo-4-challenges/02-OOP/02-OO-Advanced/Optional-02-Gosu-Game/lib/media/Space.png", true)
    @player = Player.new(self)
    @player.warp(320, 240)
  end

  def update
    if button_down? Gosu::Button::KbLeft or button_down? Gosu::Button::GpLeft then
      @player.turn_left
    end
    if button_down? Gosu::Button::KbRight or button_down? Gosu::Button::GpRight then
      @player.turn_right
    end
    if button_down? Gosu::Button::KbUp or button_down? Gosu::Button::GpButton0 then
      @player.accelerate
    end
    @player.move
  end

  def draw
    @player.draw
    @background_image.draw(0, 0, 0);
  end

  def button_down(id)
    if id == Gosu::Button::KbEscape
      close
    end
  end

end


class Player

  def initialize(window)
    @image = Gosu::Image.new(window, "/Users/julien/code/jpicque/promo-4-challenges/02-OOP/02-OO-Advanced/Optional-02-Gosu-Game/lib/media/homer.bmp", false)
    @x = @y = @vel_x = @vel_y = @angle = 0.0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def turn_left
    @angle -= 4.5
  end

  def turn_right
    @angle += 4.5
  end

  def accelerate
    @vel_x += Gosu::offset_x(@angle, 0.5)
    @vel_y += Gosu::offset_y(@angle, 0.5)
  end

  def move
    @x += @vel_x
    @y += @vel_y
    @x %= 1600
    @y %= 900
    @vel_x *= 0.95
    @vel_y *= 0.95
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end

end


window = GameWindow.new
window.show