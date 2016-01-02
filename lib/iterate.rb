require_relative "iterate/version"

module Kernel
  private

  def iterate(*iteratables)
    raise ArgumentError, "wrong number of arguments (0)" if iteratables.empty?
    first, rest = iteratables[0], iteratables[1..-1]
    if rest.empty?
      block_given? ? first.map{ |e| yield e } : first.map.to_enum
    else
      padding = iteratables.max_by(&:size).size - first.size
      iter = (first.to_a + [nil]*padding).zip(*rest)
      block_given? ? iter.map{|es| yield(*es) } : iter.map.to_enum
    end
  end
end
