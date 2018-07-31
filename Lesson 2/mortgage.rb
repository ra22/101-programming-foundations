def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f() > 0
end



prompt("Welcome to the Mortgage Calculator")

loop do # initialize main loop
  loan_amount = ''
  loop do # initialize first user input loop.. loan amount
    prompt("Enter how much you would like to burrow ($):")
    loan_amount = Kernel.gets().chomp()

    break if valid_number?(loan_amount)
    prompt "You can't burrow #{loan_amount}... please enter a valid amount."
  end

  interest_rate = ''
  loop do # initialize second user input loop.. ARP
    prompt("Enter the estimated Annual Percentage Rate (ARP) %:")
    interest_rate = Kernel.gets().chomp()

    break if valid_number?(interest_rate)
    prompt "Hmm... please enter a valid ARP (e.g. 2.0)."

  end

  loan_duration = ''
  loop do # initialize third user input loop.. loan duration
    prompt("Enter the length of the mortgage in years:")
    loan_duration = Kernel.gets().chomp()

    break if valid_number?(loan_duration)
    prompt "Hmm.. please enter a valid length."
  end


  number_of_months = loan_duration.to_i * 12

  arp = interest_rate.to_f / 100 # converts the interest into decimal
  monthy_interest_rate = arp.to_f / 12

  monthly_payments = loan_amount.to_f * (monthy_interest_rate.to_f / (1 - (1 + monthy_interest_rate.to_f)**(-number_of_months.to_f)))

  print "You will be paying approximately $#{monthly_payments.to_i.to_s} every month for the next #{number_of_months.to_s} months with a monthly interest rate of #{monthy_interest_rate.to_s}."

  prompt("Would you like to do another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

  break
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")