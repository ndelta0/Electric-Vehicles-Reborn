script.on_init(function()
    remote.call("electric-vehicles-lib", "register-transformer", {name = "electric-vehicles-lo-voltage-transformer"})
    remote.call("electric-vehicles-lib", "register-transformer", {name = "electric-vehicles-hi-voltage-transformer"})
    remote.call("electric-vehicles-lib", "register-brake", {name = "electric-vehicles-regen-brake-controller", efficiency = 0.8})
end)
  