class Foo
  # inline blocks
  assert_nothing_raised { foobar }

  # assigned inline blocks
  value = assert_nothing_raised { garply }

  # preserve original level of nesting
  assert_nothing_raised do
    some :other do
      puts foo
    end
  end

  # works for nested blocks
  assert_nothing_raised ErrorOuter do
    assert_nothing_raised ErrorInner do
      inner :code do
        puts "inner"
      end
    end

    outer :code do
      puts "outer"
    end
  end
end
