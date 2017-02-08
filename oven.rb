class Oven
  attr_accessor :cookies, :total_bake_time

  def initialize
    @cookies = Array.new(10) { Cookie.new }
    @total_bake_time = 0
  end

  def bake(minutes)
    @total_bake_time += minutes
    cookies.each do |cookie|
      puts "I'm done!" if cookie.bake_time < total_bake_time
    end
  end

  def one_by_one_bake_time
    cookies.reduce(0) { |total, cookie| total + cookie.bake_time }

    cookies.map(&:bake_time).reduce(0, &:+)
  end
end

class Cookie
  attr_reader :bake_time

  def initialize
    @bake_time = rand(10)
  end
end