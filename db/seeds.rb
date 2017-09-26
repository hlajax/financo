# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Enrolling Currencies"
Currency.find_or_create_by(name: "Brazilian Real", code: "BRL", sign: "R$")
Currency.find_or_create_by(name: "US Dollar", code: "USD", sign: "$")
puts "Currencies successfully registered"

puts "Enrolling Frequencies"
frequencies = ["Day", "Week", "Month", "Year"]
frequencies.each do |frequency|
  Frequency.find_or_create_by(name: frequency)
end
puts "Frequencies successfully registered"

puts "Enrolling ExpensesCategories"
expenses_categories = [ "Feed",
                        "Home",
                        "Education",
                        "Sporadic Expenses",
                        "Personal Expenses",
                        "Taxes",
                        "Recreation",
                        "Health",
                        "Insurance",
                        "Financial services",
                        "Transport",
                        "Other Expenses ", ]
expenses_categories.each do |expense_category|
  ExpenseCategory.find_or_create_by(name: expense_category)
end
puts "ExpensesCategories successfully registered"

puts "Enrolling IncomesCategories"
incomes_categories = [ "Christmas Bonus",
                       "Bonus",
                       "Commission",
                       "Repayment",
                       "Holiday",
                       "Fees",
                       "Interest on Investments",
                       "Other Incomes",
                       "Refund",
                       "Salary", ]
incomes_categories.each do |income_category|
  IncomeCategory.find_or_create_by(name: income_category)
end
puts "IncomesCategories successfully registered"
