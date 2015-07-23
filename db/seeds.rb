Website.destroy_all 
Link.destroy_all 

site1 = Website.create(site_url: "https://www.yahoo.com/", site_name: "Yahoo")

link1 = Link.create(name: "Yahoo Makers", url: "https://www.yahoo.com/makers", status: "200")
link2 = Link.create(name: "Unavailable", url:"not valid url", status: "404")

site1.links << link1 
site1.links << link2