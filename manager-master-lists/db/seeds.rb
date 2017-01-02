
#CREATE BANDS
Band.create(name: "Weezer", website: "www.weezer.com", photo_url: "", logo_url: "http://epitaph.com/media/artists/Weezer_Logo.jpg")
Band.create(name: "Midtown", website: "http://www.midtownrock.com", photo_url: "http://i63.tinypic.com/ztwta0.jpg", logo_url: "http://i65.tinypic.com/xqhs7c.jpg")
Band.create(name: "Andrew McMahon in the Wilderness", website: "http://www.andrewmcmahon.com", photo_url: nil, logo_url: "http://tinypic.com/r/x1k1gm/9")
Band.create(name: "Big Data", website: "http://www.bigdata.fm", photo_url: "", logo_url: "http://i66.tinypic.com/de6v6f.png")
Band.create(name: "Train", website: "http://www.savemesanfrancisco.com/", photo_url: "", logo_url: "https://s-media-cache-ak0.pinimg.com/originals/44/50/da/4450da990d4d5a66d5a217db14ea18f2.jpg")
Band.create(name: "Lolo", website: nil, photo_url: nil, logo_url: nil)
Band.create(name: "Freelance Musician", website: "", photo_url: "", logo_url: "")
Band.create(name: "New Politics", website: "http://www.newpoliticsrock.com", photo_url: "", logo_url: "")

#OFFICES
Office.create(name: "Crush NY", street: "60-62 E. 11th Street", suite: "Floor 7", city: "New York", state: "NY", zip: 10003, phone: "212-334-4446", fax: "")
Office.create(name: "Crush LA", street: "838 N. Fairfax Ave.", suite: "", city: "Los Angeles", state: "CA", zip: 90046, phone: "(323) 461-7600", fax: "")
Office.create(name: "Remote Office")

#MANAGERS
Manager.create(first_name: "Rob", last_name: "Hitt", street: "214 N. 11th St.", apt: "3V", city: "Brooklyn", state: "NY", zip: 11211, office_id: 1, email: "robhitt@gmail.com", phone: "732-682-4952", ext: "")
Manager.create(first_name: "Christi", last_name: "Reid", street: "512 E. 80th St.", apt: "10", city: "Manhattan", state: "NY", zip: 10075, office_id: 2, email: "christi@limerentfox.com", phone: "917-402-7905", ext: "")
Manager.create(first_name: "Alex", last_name: "Sarti", street: "201 E. 15th St.", apt: "", city: "New York", state: "NY", zip: 10003, office_id: 1, email: "", phone: "", ext: "")
Manager.create(first_name: "Jon", last_name: "Lullo", street: "6044 Carpender Ave.", apt: "", city: "North Hollywood", state: "CA", zip: 91606, office_id: 2, email: "jon@crushmusic.com", phone: "347-845-4927", ext: "")
Manager.create(first_name: "Dustin", last_name: "Addis", street: "838 N. Fairfax Ave.", apt: "", city: "Los Angeles", state: "CA", zip: 90046, office_id: 1, email: "dustin@crushmusic.com", phone: "309-550-4901", ext: "")
Manager.create(first_name: "Scott", last_name: "Nagelberg", street: "198 8th Ave.", apt: "1R", city: "Brooklyn", state: "NY", zip: 11215, office_id: 1, email: "scott@crushmusic.com", phone: "(267) 975-9599", ext: "")
Manager.create(first_name: "Dan", last_name: "Kruchkow", street: "3rd Ave", apt: "7", city: "Brooklyn", state: "NY", zip: 11215, office_id: 2, email: "dan@crushmusic.com", phone: "(917) 674-1417", ext: "")

#BIG DATA BAND MEMBERS
alan = BandMember.new(first_name: "Alan", last_name: "Wilkis", street: "396 Franklin Avenue", apt: "1", city: "Brooklyn", state: "NY", zip: "11238", instrument: "Vocals", email: "alan@bigdata.fm", phone: "(917) 331-7071", notes: "")
alan.band = Band.find(4)
alan.save

aren = BandMember.new(first_name: "Aren", last_name: "Olsen", street: "225 Nassau Ave", apt: "Apt 2R", city: "Brooklyn", state: "NY", zip: "11222", instrument: "Drums", email: "shuckinfit@gmail.com", phone: "(646) 246-6883", notes: "")
aren.band = Band.find(4)
aren.save

liz = BandMember.new(first_name: "Elizabeth", last_name: "Ryan", street: "163 warren Street", apt: "", city: "Brooklyn", state: "NY", zip: "11201", instrument: "Vocals", email: "lizyryan@gmail.com", phone: "(646) 874-9087", notes: "")
liz.band = Band.find(4)
liz.save

andrew = BandMember.new(first_name: "Andrew", last_name: "Pertes", street: "105 Conselyea Street", apt: "1", city: "Brooklyn", state: "NY", zip: "11211", instrument: "Bass", email: "apertes@gmail.com", phone: "(215) 630-6171", notes: "")
andrew.band = Band.find(4)
andrew.save
