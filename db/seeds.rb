Heroine.destroy_all
Power.destroy_all
HeroinePower.destroy_all

powers = [
  {name: "super strength", description: "gives the wielder super-human strengths" },
  {name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" },
  {name: "super human senses", description: "allows the wielder to use her senses at a super-human level" },
  {name: "elasticity", description: "can stretch the human body to extreme lengths" }
]

powers.each {|power| Power.create(power)}

heroines = [
  {name: "Kamala Khan", super_name: "Ms. Marvel"},
  {name: "Doreen Green", super_name: "Squirrel Girl" },
  {name: "Gwen Stacy", super_name: "Spider-Gwen" },
  {name: "Janet Van Dyne", super_name: "The Wasp" },
  {name: "Wanda Maximoff", super_name: "Scarlet Witch" },
  {name: "Carol Danvers", super_name: "Captain Marvel" },
  {name: "Jean Grey", super_name: "Dark Phoenix" },
  {name: "Ororo Munroe", super_name: "Storm" },
  {name: "Kitty Pryde", super_name: "Shadowcat" },
  {name: "Elektra Natchios", super_name: "Elektra" }
]

heroines.each { |heroine| Heroine.create(heroine) }

h1 = HeroinePower.create(heroine_id: Heroine.all.sample.id, power_id: Power.all.sample.id,strength: "strong")
h2 = HeroinePower.create(heroine_id: Heroine.all.sample.id, power_id: Power.all.sample.id,strength: "strong")
h3 = HeroinePower.create(heroine_id: Heroine.all.sample.id , power_id: Power.all.sample.id,strength: "weak")
h4 = HeroinePower.create(heroine_id: Heroine.all.sample.id, power_id: Power.all.sample.id,strength: "weak")

# "heroine_id"
#     t.integer "power_id"
#     t.string "strength"