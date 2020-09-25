Heroine.destroy_all
Power.destroy_all
Heroine_Power.destroy_all

powers = [
  p1 = {name: "super strength", description: "gives the wielder super-human strengths" },
  p2 = {name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" },
  p3 = {name: "super human senses", description: "allows the wielder to use her senses at a super-human level" },
  p4 = {name: "elasticity", description: "can stretch the human body to extreme lengths" }
]

powers.each {|power| Power.create(power)}

heroines = [
  h1 = {name: "Kamala Khan", super_name: "Ms. Marvel"},
  h2 = {name: "Doreen Green", super_name: "Squirrel Girl" },
  h3 = {name: "Gwen Stacy", super_name: "Spider-Gwen" },
  h4 = {name: "Janet Van Dyne", super_name: "The Wasp" },
  h5 = {name: "Wanda Maximoff", super_name: "Scarlet Witch" },
  h6 = {name: "Carol Danvers", super_name: "Captain Marvel" },
  h7 = {name: "Jean Grey", super_name: "Dark Phoenix" },
  h8 = {name: "Ororo Munroe", super_name: "Storm" },
  h9 = {name: "Kitty Pryde", super_name: "Shadowcat" },
  h10 = {name: "Elektra Natchios", super_name: "Elektra" }
]

heroines.each { |heroine| Heroine.create(heroine) }



HeroinePower.create(heroine_id: h3.id, power_id: p2.id, strength: "Strong" )
HeroinePower.create(heroine_id: h7.id, power_id: p3.id, strength: "Weak" )
HeroinePower.create(heroine_id: h5.id, power_id: p1.id, strength: "Strong" )
HeroinePower.create(heroine_id: h2.id, power_id: p4.id, strength: "Weak" )

puts "we made it"
