# hashes

{ :one => 'two', 'two three' => 'four', 5 => 'six', "bla bla" => "bla" }

foo = { :bar => 'baz', :one => 'two' }
{ :bar => 'baz', :one => 'two' }
foo = { :bar => 'baz', :one => { :two => 'three', :four => 'five' }, :five => 'six' }
mail({ :to => 'me', :from => 'me' })
{ :bar => 'baz', :one => 'two' }.merge(:one => 42)

{
  :one => { :two => :three },
  'one two' => { :two => :three },
  "one two" => { :two => :three },
  :'one two' => { :two => :three },
  :"one two" => { :two => :three }
}

# option hashes:

foo 1, 2, :one => 1, :two => 2, :three => 'three'
class Bar
  foo 1, 2, :one => 1, :two => 2, :three => 'three'
end
foo 1, 2, :one => 1, :two => 2, :three => 'three' do
  something
end
foo 1, 2, :one => 1, :two => 2, :three => 'three' do |bar|
  something(bar)
end

# TODO: no-bracket options with nested hashes
foo 1, 2, :bar => 'baz', :one => { :two => 'three', :foo => { 'bar' => 'baz' }, :four => 'five' }, :five => 'six'
foo 1, 2, :bar => 'baz', :one => { :two => 'three', :foo => { 'bar' => 'baz' }, :four => 'five' }
foo 1, 2, :bar => 'baz', :one => { :two => 'three', :foo => { 'bar' => 'baz' }, :four => 'five' } { |one| two }

# TODO: option hashes with a single item

root :to => 'articles#index'

# multiple hashes in parameter list

foo 1, 2, { :bar => :baz }, :baz => :qux
foo 1, 2, { :bar => :baz }, { :baz => :qux }

# blocks

Bar.new { |b| puts b.to_s; puts 'foo' }
Bar.new { puts self.to_s }

class Baz
  def qux
    # if/unless:

    return if problem?
    return 42 unless something_wrong?
    foo 1, 2, :one => 1, :two => 2, :three => 'three' if condition?
    foo = "bar" if one.two?

    # multiline if/unless

    if one and two
      three
      four
    end
  end
end
