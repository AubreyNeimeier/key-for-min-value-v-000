# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
#psuedocode
#accept a hash
#iterate over the hash and return an unaltered KEY. Use each(since unaltered return)
#the block must compare the value of the keys to each other until we've got the biggest
#assign the largest to a variable within the hash
#return the variable outside of the hash


def key_for_min_value(name_hash)
  smallest = 100000
  smallest_name = " "
    if name_hash.empty?
      return nil
    end
    name_hash.each do |name, value|
      if value < smallest
        smallest = value
        smallest_name = name
      end
    end
  smallest_name
end
