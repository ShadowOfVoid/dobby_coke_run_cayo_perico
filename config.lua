Config = {}
Config.Locale = 'en' -- English, German or Spanish - (en/de/es)

Config.useMythic = true -- change this if you want to use mythic_notify or not
Config.progBar = true -- change this if you want to use Progress Bar or not
Config.useCD = false -- change this if you want to have a global cooldown or not
Config.cdTime = 1200000 -- global cooldown in ms. Set to 20 minutes by default - (https://www.timecalculator.net/minutes-to-milliseconds)
Config.doorHeading = 330.38 -- change this to the proper heading to look at the door you start the runs with
Config.price = 5000 -- amount you have to pay to start a run 
Config.cokeTime = 60000 -- time in ms the effects of coke will last for
Config.pickupTime = 5000 -- time it takes to pick up the delivery 
Config.randBrick = math.random(50,70) -- change the numbers to how much coke you want players to receive after breaking down bricks
Config.takeBrick = 1 -- amount of brick you want to take after processing
Config.getCoords = false -- gets coords with /mycoords
Config.pilotPed = "s_m_m_pilot_02" -- change this to have a different ped as the planes pilot - (lsit of peds: https://wiki.rage.mp/index.php?title=Peds)
Config.landPlane = false -- change this if you want the plane to fly and land or if it should spawn on the ground

Config.locations = {
	[1] = { 
		fuel = {x = 1753.874, y = 3300.229, z = 41.15534}, -- location of the jerry can/waypoint
		landingLoc = {x = 1743.822, y = 3258.627, z = 41.36734}, -- don't mess with this unless you know what you're doing
		plane = {x = 736.6801, y = 2973.17, z = 93.81644, h = 284.13}, -- don't mess with this unless you know what you're doing
		runwayStart = {x = 1709.604, y = 3251.045, z = 41.03549}, -- don't mess with this unless you know what you're doing
		runwayEnd = {x = 1064.045, y = 3076.735, z = 41.16898}, -- don't mess with this unless you know what you're doing
		fuselage = {x = 1729.039, y = 3311.423, z = 41.2235}, -- location of the 3D text to fuel the plane
		stationary = {x = 1730.208, y = 3315.586, z = 41.22352, h = 16.29}, -- location of the plane if Config.landPlane is false 
		delivery = {x = 4452.9100, y = -4503.110, z = 4.1900}, -- delivery location
		hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, -- end location
		parking = {x = 1730.208, y = 3315.586, z = 41.22352}, -- don't mess with this unless you know what you're doing															
	}
}




