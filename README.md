# Enumerable

## my_each

A method called #my_each that iterates over an array returning each item in that array. If no block is given, the array is returned instead.

## my_each_with_index

A method called #my_each_with_index that iterates over an array returing each item and its index from that array. If no block is given, the array is returned instead.

## my_select 

A method called #my_select that returns an array containing all elements for which the given block returns a true value. If no block is given, the array is returned instead.

## my_all?

A method called #my_all? that passes each element to the given block. The method returns true if the block never returns false or nil. If the block is not given, the method will return true when none of the array elements are false or nil.

## my_any?

A method called #my_any? that passes each element of the array to the given block. The method returns true if the block ever returns a value other than false or nil. If the block is not given, the method will return true if at lease one of the array elements if not false or nil.

## my_none?

A method called #my_none? that passes each element of the array to the given block. The method returns true if the block never returns true for all elements. If the block is not given, the method will return true only if none of the elements are true. 

## my_count

A method called #my_count that returns the number of items in the array. If an argument if given, the number of items in the array that are equal to the argument are counted. If a block is given, it counts the number of elements yielding a true value.

## my_map

A method called #my_map that returns a new array with the result of running a block or proc once for every element in the array. If no block or proc is given, the array is returned instead. 

## my_inject

A method called #my_inject that combines all elements by appling a binary operation, specified by a block. If no block is given, the array is returned instead. If an argument value is not specified, then the first element of the array is used as the initial value.

## multiply_els

A method called #multiply_els that multiplies all the elements of an array together using #my_inject.