class MethodChain
  attr_accessor :at
  def initialize(&block)
    instance_eval &block
  end

  def at(str)
    @at = str
    self
  end

  def when(str)
    @when = str
    self
  end

  def we(*names)
    @we = names.join(" and ")
    self
  end

  def going(str)
    @going = str
    self
  end

  def output
    puts "#{@we} are going #{@going} #{@when} at #{@at}"
  end
end

MethodChain.new {
  at("7pm").when("tomorrow night").we("john", "bob").going("drinking") 
}.output
