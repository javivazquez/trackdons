# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Álvaro Ortiz",
             email: "alvaro@furilo.com",
             password:              "alvaro",
             password_confirmation: "alvaro",
             country: 'ES',
             admin: true)
User.create!(name:  "Pedro Ximenez",
             email: "pedro@furilo.com",
             password:              "alvaro",
             password_confirmation: "alvaro",
             country: 'US',
             admin: true)


50.times do |n|
  name  = 'Name Surname'
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               country: 'GB',
               password_confirmation: password)
end

projects = Project.create([
	{ id: 1, name: 'Wikipedia', category_id: '8', url: 'http://www.wikipedia.com', twitter: 'wikipedia', description: 'This is the description of the wikipedia. This is the description of the wikipedia. This is the description of the wikipedia. This is the description of the wikipedia. This is the description of the wikipedia. This is the description of the wikipedia. This is the description of the wikipedia.', donation_url: 'https://donate.wikimedia.org/wiki/Special:FundraiserLandingPage'}, 
	{ id: 2, name: 'ACNUR España', category_id: '12', url: 'http://www.acnur.es', twitter: 'ACNURspain', description: 'ACNUR es la agencia española para los refugiados. Dependiente de la ONU', donation_url: 'https://www.eacnur.org/ayuda-ong-africa-donativos-hacerse-socio#_ga=1.240044163.1046714309.1413590594'  }, 
	{ id: 3, name: 'My fantastic organization', category_id: '13', url: 'http://www.mysteryworld.es', twitter: 'FantasticOrg', description: 'Mi descripción no puede dejar de ser fantástica'  },
	{ id: 4, name: 'My Wadus ONG', category_id: '10', url: 'http://www.mywadus.es', twitter: 'WadusONG', description: 'ONG description ONG descriptionONG descriptionONG descriptionONG descriptionONG descriptionONG descriptionONG descriptionONG descriptionONG description'  },
  { id: 5, name: 'Electronic Frontier Foundation', category_id: '16', url: 'http://www.eff.org', twitter: 'EFF', description: 'The Electronic Frontier Foundation is the leading nonprofit organization defending civil liberties in the digital world. Founded in 1990, EFF champions user privacy, free expression, and innovation through impact litigation, policy analysis, grassroots activism, and technology development. We work to ensure that rights and freedoms are enhanced and protected as our use of technology grows.', donation_url: 'https://supporters.eff.org/donate'  },
  { id: 6, name: 'CIC - Centro de Integración Ciudadana Monterrey', category_id: '5', url: 'http://www.cic.mx', twitter: 'cicmty', description: 'El CIC es una red de confianza 100% ciudadana que enlaza e integra al ciudadano y las autoridades por medio de espacios claros, confiables y auténticos de participación en temas que impactan a la sociedad, buscando despertar las conciencias y activar a los ciudadanos a trabajar en suma para mejorar nuestra sociedad. Estos espacios se fundamentan en el aprovechamiento de nuevas tecnologías como las redes sociales y nuestra plataforma Tehuan.', donation_url: 'http://www.cic.mx/?p=2166'},
  { id: 7, name: 'Mozilla - Firefox', category_id: '16', url: 'http://www.mozilla.org', twitter: 'mozilla', description: "We're a global community dedicated to making the web better and more open for all. Join us to imagine, build & teach the web's future.", donation_url: 'https://sendto.mozilla.org'}
])
Donation.create(quantity_cents: '1000', currency: 'EUR', date: '2014-10-14', project_id: 1, user_id: 1, comment: 'Wadus comment', quantity_privacy: 0)
Donation.create(quantity_cents: '2000', currency: 'EUR', date: '2014-08-08', project_id: 1, user_id: 2, comment: 'Wadus comment', quantity_privacy: 1)
Donation.create(quantity_cents: '10000', currency: 'EUR', date: '2014-10-14', project_id: 2, user_id: 3, comment: 'Wadus comment', quantity_privacy: 0)
Donation.create(quantity_cents: '22000', currency: 'EUR', date: '2014-08-08', project_id: 2, user_id: 4, comment: 'Wadus comment', quantity_privacy: 1)
Donation.create(quantity_cents: '1000', currency: 'EUR', date: '2014-10-14', project_id: 3, user_id: 5, comment: 'Wadus comment', quantity_privacy: 0)
Donation.create(quantity_cents: '2000', currency: 'EUR', date: '2014-08-08', project_id: 3, user_id: 6, comment: 'Wadus comment', quantity_privacy: 1)
Donation.create(quantity_cents: '10000', currency: 'EUR', date: '2014-10-14', project_id: 4, user_id: 7, comment: 'Wadus comment', quantity_privacy: 0)
Donation.create(quantity_cents: '22000', currency: 'EUR', date: '2014-08-08', project_id: 4, user_id: 8, comment: 'Wadus comment', quantity_privacy: 1)
Donation.create(quantity_cents: '2500', currency: 'USD', date: '2014-10-14', project_id: 5, user_id: 1, comment: 'You should donate too!', quantity_privacy: 0)
Donation.create(quantity_cents: '2500', currency: 'EUR', date: '2014-08-08', project_id: 5, user_id: 2, comment: 'Fighting for privacy in the Internet', quantity_privacy: 1)
Donation.create(quantity_cents: '5000', currency: 'EUR', date: '2004-10-10', project_id: 7, user_id: 1, comment: "Rewind to early 2000's. Chrome didn't exist. Internet Explorer had +90% of browser market share. A free software project to create an alternative browser emerged: Firefox. It slowly started to get supporters while developing a great product. An advocacy campaign was created at spreadfirefox.com. And a crazy idea was proposed: a full page ad in the New York Times crowdfunded with donations to promote the 1.0 version of Firefox. It just happened. A double page ad with more than 10.000 names of the donors in it. 

  Read more at: https://blog.mozilla.org/press/2004/12/mozilla-foundation-places-two-page-advocacy-ad-in-the-new-york-times/ 

  http://tech.slashdot.org/story/04/10/19/1338254/firefox-seeks-full-page-ad-in-new-york-times")


categories = Category.create([
  { id: 1, name: 'Animals' }, 
  { id: 2, name: 'Arts and Culture' }, 
  { id: 3, name: 'Children' }, 
  { id: 4, name: 'Climate Change' }, 
  { id: 5, name: 'Democracy and Governance' }, 
  { id: 6, name: 'Disaster Recovery' }, 
  { id: 7, name: 'Economic Development' }, 
  { id: 8, name: 'Education' }, 
  { id: 9, name: 'Environment' }, 
  { id: 10, name: 'Health' }, 
  { id: 11, name: 'Human Rights' }, 
  { id: 12, name: 'Humanitarian Assistance' }, 
  { id: 13, name: 'Hunger' }, 
  { id: 14, name: 'Microfinance' }, 
  { id: 15, name: 'Sport' }, 
  { id: 16, name: 'Technology' }, 
  { id: 17, name: 'Women and Girls' }
])  
