# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

nana_says = 'Nana: HI SWEETIE! GIVE NANA A KISS!'
bye_count = 0

until bye_count == 3
  puts nana_says
  response = gets.chomp
  if response == response.upcase
    if response == 'BYE'
      bye_count += 1
      nana_says = 'Nana: HOW\'S SCHOOL GOING?'
    else
      bye_count = 0
      date = 1930 + rand(21)
      nana_says = "Nana: NOT SINCE #{date}!"
    end
    else
      bye_count = 0
      nana_says = 'Nana: HUH?! SPEAK UP, SWEETIE!'
  end
end

puts 'Nana: BYE SWEETIE!'
