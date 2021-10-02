# Tinker var
var netherrack_rod = <tconstruct:tool_rod>.withTag({Material: "netherrack"});
var fakeiron_rod = <tconstruct:tool_rod>.withTag({Material: "construction_alloy"});
var electrum_rod = <tconstruct:tool_rod>.withTag({Material: "electrum"});
var vibrant_rod = <tconstruct:tool_rod>.withTag({Material: "vibrant_alloy"});

var obsidian_large_plate = <tconstruct:large_plate>.withTag({Material: "obsidian"});
var iron_large_plate = <tconstruct:large_plate>.withTag({Material: "iron"});


# Remove vanilla crafts
recipes.remove(<storagedrawers:upgrade_storage>);
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.remove(<storagedrawers:upgrade_storage:4>);


# Storage Upgrades
recipes.addShaped("sd_storageupdrade_obsidian", <storagedrawers:upgrade_storage>, 
                    [
                        [netherrack_rod, netherrack_rod, netherrack_rod],
                        [obsidian_large_plate, <storagedrawers:upgrade_template>, obsidian_large_plate], 
                        [netherrack_rod, netherrack_rod, netherrack_rod]
                    ]);

recipes.addShaped("sd_storageupdrade_iron", <storagedrawers:upgrade_storage:1>, 
                    [
                        [fakeiron_rod, fakeiron_rod, fakeiron_rod],
                        [iron_large_plate, <storagedrawers:upgrade_storage
                        >, iron_large_plate], 
                        [fakeiron_rod, fakeiron_rod, fakeiron_rod]
                    ]);

recipes.addShaped("sd_storageupdrade_gold", <storagedrawers:upgrade_storage:2>, 
                    [
                        [electrum_rod, electrum_rod, electrum_rod],
                        [<ic2:plate:2>, <storagedrawers:upgrade_storage:1>, <ic2:plate:2>], 
                        [electrum_rod, electrum_rod, electrum_rod]]);

mods.extendedcrafting.TableCrafting.addShaped(2, <storagedrawers:upgrade_storage:3>,[
    [null, <colossalchests:chest_wall:5>, <thaumcraft:plate:2>, <colossalchests:chest_wall:5>, null],
    [<colossalchests:chest_wall:5>, <ic2:plate:16>, vibrant_rod, <ic2:plate:16>, <colossalchests:chest_wall:5>],
    [<thaumcraft:plate:2>, vibrant_rod, <storagedrawers:upgrade_storage:2>, vibrant_rod, <thaumcraft:plate:2>],
    [<colossalchests:chest_wall:5>, <ic2:plate:16>, vibrant_rod, <ic2:plate:16>, <colossalchests:chest_wall:5>],
    [null, <colossalchests:chest_wall:5>, <bloodmagic:slate:2>, <colossalchests:chest_wall:5>, null]
]);


