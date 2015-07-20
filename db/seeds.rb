# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



post1 = Post.create(content: "Eiusmod aute nostrud ligula donec. Nulla pharetra laborum dis vestibulum. Ipsum nam diam at. Do litora pellentesque exercitation aute.
Turpis imperdiet tortor consectetuer cubilia aute. Litora natoque labore esse nunclorem posuere. Venenatis enim pharetra est. Accumsan litora semper phasellus vulputate.
Vestibulum orci dui cum. Augue egestas natoque taciti dui. Primis dapibus per sodales. Cursus ad vehicula lacus curae.
Dui duis aptent curabitur. Dui fringilla ad fugiat. Orci mi elementum lorem eros.
Elementum nam sociis pretium. Ornare minim felis volutpat. Occaecat laboris culpa primis laborum ullamco.")

post2 = Post.create(content: "Irure aliquip senectus dolor. Nostrud tempor augue vitae. Conubia mollit magnis sodales. Bibendum voluptate per massa.
Laborum feugiat mollit. Labore porta lobortis at. Lectus malesuada curae dignissim.
Cubilia elit quam aenean. Id quisque dolor netus. Nunclorem commodo velit. Consectetuer ullamcorper eget.
Lorem inceptos nibh lobortis. Nec pharetra nibh cupidatat. Faucibus consectetur cum. Sem libero mus nibh.")

post3 = Post.create(content: "Adipiscing per maecenas. Rutrum congue curae. Urna mauris habitant. In adipiscing minim.
Adipiscing cras nascetur nunc. Dolore ullamco venenatis. Molestie senectus vivamus nunclorem.
Nam urna nisi reprehenderit. Fames nulla facilisi odio. Aliqua vestibulum venenatis.
Duis cras quam leo. Erat ullamcorper proident. Porttitor tempor aute.")

link1 = Link.create(content: "http://www.ggalizzi.com")
link2 = Link.create(content: "http://www.google.com")

image1 = Image.create(content: URI.parse("https://i.imgur.com/6PXV71w.jpg"))
image2 = Image.create(content: URI.parse("http://www.fitzgeraldhr.co.uk/wp-content/uploads/2013/10/tidy-desk-office-16052011.jpg"))
image3 = Image.create(content: URI.parse("https://s-media-cache-ak0.pinimg.com/736x/3c/ca/c9/3ccac91a4801044cdea1ad1cd61bc880.jpg"))

u1 = User.create(name: "Romeo", email: "roro@email.com", password: "1234")
u2 = User.create(name: "Liam Strugel", email: "lili@email.com", password: "1234")
u3 = User.create(name: "Elise Fluve", email: "elise@email.com", password: "1234")

b1 = Board.create(name: "The stuff", user: u1)
b2 = Board.create(name: "Design", user: u2)

archery_tag = Tag.create(name: "Archery")
photography_tag = Tag.create(name: "Photography")
desk_tag = Tag.create(name: "Desk")
web_design_tag = Tag.create(name: "Web Design")
tutorial_tag = Tag.create(name: "Tutorial")

Card.create(title: "Nostrud ligula", content: post1, user: u1, tags: [tutorial_tag], board: b1)
Card.create(title: "Search engine", content: link2, user: u1, board: b1)
Card.create(title: "Hun Bow", content: image3, user: u1, tags: [archery_tag])

Card.create(title: "Designer", content: link1, user: u2, tags: [web_design_tag], board: b2)
Card.create(title: "My Desk", content: image2, user: u2, tags: [desk_tag], board: b2)
Card.create(title: "Fames nulla", content: post3, user: u2, tags: [tutorial_tag], board: b2)

Card.create(title: "Dolore ullamco", content: post2, user: u3, tags: [web_design_tag, tutorial_tag])
Card.create(title: "Glaciar", content: image1, user: u3, tags: [photography_tag]) 
