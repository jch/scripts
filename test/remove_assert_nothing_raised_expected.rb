class Foo
  # inline blocks
  foobar

  # assigned inline blocks
  value = garply

  # preserve original level of nesting
  some :other do
    puts foo
  end

  # works for nested blocks
  inner :code do
    puts "inner"
  end

  outer :code do
    puts "outer"
  end
end
