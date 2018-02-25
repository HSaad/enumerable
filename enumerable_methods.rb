module Enumerable

 def my_each
    i = 0
    while i < self.size
        yield(self[i])  
        i+=1      
    end
    self
  end

  def my_each_with_index
  	i = 0
  	while i < self.size
  		yield(self[i], i)
  		i += 1
  	end
  	self
  end

  def my_select
  	new_arr = []
  	self.my_each do |item|
  		if yield(item)
  			new_arr << item
  		end
  	end
  	return new_arr
  end

  def my_all? 
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
  end

  def my_count
  end

  def my_map
  end

  def my_inject	
  end

  def multiply_els
  end

  
end