require 'faker'

5.times do
    colors = Color.new(
        width:Faker::Number.number(digits: 2)
    )
    colors.save
end