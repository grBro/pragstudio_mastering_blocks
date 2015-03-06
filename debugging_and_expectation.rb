def with_debugging
	puts "Got Here!"
	result = yield
	puts "Result was #{result}"
end

# with_debugging do
#   magic_number = (23 - Time.now.hour) * Math::PI
# end

def with_expectation(expected_value)
	puts "Running test"
	result = yield
	if expected_value == result
		puts "Passed."
	else
		puts "Failed\nExpected #{expected_value}, but got #{result}"
	end
end

with_expectation(5) { 2 + 2 }