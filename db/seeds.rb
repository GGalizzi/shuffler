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

Card.create(title: "Nostrud ligula", content: post1)
Card.create(title: "Designer", content: link1)
Card.create(title: "Dolore ullamco", content: post2)
Card.create(title: "Fames nulla", content: post3)
Card.create(title: "Search engine", content: link2)
