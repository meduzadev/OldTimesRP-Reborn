Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 10
Config.SpeedMultiplier = 3.6
Config.Locale          = 'de'

Config.Prices = {
	dmv         = 2500,
	drive       = 3000,
	drive_bike  = 2000,
	drive_truck = 15000
}

Config.VehicleModels = {
	drive       = 'buffalo',
	drive_bike  = 'sanchez',
	drive_truck = 'phantom'
}

Config.SpeedLimits = {
	residence = 80,
	town      = 100,
	freeway   = 120
}

Config.Zones = {

	DMVSchool = {
		Pos   = {x = 273.45501708984, y = -1350.5806884766, z = 31.935119628906},
		Size  = {x = 0.9, y = 0.9, z = 0.9},
		Color = {r = 214, g = 224, b = 0},
		Type  = 36
	},

	VehicleSpawnPoint = {
		Pos   = {x = 278.59771728516, y = -1351.8616943359, z = 31.353483200073, h = 140.04},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	}

}

Config.CheckPoints = {

	{
		Pos = {x = 255.62562561035, y = -1343.9459228516, z = 31.935125350952},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('success_drive_start', Config.SpeedLimits['residence']), 5000)
		end
	},

	{
		Pos = {x = 219.70407104492, y = -1368.0657958984, z = 30.545175552368},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 220.84521484375, y = -1406.2227783203, z = 29.486026763916},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_for_ped'), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(4000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_lets_cont'), 5000)
			end)
		end
	},

	{
		Pos = {x = 217.821, y = -1410.520, z = 28.292},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_look_left', Config.SpeedLimits['town']), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},

	{
		Pos = {x = 177.24925231934, y = -1406.7275390625, z = 28.762409210205},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('watch_traffic_lightson'), 5000)
		end
	},

	{
		Pos = {x = -16.012142181396, y = -1580.2655029297, z = 28.693586349487},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -204.54759216309, y = -1446.6907958984, z = 30.864891052246},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('stop_for_passing'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			FreezeEntityPosition(vehicle, true)
			Citizen.Wait(6000)
			FreezeEntityPosition(vehicle, false)
		end
	},

	{
		Pos = {x = -269.38729858398, y = -1386.4400634766, z = 30.741109848022},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -122.56227874756, y = -1137.6369628906, z = 25.176124572754},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 198.3441619873, y = -1032.0197753906, z = 28.786981582642},
		Action = function(playerPed, vehicle, setCurrentZoneType)
					DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 438.26336669922, y = -544.56109619141, z = 28.021238327026},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('freeway')

			DrawMissionText(_U('hway_time', Config.SpeedLimits['freeway']), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},

	{
		Pos = {x = 1097.1727294922, y = 381.51132202148, z = 82.613708496094},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 1704.5111083984, y = 1348.0892333984, z = 85.952529907227},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 2357.5903320312, y = 1062.8328857422, z = 80.99242401123},
		Action = function(playerPed, vehicle, setCurrentZoneType)
		
		DrawMissionText(_U('go_next_point'), 5000)
			--setCurrentZoneType('town')
			--DrawMissionText(_U('in_town_speed', Config.SpeedLimits['town']), 5000)
		end
	},

	{
		Pos = {x = 916.52703857422, y = -1178.5631103516, z = 47.410465240479},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 215.40336608887, y = -1163.9914550781, z = 37.588890075684},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')
			DrawMissionText(_U('in_town_speed', Config.SpeedLimits['town']), 5000)
		end
	},

	{
		Pos = {x = 230.78450012207, y = -1403.7004394531, z = 29.757053375244},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('gratz_stay_alert'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			DrawMissionText(_U('success_drive_park'), 5000)
		end
	},

	{
		Pos = {x = 264.330078125, y = -1390.6029052734, z = 31.140605926514},
		Action = function(playerPed, vehicle, setCurrentZoneType)
				DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 278.80963134766, y = -1351.6606445312, z = 31.354793548584},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			ESX.Game.DeleteVehicle(vehicle)
		end
	}

}
