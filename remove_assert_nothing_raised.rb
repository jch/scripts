# Remove `assert_nothing_raised` blocks
#
# Usage: ruby -p -i remove_assert_nothing_raised.rb <files>
#
# Remove -i for a dry run

# keep track of how deep we're nested
$indent_level ||= []

# start of a code block
if $_ =~ /(\s+)assert_nothing_raised.*do/
  $indent_level << $1
  next  # don't print
end

# body of a code block
if !$indent_level.empty?
  # end of code block
  if $_ =~ Regexp.new("^#{$indent_level.last}end")
    $indent_level.pop
    next  # don't print
  else
    # decrease indent level to the original block
    $_.gsub!(Regexp.new("^#{$indent_level.last}  "), $indent_level.first)
  end
end

# handle one line blocks
if $_ =~ /(.*)assert_nothing_raised.*{\s*(.*?)\s*}/
  $_ = $1 + $2 + "\n"
end
