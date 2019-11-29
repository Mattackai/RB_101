def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
# The first implimentation mutates the buffer object directly with the use of <<. It pushes the new_element directly into the buffer

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
#The second implimentation reassigns the value of buffer to input_array + [new_element] but doesn't actually mutate the buffer array. It reassigns it to a new object entirely.

#I believe option one is best for this scenario.
