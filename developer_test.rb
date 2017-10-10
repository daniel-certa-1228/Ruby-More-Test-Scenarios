require "minitest/autorun"
require_relative 'developer'

class DeveloperTest < MiniTest::Test

	def setup
		@dev = Developer.new
	end

	def test_if_instance_of_devloper
		# assert_instance_of Person, @dev
		assert_kind_of Person, @dev #kind_of will acknowledge the existence of a parent class.  instance will not.
	end

	def test_description_returns_a_string
		assert_kind_of String, @dev.description
		assert_equal "Nerd.  Big, BIG, nerd.", @dev.description
	end

	def test_description_doesnt_return_a_number
		refute_kind_of Integer, @dev.description
	end

	def test_code_output
		assert_output "Code code code\n" do @dev.code
		end
	end

	def test_code_output_another_way
		output, error = capture_io do
			@dev.code
		end
		assert_match("Code code code\n", output)
	end

	def teardown
		
	end
end