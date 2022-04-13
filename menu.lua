_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Vehicle Spawn", "Eclipse Roleplay | Version 2.0")
_menuPool:Add(mainMenu)


function LSPD(menu) 
   local lspd = _menuPool:AddSubMenu(menu, "Los Santos Police Department")

   -- Vehicle --
   local twoExp = _menuPool:AddSubMenu(lspd, "2020 Explorer")
   local ninSilv = _menuPool:AddSubMenu(lspd, "2019 Silverado")
   local eightTahoe = _menuPool:AddSubMenu(lspd, "2018 Tahoe")
   local eightCharge = _menuPool:AddSubMenu(lspd, "2018 Charger")
   local sixImp = _menuPool:AddSubMenu(lspd, "2016 Impala")
   local sixFpiu = _menuPool:AddSubMenu(lspd, "2016 FPIU")
   local fourTahoe = _menuPool:AddSubMenu(lspd, "2014 Tahoe")
   local fourCharge = _menuPool:AddSubMenu(lspd, "2014 Charger")
   local tenCharge = _menuPool:AddSubMenu(lspd, "2010 Charger")
   local silv = _menuPool:AddSubMenu(lspd, "Silverado")
   local ram = _menuPool:AddSubMenu(lspd, "Ram")
   local gator = _menuPool:AddSubMenu(lspd, "Gator")
   local fpis = _menuPool:AddSubMenu(lspd, "Ford Taurus")
   local f250 = _menuPool:AddSubMenu(lspd, "F250")
   local f150 = _menuPool:AddSubMenu(lspd, "F150")
   local rango = _menuPool:AddSubMenu(lspd, "Durango")
   local CVPI = _menuPool:AddSubMenu(lspd, "Crown Victoria")
   local cap = _menuPool:AddSubMenu(lspd, "Caprice")
   local camero = _menuPool:AddSubMenu(lspd, "Camero")
   local stang = _menuPool:AddSubMenu(lspd, "Mustang")
   local bmw = _menuPool:AddSubMenu(lspd, "BWM")
   local harley = _menuPool:AddSubMenu(lspd, "Harley")


   -- Variants --
   local m20exp = NativeUI.CreateItem("Marked", "Spawns the marked 2020 Explorer")
   local u20exp = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2020 Explorer")

   local m19silv = NativeUI.CreateItem("Marked", "Spawns the marked 2019 Silverado")
   local u19silv = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2019 Silverado")

   local m18tahoe = NativeUI.CreateItem("Marked", "Spawns the marked 2018 Tahoe")
   local u18tahoe = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2018 Tahoe")

   local m18charge = NativeUI.CreateItem("Marked", "Spawns the marked 2018 charger")
   local u18charge = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2018 Charger")
   local k918charge = NativeUI.CreateItem("K-9", "Spawns the K-9 2018 Charger")

   local m16imp = NativeUI.CreateItem("Marked", "Spawns the marked 2016 Impala")
   local u16imp = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2016 Impala")

   local m16fpiu = NativeUI.CreateItem("Marked", "Spawns the marked 2016 FPIU")
   local u16fpiu = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2016 FPIU")
   
   local m14tahoe = NativeUI.CreateItem("Marked", "Spawns the marked 2014 Tahoe")
   local u14tahoe = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2014 Tahoe")

   local m14charge = NativeUI.CreateItem("Marked", "Spawns the marked 2014 charger")
   local u14charge = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2018 Charger")
   
   local m10charge = NativeUI.CreateItem("Marked", "Spawns the marked 2010 Charger")
   local u10charge = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2010 Charger")

   local msilv = NativeUI.CreateItem("Marked", "Spawns the marked Silverado")
   local usilv = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Silverado")
   
   local mram = NativeUI.CreateItem("Marked", "Spawns the marked Ram")
   local uram = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Ram")
   
   local mgator = NativeUI.CreateItem("Marked", "Spawns the Gator")

   local mfpis = NativeUI.CreateItem("Marked", "Spawns the marked Ford Taurus")
   local ufpis = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Ford Taurus")

   local mf250 = NativeUI.CreateItem("Marked", "Spawns the marked F250")
   local uf250 = NativeUI.CreateItem("Unmarked", "Spawns the unmarked F250")
   
   local mf150 = NativeUI.CreateItem("Marked", "Spawns the marked F150")
   local uf150 = NativeUI.CreateItem("Unmarked", "Spawns the unmarked F150")
   
   local mrango = NativeUI.CreateItem("Marked", "Spawns the marked Durango")
   local urango = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Durango")
   
   local mCVPI = NativeUI.CreateItem("Marked", "Spawns the marked 2011 Crown Victoria")
   local uCVPI = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2011 Crown Victoria")
   
   local mcaprice = NativeUI.CreateItem("Marked", "Spawns the marked Caprice")
   local ucaprice = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Caprice")
   
   local mcam = NativeUI.CreateItem("Marked", "Spawns the marked Camero")
   local ucam = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Camero")
   
   local mstang = NativeUI.CreateItem("Marked", "Spawns the marked Mustang")
   local ustang = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Mustang")
   
   local mBMW = NativeUI.CreateItem("Marked", "Spawns the BWM Bike")
   
   local mharley = NativeUI.CreateItem("Marked", "Spawns the Harley Davidson Bike")
   

   -- 2020 Explorer --
   m20exp.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == m20exp then
            spawnCar(pd20exp)
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2020 Explorer")
        end
    end

    u20exp.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u20exp then 
            spawnCar("code320exp")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2020 Explorer")
        end
    end

    -- 2019 Silverado --

    m19silv.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == m19silv then
            spawnCar("code319silv")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2019 Silverado")
        end
    end

    u19silv.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u19silv then 
            spawnCar("code319silv")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2019 Silverado")
        end
    end

    -- 2018 Tahoe --
    m18tahoe.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == m18tahoe then
            spawnCar("code318tahoe")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2018 Tahoe")
        end
    end

    u18tahoe.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u18tahoe then 
            spawnCar("code318tahoe")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2018 Tahoe")
        end
    end

    -- 2018 Charger --
   m18charge.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == m18charge then
            spawnCar("code318charg")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2018 Charger")
        end
   end

   u18charge.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u18charge then 
            spawnCar("code318charg")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2018 Charger")
        end
    end

    k918charge.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == k918charge then
            spawnCar("code318chargk9")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned the K-9 2018 Charger")
        end
   end

   -- 2016 Impala --
   m16imp.Activated = function(sender, item)
    local liveryID = tonumber(0)
        if item == m16imp then
            spawnCar("code316impala")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2018 Tahoe")
        end
    end

    u16imp.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u16imp then 
            spawnCar("code316impala")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2016 Impala")
        end
    end

    -- 2016 FPIU --
    m16fpiu.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == m16fpiu then
            spawnCar("code316fpiu")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2016 FPIU")
        end
    end

    u16fpiu.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u16fpiu then 
            spawnCar("code316fpiu")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2016 FPIU")
        end
    end

    -- 2014 Tahoe --
    m14tahoe.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == m14tahoe then
            spawnCar("code314tahoe")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2014 Tahoe")
        end
    end

    u14tahoe.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u14tahoe then 
            spawnCar("code314tahoe")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2014 Tahoe")
        end
    end

   -- 2014 Charger --
   m14charge.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == m14charge then
            spawnCar("code314charg")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2014 Charger")
        end
    end

    u14charge.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u14charge then 
            spawnCar("code314charg")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2014 Charger")
        end
    end

    -- 2010 Charger --
    m10charge.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == m10charge then
            spawnCar("code310charg")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2010 Charger")
        end
    end

    u10charge.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u10charge then 
            spawnCar("code310charg")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked 2010 Charger")
        end
    end

    -- Silverado --
    msilv.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == msilv then
            spawnCar("code3silverado")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked Silverado")
        end
    end

    -- Ram --
    mram.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mram then
            spawnCar("code3ram")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked Ram")
        end
    end

    uram.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == uram then 
            spawnCar("code3ram")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked Ram")
        end
    end
    
    -- Gator --
    mgator.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mgator then
            spawnCar("code3gator")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in the Gator")
        end
    end

    -- Ford Taurus --
    mfpis.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mfpis then
            spawnCar("code3fpis")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked Ford Taurus")
        end
    end

    ufpis.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == ufpis then 
            spawnCar("code3fpis")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked Ford Taurus")
        end
    end

    -- f250 --
    mf250.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mf250 then
            spawnCar("code3f250")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in the marked F250")
        end
    end

    uf250.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == uf250 then 
            spawnCar("code3f250")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in the unmarked F250")
        end
    end

    -- F150 -- 
    mf150.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mf150 then
            spawnCar("code3f150")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in the marked 1250")
        end
    end

    uf150.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == u1250 then 
            spawnCar("code3f150")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in the unmarked F150")
        end
    end

    -- Durango --
    mrango.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mrango then
            spawnCar("code3durango")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked Durango")
        end
    end

    urango.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == urango then 
            spawnCar("code3durango")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked Durango")
        end
    end

    -- CVPI --
    mCVPI.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mCVPI then
            spawnCar("code3cvpi")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked Crown Victoria")
        end
    end

    uCVPI.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == uCVPI then 
            spawnCar("code3cvpi")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked Crown Victoria")
        end
    end

    -- Caprice --
    mcaprice.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mcaprice then
            spawnCar("code3cap")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked Caprice")
        end
    end

    ucaprice.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == ucaprice then 
            spawnCar("code3cap")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked Caprice")
        end
    end

    -- Camero --
    mcam.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mcam then
            spawnCar("code3camero")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked Camero")
        end
    end

    ucam.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == ucam then 
            spawnCar("code3camero")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked Camero")
        end
    end

    -- Mustang --
    mstang.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mstang then
            spawnCar("code3mustang")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked Mustang")
        end
    end

    ustang.Activated = function(sender, item)
        local liveryID = tonumber(3)
        if item == ustang then 
            spawnCar("code3mustang")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
            umExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("Spawned in a unmarked Mustang")
        end
    end

    -- BMW Bike --
    mBMW.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mBMW then
            spawnCar("code3bmw")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in the BMW Bike")
        end
    end

    -- Harley Bike --
    mharley.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == mharley then
            spawnCar("code3harley")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in the Harley Davidson Bike")
        end
    end


   lspd:AddItem(twoExp) 
   lspd:AddItem(ninSilv)
   lspd:AddItem(eightTahoe)
   lspd:AddItem(eightCharge)
   lspd:AddItem(sixImp)
   lspd:AddItem(sixFpiu)
   lspd:AddItem(fourTahoe)
   lspd:AddItem(fourCharge)
   lspd:AddItem(tenCharge)
   lspd:AddItem(silv)
   lspd:AddItem(ram)
   lspd:AddItem(gator)
   lspd:AddItem(fpis)
   lspd:AddItem(f250)
   lspd:AddItem(f150)
   lspd:AddItem(rango)
   lspd:AddItem(CVPI)
   lspd:AddItem(cap)
   lspd:AddItem(stang)
   lspd:AddItem(camero)
   lspd:AddItem(bmw)
   lspd:AddItem(harley)

   -- Variants --
   twoExp:AddItem(m20exp)
   twoExp:AddItem(u20exp)

   ninSilv:AddItem(m19silv)

   eightTahoe:AddItem(m18tahoe)
   eightTahoe:AddItem(u18tahoe)

   eightCharge:AddItem(m18charge)
   eightCharge:AddItem(u18charge)
   eightCharge:AddItem(k918charge)

   sixImp:AddItem(m16imp)
   sixImp:AddItem(u16imp)

   sixFpiu:AddItem(m16fpiu)
   sixFpiu:AddItem(u16fpiu)

   fourTahoe:AddItem(m14tahoe)
   fourTahoe:AddItem(u14tahoe)

   fourCharge:AddItem(m14charge)
   fourCharge:AddItem(u14charge)

   tenCharge:AddItem(m10charge)
   tenCharge:AddItem(u10charge)

   silv:AddItem(msilv)

   ram:AddItem(mram)
   ram:AddItem(uram)

   gator:AddItem(mgator)

   fpis:AddItem(mfpis)
   fpis:AddItem(ufpis)

   f250:AddItem(mf250)
   f250:AddItem(uf250)

   f150:AddItem(mf150)
   f150:AddItem(uf150)

   rango:AddItem(mrango)
   rango:AddItem(urango)

   CVPI:AddItem(mCVPI)
   CVPI:AddItem(uCVPI)

   cap:AddItem(mcaprice)
   cap:AddItem(ucaprice)

   camero:AddItem(mcam)
   camero:AddItem(ucam)

   stang:AddItem(mstang)
   stang:AddItem(ustang)

   bmw:AddItem(mBMW)
   harley:AddItem(mharley)
end

RegisterCommand("dv", function(source, args)
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
    SetEntityAsMissionEntity(veh, true, true)
    DeleteVehicle(veh)
end, false)

function BCSO(menu) 
    local bcso = _menuPool:AddSubMenu(menu, "Blane County Sheriff's Office")
 
    -- Vehicle --
    local twoExp = _menuPool:AddSubMenu(bcso, "2020 Explorer")
    local eightTahoe = _menuPool:AddSubMenu(bcso, "2018 Tahoe")
    local eightCharge = _menuPool:AddSubMenu(bcso, "2018 Charger")
    local sixImp = _menuPool:AddSubMenu(bcso, "2016 Impala")
    local sixFpiu = _menuPool:AddSubMenu(bcso, "2016 FPIU")
    local fourTahoe = _menuPool:AddSubMenu(bcso, "2014 Tahoe")
    local fourCharge = _menuPool:AddSubMenu(bcso, "2014 Charger")
    local tenCharge = _menuPool:AddSubMenu(bcso, "2010 Charger")
    local ram = _menuPool:AddSubMenu(bcso, "Ram")
    local gator = _menuPool:AddSubMenu(bcso, "Gator")
    local fpis = _menuPool:AddSubMenu(bcso, "Ford Taurus")
    local f250 = _menuPool:AddSubMenu(bcso, "F250")
    local f150 = _menuPool:AddSubMenu(bcso, "F150")
    local rango = _menuPool:AddSubMenu(bcso, "Durango")
    local CVPI = _menuPool:AddSubMenu(bcso, "Crown Victoria")
    local cap = _menuPool:AddSubMenu(bcso, "Caprice")
    local camero = _menuPool:AddSubMenu(bcso, "Camero")
    local stang = _menuPool:AddSubMenu(bcso, "Mustang")
    local bmw = _menuPool:AddSubMenu(bcso, "BWM")
    local harley = _menuPool:AddSubMenu(bcso, "Harley")
 
 
    -- Variants --
    local m20exp = NativeUI.CreateItem("Marked", "Spawns the marked 2020 Explorer")
    local u20exp = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2020 Explorer")
 
    local m19silv = NativeUI.CreateItem("Marked", "Spawns the marked 2019 Silverado")
    local u19silv = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2019 Silverado")
 
    local m18tahoe = NativeUI.CreateItem("Marked", "Spawns the marked 2018 Tahoe")
    local u18tahoe = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2018 Tahoe")
 
    local m18charge = NativeUI.CreateItem("Marked", "Spawns the marked 2018 charger")
    local u18charge = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2018 Charger")
    local k918charge = NativeUI.CreateItem("K-9", "Spawns the K-9 2018 Charger")
 
    local m16imp = NativeUI.CreateItem("Marked", "Spawns the marked 2016 Impala")
    local u16imp = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2016 Impala")
 
    local m16fpiu = NativeUI.CreateItem("Marked", "Spawns the marked 2016 FPIU")
    local u16fpiu = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2016 FPIU")
    
    local m14tahoe = NativeUI.CreateItem("Marked", "Spawns the marked 2014 Tahoe")
    local u14tahoe = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2014 Tahoe")
 
    local m14charge = NativeUI.CreateItem("Marked", "Spawns the marked 2014 charger")
    local u14charge = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2018 Charger")
    
    local m10charge = NativeUI.CreateItem("Marked", "Spawns the marked 2010 Charger")
    local u10charge = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2010 Charger")
 
    local msilv = NativeUI.CreateItem("Marked", "Spawns the marked Silverado")
    local usilv = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Silverado")
    
    local mram = NativeUI.CreateItem("Marked", "Spawns the marked Ram")
    local uram = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Ram")
    
    local mgator = NativeUI.CreateItem("Marked", "Spawns the Gator")
 
    local mfpis = NativeUI.CreateItem("Marked", "Spawns the marked Ford Taurus")
    local ufpis = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Ford Taurus")
 
    local mf250 = NativeUI.CreateItem("Marked", "Spawns the marked F250")
    local uf250 = NativeUI.CreateItem("Unmarked", "Spawns the unmarked F250")
    
    local mf150 = NativeUI.CreateItem("Marked", "Spawns the marked F150")
    local uf150 = NativeUI.CreateItem("Unmarked", "Spawns the unmarked F150")
    
    local mrango = NativeUI.CreateItem("Marked", "Spawns the marked Durango")
    local urango = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Durango")
    
    local mCVPI = NativeUI.CreateItem("Marked", "Spawns the marked 2011 Crown Victoria")
    local uCVPI = NativeUI.CreateItem("Unmarked", "Spawns the unmarked 2011 Crown Victoria")
    
    local mcaprice = NativeUI.CreateItem("Marked", "Spawns the marked Caprice")
    local ucaprice = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Caprice")
    
    local mcam = NativeUI.CreateItem("Marked", "Spawns the marked Camero")
    local ucam = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Camero")
    
    local mstang = NativeUI.CreateItem("Marked", "Spawns the marked Mustang")
    local ustang = NativeUI.CreateItem("Unmarked", "Spawns the unmarked Mustang")
    
    
 
    -- 2020 Explorer --
    m20exp.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == m20exp then
             spawnCar("code320exp")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked 2020 Explorer")
         end
     end
 
     u20exp.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == u20exp then 
             spawnCar("code320exp")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked 2020 Explorer")
         end
     end
 
     -- 2019 Silverado --
 
     m19silv.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == m19silv then
             spawnCar("code319silverado")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked 2019 Silverado")
         end
     end
 
 
     -- 2018 Tahoe --
     m18tahoe.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == m18tahoe then
             spawnCar("code318tahoe")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked 2018 Tahoe")
         end
     end
 
     u18tahoe.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == u18tahoe then 
             spawnCar("code318tahoe")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked 2018 Tahoe")
         end
     end
 
     -- 2018 Charger --
    m18charge.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == m18charge then
             spawnCar("code318charg")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked 2018 Charger")
         end
    end
 
    u18charge.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == u18charge then 
             spawnCar("code318charg")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked 2018 Charger")
         end
     end
 
     k918charge.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == k918charge then
             spawnCar("code318chargk9")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned the K-9 2018 Charger")
         end
    end
 
    -- 2016 Impala --
    m16imp.Activated = function(sender, item)
     local liveryID = tonumber(1)
         if item == m16imp then
             spawnCar("code316impala")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked 2018 Tahoe")
         end
     end
 
     u16imp.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == u16imp then 
             spawnCar("code316impala")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked 2016 Impala")
         end
     end
 
     -- 2016 FPIU --
     m16fpiu.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == m16fpiu then
             spawnCar("code316fpiu")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked 2016 FPIU")
         end
     end
 
     u16fpiu.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == u16fpiu then 
             spawnCar("code316fpiu")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked 2016 FPIU")
         end
     end
 
     -- 2014 Tahoe --
     m14tahoe.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == m14tahoe then
             spawnCar("code314tahoe")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked 2014 Tahoe")
         end
     end
 
     u14tahoe.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == u14tahoe then 
             spawnCar("code314tahoe")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked 2014 Tahoe")
         end
     end
 
    -- 2014 Charger --
    m14charge.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == m14charge then
             spawnCar("code314charg")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked 2014 Charger")
         end
     end
 
     u14charge.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == u14charge then 
             spawnCar("code314charg")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked 2014 Charger")
         end
     end
 
     -- 2010 Charger --
     m10charge.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == m10charge then
            spawnCar("code310charg")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            Extra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a marked 2010 Charger")
         end
     end
 
     u10charge.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == u10charge then 
             spawnCar("code310charg")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked 2010 Charger")
         end
     end
 
     -- Silverado --
     msilv.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == msilv then
             spawnCar("code3silv")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked Silverado")
         end
     end
 
 
     -- Ram --
     mram.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mram then
             spawnCar("code3ram")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked Ram")
         end
     end
 
     uram.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == uram then 
             spawnCar("code3ram")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked Ram")
         end
     end
     
     -- Gator --
     mgator.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mgator then
             spawnCar("code3gator")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in the Gator")
         end
     end
 
     -- Ford Taurus --
     mfpis.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mfpis then
             spawnCar("code3fpis")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked Ford Taurus")
         end
     end
 
     ufpis.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == ufpis then 
             spawnCar("code3fpis")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked Ford Taurus")
         end
     end
 
     -- f250 --
     mf250.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mf250 then
             spawnCar("code3f250")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in the marked F250")
         end
     end
 
     uf250.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == uf250 then 
             spawnCar("code3f250")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in the unmarked F250")
         end
     end
 
     -- F150 -- 
     mf150.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mf150 then
             spawnCar("code3f150")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in the marked 1250")
         end
     end
 
     uf150.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == uf150 then 
             spawnCar("code3f150")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in the unmarked F150")
         end
     end
 
     -- Durango --
     mrango.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mrango then
             spawnCar("code3durango")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked Durango")
         end
     end
 
     urango.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == urango then 
             spawnCar("code3durango")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked Durango")
         end
     end
 
     -- CVPI --
     mCVPI.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mCVPI then
             spawnCar("code3cvpi")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked Crown Victoria")
         end
     end
 
     uCVPI.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == uCVPI then 
             spawnCar("code3cvpi")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked Crown Victoria")
         end
     end
 
     -- Caprice --
     mcaprice.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mcaprice then
             spawnCar("code3cap")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked Caprice")
         end
     end
 
     ucaprice.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == ucaprice then 
             spawnCar("code3cap")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked Caprice")
         end
     end
 
     -- Camero --
     mcam.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mcam then
             spawnCar("code3camero")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked Camero")
         end
     end
 
     ucam.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == ucam then 
             spawnCar("code3camero")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked Camero")
         end
     end
 
     -- Mustang --
     mstang.Activated = function(sender, item)
         local liveryID = tonumber(1)
         if item == mstang then
             spawnCar("code3mustang")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             Extra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("spawned in a marked Mustang")
         end
     end
 
     ustang.Activated = function(sender, item)
         local liveryID = tonumber(3)
         if item == ustang then 
             spawnCar("code3mustang")
             local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
             SetVehicleCustomPrimaryColour(Veh, 0, 0, 0)
             umExtra(Veh)
             SetVehicleLivery(Veh, liveryID)
             notify("Spawned in a unmarked Mustang")
         end
     end
 
 
    bcso:AddItem(twoExp) 
    bcso:AddItem(eightTahoe)
    bcso:AddItem(eightCharge)
    bcso:AddItem(sixImp)
    bcso:AddItem(sixFpiu)
    bcso:AddItem(fourTahoe)
    bcso:AddItem(fourCharge)
    bcso:AddItem(tenCharge)
    bcso:AddItem(ram)
    bcso:AddItem(gator)
    bcso:AddItem(fpis)
    bcso:AddItem(f250)
    bcso:AddItem(f150)
    bcso:AddItem(rango)
    bcso:AddItem(CVPI)
    bcso:AddItem(cap)
    bcso:AddItem(stang)
    bcso:AddItem(camero)
 
    -- Variants --
    twoExp:AddItem(m20exp)
    twoExp:AddItem(u20exp)
 
 
    eightTahoe:AddItem(m18tahoe)
    eightTahoe:AddItem(u18tahoe)
 
    eightCharge:AddItem(m18charge)
    eightCharge:AddItem(u18charge)
    eightCharge:AddItem(k918charge)
 
    sixImp:AddItem(m16imp)
    sixImp:AddItem(u16imp)
 
    sixFpiu:AddItem(m16fpiu)
    sixFpiu:AddItem(u16fpiu)
 
    fourTahoe:AddItem(m14tahoe)
    fourTahoe:AddItem(u14tahoe)
 
    fourCharge:AddItem(m14charge)
    fourCharge:AddItem(u14charge)
 
    tenCharge:AddItem(m10charge)
    tenCharge:AddItem(u10charge)
 
    ram:AddItem(mram)
    ram:AddItem(uram)
 
    gator:AddItem(mgator)
 
    fpis:AddItem(mfpis)
    fpis:AddItem(ufpis)
 
    f250:AddItem(mf250)
    f250:AddItem(uf250)
 
    f150:AddItem(mf150)
    f150:AddItem(uf150)
 
    rango:AddItem(mrango)
    rango:AddItem(urango)
 
    CVPI:AddItem(mCVPI)
    CVPI:AddItem(uCVPI)
 
    cap:AddItem(mcaprice)
    cap:AddItem(ucaprice)
 
    camero:AddItem(mcam)
    camero:AddItem(ucam)
 
    stang:AddItem(mstang)
    stang:AddItem(ustang)
end

function SAST(menu) 
    local sast = _menuPool:AddSubMenu(menu, "San Andreas State Troopers")

    -- Vehicle --
    local nineTahoe = _menuPool:AddSubMenu(sast, "2019 Tahoe")
    local eightTaurus = _menuPool:AddSubMenu(sast, "2018 Taurus")
    local eightCharge = _menuPool:AddSubMenu(sast, "2018 Charger")
    local sixExplorer = _menuPool:AddSubMenu(sast, "2016 Explorer")
    local fourCharge = _menuPool:AddSubMenu(sast, "2014 Charger")
    local f150 = _menuPool:AddSubMenu(sast, "F150")

    -- Variants --
    local pnt = NativeUI.CreateItem("Patrol", "Spawns the patrol 2019 Tahoe")
    local snt = NativeUI.CreateItem("Supervisor", "Spawns the supervisor 2019 Tahoe")
    
    local pet = NativeUI.CreateItem("Patrol", "Spawns the patrol 2018 Tarus")
    local set = NativeUI.CreateItem("Supervisor", "Spawns the supervisor 2018 Tarus")

    local pec = NativeUI.CreateItem("Patrol", "Spawns the patrol 2018 Charger")
    local sec = NativeUI.CreateItem("Supervisor", "Spawns the supervisor 2018 Charger")

    local pse = NativeUI.CreateItem("Patrol", "Spawns the patrol 2016 Explorer")
    local sse = NativeUI.CreateItem("Supervisor", "Spawns the supervisor 2016 Explorer")

    local pfc = NativeUI.CreateItem("Patrol", "Spawns the patrol 2014 Charger")
    local sfc = NativeUI.CreateItem("Supervisor", "Spawns the supervisor 2014 Charger")

    local pf = NativeUI.CreateItem("Patrol", "Spawns the Patrol F150")
    local sf = NativeUI.CreateItem("Supervisor", "Spawns the supervisor F150")
    local cf = NativeUI.CreateItem("CVE", "Spawns the CVE F150")
    
 
    -- 2019 Tahoe --
    pnt.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == pnt then
            spawnCar("v19tahoe")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a patrol 2019 Tahoe")
        end
    end

    snt.Activated = function(sender, item)
        local liveryID = tonumber(1)
        if item == snt then
            spawnCar("v19tahoe")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a supervisor 2019 Tahoe")
        end
    end

    -- 2018 Taurus --
    pet.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == pet then
            spawnCar("v18taurus")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a patrol 2018 Taurus")
        end
    end
    
    set.Activated = function(sender, item)
        local liveryID = tonumber(1)
        if item == set then
            spawnCar("v18taurus")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a supervisor 2018 Taurus")
        end
    end

    -- 2018 Charger --
    pec.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == pec then
            spawnCar("v18charger")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a patrol 2018 Charger")
        end
    end

    sec.Activated = function(sender, item)
       local liveryID = tonumber(1)
       if item == sec then
            spawnCar("v18charger")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a supervisor 2018 Charger")
        end
    end

    -- 2016 Explorer --
    pse.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == pse then
            spawnCar("v16explorer")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a patrol 2016 Explorer")
        end
    end
    
    sse.Activated = function(sender, item)
       local liveryID = tonumber(1)
       if item == sse then
            spawnCar("v16explorer")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a supervisor 2016 Explorer")
       end
    end

    -- 2014 Charger Tahoe --
    pfc.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == pfc then
            spawnCar("v14charger")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a patrol 2014 Charger")
        end
    end

    sfc.Activated = function(sender, item)
       local liveryID = tonumber(1)
       if item == sfc then
            spawnCar("v14charger")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a supervisor 2014 Charger")
       end
    end

    -- F150 --
    pf.Activated = function(sender, item)
        local liveryID = tonumber(0)
        if item == pf then
            spawnCar("vf150")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a patrol F150")
        end
    end

    sf.Activated = function(sender, item)
       local liveryID = tonumber(1)
       if item == sf then
            spawnCar("vf150")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            SetVehicleLivery(Veh, liveryID)
            notify("spawned in a supervisor F150")
       end
    end

    cf.Activated = function(sender, item)
        local liveryID = tonumber(2)
        if item == cf then
            spawnCar("vf150")
            local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
            sastExtra(Veh)
            notify("Spawned in a CVE F150")
        end
    end

    sast:AddItem(nineTahoe)
    sast:AddItem(eightTaurus)
    sast:AddItem(eightCharge)
    sast:AddItem(sixExplorer)
    sast:AddItem(fourCharge)
    sast:AddItem(f150)

    nineTahoe:AddItem(pnt)
    nineTahoe:AddItem(snt)
    eightTaurus:AddItem(pet)
    eightTaurus:AddItem(set)
    eightCharge:AddItem(pec)
    eightCharge:AddItem(sec)
    sixExplorer:AddItem(pse)
    sixExplorer:AddItem(sse)
    fourCharge:AddItem(pfc)
    fourCharge:AddItem(sfc)
    f150:AddItem(pf)
    f150:AddItem(sf)
    f150:AddItem(cf)
end 


LSPD(mainMenu)
BCSO(mainMenu)
SAST(mainMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:MouseControlsEnabled (false)
		_menuPool:MouseEdgeEnabled (false)
		_menuPool:ControlDisablingEnabled(false)
        _menuPool:ProcessMenus()
        if IsControlJustPressed(1, 170) then
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end)

-- 170 --

--[[ COPY BELOW ]]
function sastExtra(Vehicle)
    SetVehicleExtra(Vehicle, 1, false)
    SetVehicleExtra(Vehicle, 2, true)
    SetVehicleExtra(Vehicle, 3, false)
    SetVehicleExtra(Vehicle, 4, false)
    SetVehicleExtra(Vehicle, 5, true)
    SetVehicleExtra(Vehicle, 6, true)
    SetVehicleExtra(Vehicle, 7, false)
    SetVehicleExtra(Vehicle, 8, true)
    SetVehicleExtra(Vehicle, 9, true)
    SetVehicleExtra(Vehicle, 10, true)
end

function Extra(Vehicle)
    SetVehicleExtra(Vehicle, 1, false)
    SetVehicleExtra(Vehicle, 2, false)
    SetVehicleExtra(Vehicle, 3, true)
    SetVehicleExtra(Vehicle, 4, true)
    SetVehicleExtra(Vehicle, 5, false)
    SetVehicleExtra(Vehicle, 6, true)
    SetVehicleExtra(Vehicle, 7, true)
    SetVehicleExtra(Vehicle, 8, true)
    SetVehicleExtra(Vehicle, 9, false)
    SetVehicleExtra(Vehicle, 10, false)
    SetVehicleExtra(Vehicle, 11, true)
    SetVehicleExtra(Vehicle, 12, true)
end

function umExtra(Vehicle)
    SetVehicleExtra(Vehicle, 1, true)
    SetVehicleExtra(Vehicle, 2, true)
    SetVehicleExtra(Vehicle, 3, true)
    SetVehicleExtra(Vehicle, 4, true)
    SetVehicleExtra(Vehicle, 5, false)
    SetVehicleExtra(Vehicle, 6, false)
    SetVehicleExtra(Vehicle, 7, false)
    SetVehicleExtra(Vehicle, 8, true)
    SetVehicleExtra(Vehicle, 9, true)
    SetVehicleExtra(Vehicle, 10, true)
    SetVehicleExtra(Vehicle, 11, true)
    SetVehicleExtra(Vehicle, 12, true)
end

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

function giveWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 999, false, false)
end

function spawnCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(50)
    end

    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local vehicle = CreateVehicle(car, x + 2, y + 2, z + 1, GetEntityHeading(PlayerPedId()), true, false)
    SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
    
    SetEntityAsNoLongerNeeded(vehicle)
    SetModelAsNoLongerNeeded(vehicleName)
    
    --[[ SetEntityAsMissionEntity(vehicle, true, true) ]]
end