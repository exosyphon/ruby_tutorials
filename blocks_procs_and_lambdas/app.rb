!#/bin/ruby

# Blocks, Procs, Lambdas are all closures
# snippets of code that can be created to execute later

# Blocks
def my_method(items)
  i = 0
  while i < items.size
    yield(items[i])
    i += 1
  end 
end

items = [1,2,3,4,5]

# multiline
#my_method(items) do |n|
  #puts "Item: #{n}"
#end

# single line
#my_method(items) { |n| puts "Item: #{n}!" }

# Implicit vs explicit
def my_method_explicit(items, &block)
  i = 0
  while i < items.size
    block.call(items[i])
    i += 1
  end 
end
#my_method_explicit(items) { |n| puts "Item: #{n}!" }

# Procs
def some_method(proc)
  proc.call("Success")
end

proc = Proc.new { |n| puts "procify!: #{n}" }
#some_method(proc)

# Explicit Proc
def some_method_with_proc(&proc)
  proc.call("Success")
end
#some_method_with_proc { |n| puts "proc_with_explicit #{n}" }

# Lambdas
# these are Procs with some special characteristics

# ArgumentError
incorrect = lambda { |a| puts a }
#incorrect.call

# Return statements
def return_from_proc
  #Proc.new { puts "hi"; return 10 }.call
  #puts "never reached"
end
return_from_proc

def return_from_lambda
#  a = lambda { return 10 }.call
#  puts "The lambda returned #{a}"
end
return_from_lambda


# Stabby Lambdas
my_func = ->(item) { puts item * 2 }

#[1,2,3].each(&my_func)

# With maps
configs = {
 config_1: ->(item) { puts item * 2 }, 
 config_2: ->(item) { puts item * 4 }, 
}

#configs[:config_1].call(10)
#configs[:config_2].call(10)

# Be mindful of context when creating closures



