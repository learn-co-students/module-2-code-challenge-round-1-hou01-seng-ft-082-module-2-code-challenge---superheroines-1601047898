Heroine.destroy_all
Power.destroy_all


  p1 = Power.create(name: "super strength", description: "gives the wielder super-human strengths")
  p2 = Power.create(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")
  p3 = Power.create(name: "super human senses", description: "allows the wielder to use her senses at a super-human level" )
  p4 = Power.create(name: "elasticity", description: "can stretch the human body to extreme lengths" )


#powers.each {|power| Power.create(power)}

#heroines = [
  h1 = Heroine.create(name: "Kamala Khan", super_name: "Ms. Marvel")
  h2 = Heroine.create(name: "Doreen Green", super_name: "Squirrel Girl" )
  h3 = Heroine.create(name: "Gwen Stacy", super_name: "Spider-Gwen" )
  h4 = Heroine.create(name: "Janet Van Dyne", super_name: "The Wasp" )
  h5 = Heroine.create(name: "Wanda Maximoff", super_name: "Scarlet Witch" )
  h6 = Heroine.create(name: "Carol Danvers", super_name: "Captain Marvel" )
  h7 = Heroine.create(name: "Jean Grey", super_name: "Dark Phoenix" )
  h8 = Heroine.create(name: "Ororo Munroe", super_name: "Storm" )
  h9 = Heroine.create(name: "Kitty Pryde", super_name: "Shadowcat" )
  h10 = Heroine.create(name: "Elektra Natchios", super_name: "Elektra" )


#heroines.each { |heroine| Heroine.create(heroine) }

hp1 = HeroinePower.create(heroine_id:h3.id, power_id:p1.id)
hp2 = HeroinePower.create(heroine_id:h3.id, power_id:p1.id)
hp3 = HeroinePower.create(heroine_id:h3.id, power_id:p1.id)
hp4 = HeroinePower.create(heroine_id:h3.id, power_id:p1.id)
hp5 = HeroinePower.create(heroine_id:h3.id, power_id:p1.id)
 
puts"planted"


