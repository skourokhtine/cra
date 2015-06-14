class CRM
  def initialize(name)
    @name = name 
    #@ symbol assisigns the local variable into an instance variable


def print_main_menu 
#promt the user from the main menu
  puts "[1] Add a new contact"
  puts "[2] Modify an existing contact"
  puts "[3] Display a contact"
  puts "[4] Display all the contacts"
  puts "[5] Delete a contact"
  puts "[6] Exit"
  puts "Chose an option: "
end

def chose_option(choice)
	case choice
  when 1 then add_contact
  when 2 then edit_contact
  when 3 then display_contacts
  when 4 then display_attribute
  when 5 then delete_contact
  when 6
  puts "You are about exit"
  exit
  else
    puts "Wrong option! Please make an other selection."
  end
end

def user_menu
  puts "Welcome to #{@name}."

  while true
  #this allows me to set a direction for this method  
    print_main_menu
    
    print "Select an option: "
    input = gets.chomp.to_i
    
  # return if input == 6
  
  chose_option(input)
    
  end
end

  def add_contact
    puts "Add contact"

    print "First name: "
    first_name = gets.chomp

    print "Last name: "
    last_name = gets.chomp

    print "Email: "
    email = gets.chomp

    print "Notes: "
    notes = gets.chomp
    end
  end
end

crm_app = CRM.new("Serguei's CRM App")
crm_app.user_menu








