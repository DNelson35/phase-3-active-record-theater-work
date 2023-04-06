
han_solo = Role.create(character_name: 'Han Solo')

leya_skywalker = Role.create(character_name: 'Leya Skywalker')

Audition.create(actor: "jim", location: 'New York', phone: 123456789, hired: false, role: han_solo) 

Audition.create(actor: "sam", location: 'New York', phone: 123456789, hired: false, role: Role.all.first) 

Audition.create(actor: "sarah", location: 'New York', phone: 123456789, hired: false, role: leya_skywalker)  
