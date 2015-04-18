class Stack

	def initialize(maxsize)
		if maxsize <= 0
			puts "FAILURE :( Please specify a number bigger than 0."
		else
			@maxsize = maxsize
			@items = Array.new(maxsize)
			@top = 0
			puts "SUCCESS :) Your Stack has been successfully initialized."
		end
	end

	def getmaxsize
		return @maxsize
	end

	def push(item)
		if @top == @maxsize
			return "FAILURE :( You have exceeded the maximum size of your stack. Please pop an item to insert a new one."
		else
			@items[@top] = item
			@top = @top + 1
			return "SUCCESS :) Your item '#{item}' has successfully been pushed to the stack."
		end
	end

	def pop
		if @top == 0
			return "FAILURE :( Your stack is empty. There is nothing to pop. Please push an item if you wish to use this method."
		else
			@top = @top - 1
			return @items[@top]
		end
	end

end

# a = Stack.new(0)
# b = Stack.new(-3)
# a.getmaxsize
# b.getmaxsize

# m =Stack.new(3)
# puts "hello #{m.getmaxsize}"
# t = m.getmaxsize == 20
# q = m.getmaxsize == 3
# puts "#{t}, #{q}"

# m.push("chicken")
# m.pop
# m.pop
