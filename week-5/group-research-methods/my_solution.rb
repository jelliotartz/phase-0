# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   new_array = []
#   source.each do |element|
#     if element.to_s.include?(thing_to_find)
#       new_array << element
#     end
#   end
#   new_array
# end


#### ASK CAROLINE WHY THIS DOESN'T WORK

def my_array_finding_method(source, thing_to_find)
  new_array = []
  new_array << source.grep(/thing_to_find/)
  p new_array
end

my_array_finding_method(i_want_pets, "t")

# def my_hash_finding_method(source, thing_to_find)
#   age = []
#   source.each do |k, v|
#     if source[k] == thing_to_find
#       age << k
#     end
#   end
#   age
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #

# #########

# def my_array_finding_method(array, letter)
#   array.find_all { |element| element.to_s.include?(letter) }
# end

# def my_hash_finding_method(hash, number)
#   hash.select { |pet, age| age == number }.to_h.keys
# end


# def my_array_modification_method!(array, number)
#   array.map! do |element|
#     if element.is_a? Integer
#       element + number
#     else
#       element
#     end
#   end
# end

# def my_hash_modification_method!(hash, number)
#   hash.each_key { |pet| hash[pet] += number  }
# end

# def my_array_sorting_method(array)
#   array.sort_by { |element| element.to_s }
# end

# def my_hash_sorting_method(hash)
#   hash.sort_by { |pet, age| age }.to_h
# end


# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]
# my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}

# # p my_array_finding_method(i_want_pets, "t")

# # p my_hash_finding_method(my_family_pets_ages, 4)

# # p my_array_modification_method!(i_want_pets, 10)

# # my_family_pets_ages[key] += number

# # p my_family_pets_ages

# # p my_hash_modification_method!(my_family_pets_ages, 2)

# # p my_array_sorting_method(i_want_pets)

# # p my_hash_sorting_method(my_family_pets_ages)