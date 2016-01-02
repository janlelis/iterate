require_relative "../lib/iterate"
require "minitest/autorun"

describe 'Kernel#iterate' do
  it 'should behave like Enumerable#each for a single argument' do
    array = [1, 2, 3]
    res_each = []
    res_iterate = []

    array.each do |ele|
      res_each << ele
    end

    iterate array do |ele|
      res_iterate << ele
    end

    assert_equal res_each, res_iterate
  end

  it 'should pass the right params to the block' do
    a = [1, 2, 3]
    b = %w[a b c d]
    res_a_b = []
    res_b_a = []

    iterate a, b do |e, f|
      res_a_b << [e, f]
    end

    assert_equal [
      [1, 'a'],
      [2, 'b'],
      [3, 'c'],
      [nil, 'd'],
    ], res_a_b

    iterate b, a do |e, f|
      res_b_a << [e, f]
    end

    assert_equal [
      ['a', 1],
      ['b', 2],
      ['c', 3],
      ['d', nil],
    ], res_b_a
  end

  it 'should return enumerators if no block is applied' do
    res = iterate [1, 2, 3], %w[a b c d]
    
    assert_kind_of Enumerator, res
    assert_equal [
      [1,'a'],
      [2,'b'],
      [3,'c'],
      [nil, 'd']
    ], res.to_a
  end

  it 'raises an ArgumentError for no arguments' do
    assert_raises ArgumentError do
      iterate
    end
  end
end
