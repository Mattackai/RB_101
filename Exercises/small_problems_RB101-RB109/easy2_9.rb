name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

#Alice, Bob becauses save_name is assigned to the same value as name and when name is reassigned, save_name still points to the same object.

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

#BOB, BOB becauses upcase! is a destructive method that mutates the object in which both name and save_name are pointing to.