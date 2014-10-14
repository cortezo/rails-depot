# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
x=1
10.times do 
  Product.create!(
    title: "Awesome, version #{x.to_s}",
    description: 
      "<p>Awesome is the most excellent book series to be created, ever in the universe.  Version #{x.to_s} is the         most prolific version to ever be created.</p>",
    image_url: 'ruby.jpg',
    price: 49.93
  )
  x+=1
end