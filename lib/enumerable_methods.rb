module Enumerable

 def my_each
  return self unless block_given?

    i = 0
    while i < self.size
        yield(self[i])  
        i+=1      
    end
    self
  end

  def my_each_with_index
  	return self unless block_given?

  	i = 0
  	while i < self.size
  		yield(self[i], i)
  		i += 1
  	end
  	self
  end

  def my_select
  	return self unless block_given?

  	new_arr = []
  	self.my_each do |item|
  		if yield(item)
  			new_arr << item
  		end
  	end
  	return new_arr
  end

  def my_all? 
  	unless block_given?
  		self.my_each do |item|
  			return false if !item 
  		end
  		return true
  	end

  	i = 0
    while i < self.size
        if !yield(self[i])
        	return false
        end  
        i+=1      
    end
    return true
  end
  
  def my_any?
  	unless block_given?
  		self.my_each do |item|
  			return true if item 
  		end
  		return false
  	end

  	i = 0
    while i < self.size
        if yield(self[i])  
        	return true
        end
        i+=1      
    end
    return false
  end

  def my_none?
  	unless block_given?
  		self.my_each do |item|
  			return false if item 
  		end
  		return true
  	end

  	i = 0
    while i < self.size
        if yield(self[i])  
        	return false
        end
        i+=1      
    end
    return true
  end

  def my_count(n=nil)

  	count = 0
  	unless block_given?
  		if n == nil
  			return self.size
  		else
  			self.my_each do |x|
  				count += 1 if x == n
  			end
  			return count
  		end
  	end

  	i = 0
    while i < self.size
        if yield(self[i])  
        	count += 1
        end
        i+=1      
    end

    return count
  end

  def my_map(proc=nil)
  	new_arr = []
  	i = 0
  	while i < self.size 
  		if block_given?
  			new_item = yield(self[i])
  		elsif proc != nil
  			new_item = proc.call(self[i])
  		else
  			return self
  		end
  		new_arr << new_item
  		i += 1
  	end
  	return new_arr
  end

  def my_inject(n=self[0])
  	return self unless block_given?

  	result = n
  	self.my_each do |item|
  		result = yield(result, item)
  	end
  	return result
  end
end

def multiply_els(array)
  	array.my_inject(1){ |product, n| product * n}
end
