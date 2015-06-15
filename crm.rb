require_relative "rolodex.rb"
#require_relative allows me to connect a 1 or multiple files to the one in action. In this case crm.rb

class CRM

def self.run(name)
  my_crm = CRM.new(name)
  my_crm.user_menu
end

  def initialize(name)
    @name = name 
    @rolodex = Rolodex.new
   end 
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
  when 3 then display_contact
  when 4 then display_contacts
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

    @rolodex.add_contact(first_name, last_name, email, notes)
  end
  

def edit_contact
      print "Select id"
      id = gets.chomp.to_i
      contact =  @rolodex.find_contact(id)
      print_edit_menu
      input = gets.chomp.to_i
      edit_stuff(input, contact)
end

def print_edit_menu
  puts "[1] Edit first_name"
  puts "[2] Edit last_name"
  puts "[3] Edit email"
  puts "[4] Edit notes"
  puts "[5] Exit "
  puts "Chose an option: "
end
  
def edit_stuff(input, contact)
  case  input
  when 1 then edit_first_name(contact)
  when 2 then edit_last_name(contact)
  when 3 then edit_email(contact)
  when 4 then edit_notes(contact)
  when 5
  puts "You are about exit"
  exit
  else
    puts "Wrong option! Please make an other selection."
  end
end


def edit_first_name(contact)
  print "Edit first name: "
  contact.first_name = gets.chomp
  puts "If you are done chose 5 for exit, otherwise keep on editing"
  print_edit_menu
  input = gets.chomp.to_i
  edit_stuff(input, contact)
end

def edit_last_name(contact)
  print "Edit last name: "
  contact.last_name = gets.chomp
  puts "If you are done chose 5 for exit, otherwise keep on editing"
  print_edit_menu
  input = gets.chomp.to_i
  edit_stuff(input, contact)
end

def edit_email(contact)
  print "Edit email: "
  contact.email = gets.chomp
  puts "If you are done chose 5 for exit, otherwise keep on editing"
  print_edit_menu
  input = gets.chomp.to_i
  edit_stuff(input, contact)
end

def edit_notes(contact)
  print "Edit notes: "
  contact.notes = gets.chomp
  puts "If you are done chose 5 for exit, otherwise keep on editing"
  print_edit_menu
  input = gets.chomp.to_i
  edit_stuff(input, contact)
end


    def display_contact
    print "Select id"
    id = gets.chomp.to_i
    contact =  @rolodex.find_contact(id)
    print "#{contact.first_name} #{contact.last_name}"
    end 


    def display_contacts
      @rolodex.all.each do |contact|
        puts "#{contact.id} #{contact.first_name} #{contact.last_name}"
    end 
  end 
end

CRM.run("Serguei's CRM App")









