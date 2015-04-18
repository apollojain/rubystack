require_relative 'stack'  

puts "Begin tests\n\n"
pass = 0
total = 0

def getFirstWord(str)
	if str != nil
		return str.split(' ')[0]
	end
end

a = Stack.new(0)
puts "checking if a.getmaxsize is 'nil'"
puts "#{a.getmaxsize == nil} should be true"
if a.getmaxsize == nil
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!\n\n"
end
total = total + 1

b = Stack.new(-3)
puts "checking if b.getmaxsize is 'nil'"
puts "#{b.getmaxsize == nil} should be true"
if b.getmaxsize == nil
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

m =Stack.new(3)

test = m.pop
puts test
puts "Pop (with an empty stack):#{getFirstWord(test)} should be a FAILURE"
if getFirstWord(test) == "FAILURE"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

test = m.push("chicken")
puts test
puts "#{getFirstWord(test)} should be a SUCCESS"
if getFirstWord(test) == "SUCCESS"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1


test = m.pop
puts "Pop: '#{getFirstWord(test)}' should be 'chicken'"
if getFirstWord(test) == "chicken"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

test = m.pop
puts test
puts "#{getFirstWord(test)} should be FAILURE"
if getFirstWord(test) == "FAILURE"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

test = m.push("blah0")
puts test
puts "#{getFirstWord(test)} should be a SUCCESS"
if getFirstWord(test) == "SUCCESS"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

test = m.push("blah1")
puts test
puts "#{getFirstWord(test)} should be a SUCCESS"
if getFirstWord(test) == "SUCCESS"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

test = m.push("blah2")
puts test
puts "#{getFirstWord(test)} should be a SUCCESS"
if getFirstWord(test) == "SUCCESS"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

test = m.push("blah3")
puts test
puts "Push (with a full stack) #{getFirstWord(test)} should be FAILURE"
if getFirstWord(test) == "FAILURE"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

test = m.pop
puts "Pop: '#{getFirstWord(test)}' should be 'blah2'"
if getFirstWord(test) == "blah2"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

test = m.push("blah3")
puts test
puts "#{getFirstWord(test)} should be a SUCCESS"
if getFirstWord(test) == "SUCCESS"
	puts "---TEST PASSES---\n\n"
	pass = pass + 1
else
	puts "!!!TEST FAILS!!!\n\n"
end
total = total + 1

puts "#{total} total tests: #{pass} passed tests and #{total - pass} failed tests"