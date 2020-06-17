namespace :data do
  desc "Create Styles"
  task create_styles: :environment do
    puts "Creating Ale style:"
    Style.create!(name: "Ale")
    puts "Ale Style created!"
    puts "Creating Lager style"
    Style.create!(name: "Lager")
    puts "Lager Style created!"
  end

  desc "Brew Methods"
  task create_brew_methods: :environment do
    puts "Creating BIAB:"
    BrewMethod.create!(name: "BIAB")
    puts "BIAB method created!"
    puts "Creating Extract brew method"
    BrewMethod.create!(name: "Extract")
    puts "Extract brew method created!"
  end

  desc "Create Malts"
  task create_malts: :environment do

    array = [
      "Base Malt - 2-Row (American)",
      "Base Malt - 2-Row (American)",
      "Base Malt - 6-Row (American)",
      "Base Malt - Distiller's Malt (Canada)",
      "Base Malt - Franco Belges Pale Ale (France)",
      "Base Malt - Golden Promise (UK)",
      "Base Malt - Lager (UK)",
      "Base Malt - Maris Otter (UK)",
      "Base Malt - Munich (American)",
      "Base Malt - Northwest Pale Ale (American)",
      "Base Malt - Optic (UK)",
      "Base Malt - Superior Pilsen (American)",
      "Base Malt - Vienna (American)",
      "Base Malt - White Wheat (American)",
      "Base Malt - Pilsner (German)",
      "Base Malt - Continental Pils",
      "SpeciBase Malt - Pale Rice (American)",
      "Caramel / Crystal Malt - 120 Lovibond (American)",
      "Caramel / Crystal Malt - 15 Lovibond (American)",
      "Caramel / Crystal Malt - 150 Lovibond (American)",
      "Caramel / Crystal Malt - 30 Lovibond (American)",
      "Caramel / Crystal Malt - 40 Lovibond (American)",
      "Caramel / Crystal Malt - 60 Lovibond (American)",
      "Caramel / Crystal Malt - 75 Lovibond (American)",
      "Caramel / Crystal Malt - Carahell (Germany)",
      "Caramel / Crystal Malt - Caramunich 40 (France)",
      "Caramel / Crystal Malt - Caramunich 60 (France) ",
      "Caramel / Crystal Malt - Carapils Dextrin (American)",
      "Caramel / Crystal Malt - Carared (Germany)",
      "Caramel / Crystal Malt - Carastan (UK)",
      "Caramel / Crystal Malt - Caravienne (Belgium)",
      "Caramel / Crystal Malt - Crystal Rye (UK)",
      "Caramel / Crystal Malt - Crystal Wheat (American)",
      "Specialty Malt / Grain - Crystal Rice (American)",
      "Flaked Barley (American)",
      "Flaked Corn / Maize (American)",
      "Flaked / Rolled Oats (American)",
      "Flaked Rice (American)",
      "Flaked Rye (American)",
      "Amber, Kiln (France)",
      "Black Patent (UK)",
      "Carafa I Dehusked (Germany)",
      "Carafa II Dehusked (Germany)",
      "Carafa III Dehusked (Germany)",
      "Chocolate - Crisp (UK)",
      "Chocolate Rye (Germany)",
      "Chocolate Wheat (Germany)",
      "Coffee Special Roast (Belgium)",
      "Dark Rice (American)",
      "Gas Hog Roasted Rice (American)",
      "Kiln Coffee (Belgium)",
      "Pale Chocolate (UK)",
      "Roasted Barley (UK)",
    ]

    puts "Creating Malts"
    array.each do |a|
      Malt.find_or_create_by(name: a)
    end

    puts "#{array.count} malts found or created!"
  end

  desc "Create Hops"
  task create_hops: :environment do
    hops = [
      "Admiral",
      "Ahtanum",
      "Amarillo",
      "Aramis",
      "Aurora",
      "Bitter Gold",
      "Blanc",
      "Bobek",
      "Bramling Cross",
      "Bravo",
      "Brewers Gold",
      "Bullion",
      "Cascade",
      "Celeia",
      "Centennial",
      "Challenger",
      "Chelan",
      "Chinook",
      "Citra",
      "Cluster",
      "Columbus",
      "Comet",
      "Crystal",
      "Dr. Rudi",
      "East Kent Golding",
      "Ekuanot",
      "Ella",
      "Falconer's Flight 7C's",
      "Falconer's Flight",
      "First Gold",
      "Fuggle",
      "Galaxy",
      "Galena",
      "Glacier",
      "Gold",
      "Golding",
      "Green Bullet",
      "Hallertau",
      "Hallertau Mittlefruh",
      "HBC 431",
      "HBC 472",
      "HBC 682",
      "Helga",
      "Herkules",
      "Hersbrucker",
      "Horizon",
      "Huell Melon",
      "Kohatu",
      "Liberty",
      "Loral",
      "Magnum",
      "Mandarina Bavaria",
      "Merkur",
      "Millennium",
      "Mosaic",
      "Motueka",
      "Mt. Hood",
      "Mt. Rainier",
      "Nelson Sauvin",
      "Newport",
      "Northdown",
      "Northern Brewer",
      "Nugget",
      "Opal",
      "Pacific Gem",
      "Pacific Jade",
      "Pacifica",
      "Palisade",
      "Perle",
      "Phoenix",
      "Pilgrim",
      "Pioneer",
      "Polaris",
      "Premiant",
      "Pride of Ringwood",
      "Progress",
      "Rakau",
      "Riwaka",
      "Saaz",
      "Sabro",
      "Santiam",
      "Saphir",
      "Savinjski Golding",
      "Select",
      "Simcoe",
      "Smaragd",
      "Sorachi Ace",
      "Southern Cross",
      "Sovereign",
      "Spalt",
      "Sterling",
      "Strisselspalt",
      "Summer",
      "Summit",
      "Super Pride",
      "Sussex",
      "Sylva",
      "Tahoma",
      "Target",
      "Tettnang",
      "Tomahawk",
      "Tradition",
      "Triplepearl",
      "Triskel",
      "Ultra",
      "Vanguard",
      "Wai-Iti",
      "Waimea",
      "Wakatu",
      "Warrior",
      "Whitbread Golding",
      "Willamette",
      "Zeus",
      "Zythos"
      ]

    puts "Creating hops!"
    hops.each do |h|
      Hop.find_or_create_by(name: h)
    end

    puts "#{hops.count} hops found or created!"
  end
end
