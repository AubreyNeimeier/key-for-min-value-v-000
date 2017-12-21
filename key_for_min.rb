# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
#psuedocode
#accept a hash
#iterate over the hash and return an unaltered KEY. Use each(since unaltered return)
#the block must compare the value of the keys to each other until we've got the biggest
#assign the largest to a variable within the hash
#return the variable outside of the hash


## original solution
# is faulty becuase I have to initialize lowest_value that might make code
#break if value is greater than 1000000.
#Avi's solution sets default lowest value to nil and incorporates that into
#if condition

=begin
MY ORIGINAL SOLUTION
def key_for_min_value(name_hash)
  lowest_value = 1000000
  lowest_key = nil
    if name_hash.empty?
      return nil
    end
    name_hash.each do |key, value|
      if value < lowest_value
        lowest_value = value
        lowest_key = key
      end
    end
  lowest_key
end


#their SOLUTION
=end
def key_for_min_value(name_hash)
  lowest_value = nil
  lowest_key = nil
  name_hash.each do |key, value|
    if lowest_value == nil || value < lowest_value
      lowest_value = value
      lowest_key = key
    end
  end
  lowest_key
end
