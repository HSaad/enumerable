require "enumerable_methods"

describe Enumerable do
	
	#my_each method tests
	describe ".my_each" do
		context "given an empty array" do
			it "returns empty array" do
				expect([].my_each).to eql([])
			end
		end

		context "given an integer array" do
			it "returns the array" do
				expect([1,2,3].my_each).to eql([1,2,3])
			end
		end

		context "given a string array" do
			it "returns the array" do
				expect(["1","2","3"].my_each).to eql(["1","2","3"])
			end
		end
	end

	#my_each_with_index method tests
	describe ".my_each_with_index" do
		context "given an empty array" do
			it "returns empty array" do
				expect([].my_each_with_index).to eql([])
			end
		end

		context "given an integer array" do
			it "returns the array" do
				expect([1,2,3].my_each_with_index).to eql([1,2,3])
			end
		end

		context "given a string array" do
			it "returns the array" do
				expect(["1","2","3"].my_each_with_index).to eql(["1","2","3"])
			end
		end
	end

	#my_select method tests
	describe ".my_select" do
		context "given an empty array" do
			it "returns empty array" do
				expect([].my_select).to eql([])
			end
		end

		context "given an integer array without block" do
			it "returns the array" do
				expect([1,2,3].my_select).to eql([1,2,3])
			end
		end

		context "given an empty array with block" do
			it "returns empty array" do
				expect([].my_select{|x| x.even? }).to eql([])
			end
		end

		context "given an integer array with block" do
			it "returns new array" do
				expect([1,2,3,4].my_select{|num| num.even? }).to eql([2,4])
			end
		end	

		context "given a string array with block" do
			it "returns new array" do
				expect(%w{a b c d e f}.my_select{|v| v =~/[aeiou]/ }).to eql(["a","e"])
			end
		end		
	end

	#my_all? method tests
	describe ".my_all?" do
		context "given an empty array" do
			it "returns true" do
				expect([].my_all?).to eql(true)
			end
		end

		context "given an integer array without block" do
			it "returns true" do
				expect([1,2,3].my_all?).to eql(true)
			end
		end

		context "given an false/nil array without block" do
			it "returns false" do
				expect([nil, true, 99].my_all?).to eql(false)
			end
		end

		context "given an array with block" do
			it "returns true if all elements satisfy block" do
				expect(%w[ant bear cat].my_all?{|word| word.length >= 3}).to eql(true)
			end
		end	

		context "given an array with block" do
			it "returns false if at least one element does not satisfy block" do
				expect(%w[ant bear cat].my_all?{|word| word.length >= 4}).to eql(false)
			end
		end		
	end	

	#my_any? method tests
	describe ".my_any?" do
		context "given an empty array" do
			it "returns true" do
				expect([].my_any?).to eql(false)
			end
		end

		context "given an integer array without block" do
			it "returns true" do
				expect([1,2,3].my_any?).to eql(true)
			end
		end

		context "given an false/nil array without block" do
			it "returns true" do
				expect([nil, true, 99].my_any?).to eql(true)
			end
		end

		context "given an array with block" do
			it "returns true if any elements satisfy block" do
				expect(%w[ant bear cat].my_any?{|word| word.length >= 3}).to eql(true)
			end
		end	

		context "given an array with block" do
			it "returns true if any elements satisfy block" do
				expect(%w[ant bear cat].my_any?{|word| word.length >= 4}).to eql(true)
			end
		end

		context "given an array with block" do
			it "returns true if any elements satisfy block" do
				expect(%w[ant bear cat].my_any?{|word| word.length >= 5}).to eql(false)
			end
		end			
	end	

	#my_none? method tests
	describe ".my_none?" do
		context "given an empty array" do
			it "returns true" do
				expect([].my_none?).to eql(true)
			end
		end

		context "given an integer array without block" do
			it "returns false" do
				expect([1,2,3].my_none?).to eql(false)
			end
		end

		context "given a nil, false, true array without block" do
			it "returns false" do
				expect([nil, false, true].my_none?).to eql(false)
			end
		end

		context "given a nil, false array without block" do
			it "returns true" do
				expect([nil, false].my_none?).to eql(true)
			end
		end

		context "given a nil array without block" do
			it "returns true" do
				expect([nil].my_none?).to eql(true)
			end
		end

		context "given an array with block" do
			it "returns true if block never returns true" do
				expect(%w[ant bear cat].my_none?{|word| word.length == 5}).to eql(true)
			end
		end	

		context "given an array with block" do
			it "returns true if block never returns true" do
				expect(%w[ant bear cat].my_none?{|word| word.length >= 4}).to eql(false)
			end
		end		
	end	

	#my_count method tests
	describe ".my_count" do
		context "given an empty array" do
			it "returns 0" do
				expect([].my_count).to eql(0)
			end
		end

		context "given an integer array without block" do
			it "returns size of array" do
				expect([1,2,3].my_count).to eql(3)
			end
		end

		context "given an array with argument" do
			it "returns number of items equal to argument" do
				expect([1,2,4,2].my_count(2)).to eql(2)
			end
		end

		context "given an array with block" do
			it "returns number of items yielding true" do
				expect([1,2,2,4].my_count{|x| x%2 == 0}).to eql(3)
			end
		end
	end	
end