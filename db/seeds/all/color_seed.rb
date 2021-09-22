require 'faker'

5.times do
    colors = Color.new(
        name:Faker::Color.color_name 
    )
    colors.save
end

