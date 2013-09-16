=begin
Lambdas

You may have heard of lambdas before. Perhaps you've used them in other languages. Despite the fancy name, a lambda is just a function... peculiarly... without a name. They're anonymous, little functional spies sneaking into the rest of your code. Lambdas in Ruby are also objects, just like everything else! The last expression of a lambda is its return value, just like regular functions. As boring and familiar as that all sounds, it gives us a lot of power.

As objects, lambdas have methods and can be assigned to variables

=end
print_parameter_to_screen = lambda { |x| puts x }
print_parameter_to_screen.call(100)

