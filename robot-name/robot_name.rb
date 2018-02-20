class Robot
  def initialize(name_registry = NameRegistry.new)
    @name_registry = name_registry
    reset
  end

  def name
    @name_registry.name_for(self)
  end

  def reset
    @name_registry.register(self)
  end
end

class NameRegistry
  LETTERS = ('A'..'Z').to_a
  DIGITS = ('0'..'9').to_a

  def initialize(seed = Random.new)
    @seed = seed
    @names = {}
  end

  def name_for(object)
    @names[object]
  end

  def register(object)
    loop do
      name = ''
      2.times {name << LETTERS.sample(random: @seed)}
      3.times {name << DIGITS.sample(random: @seed)}

      unless registered?(name)
        @names[object] = name
        break
      end
    end
  end

  private

  def registered?(name)
    @names.value?(name)
  end
end

module BookKeeping
  VERSION = 2
end