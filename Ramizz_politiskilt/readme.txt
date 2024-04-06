★ ☆ ✰ ✯ ✡ ✪ ✶ ✱ ✲ ✴ ✼ ✻ ✵ ❇ ❈ ❊ ❖ ❄ ❆ ❋ ❂ ⁂
Ramizz Politi skilt auto tøj skiftning.

dette er en simpel og nem Resource, som tilføjer stream af politi skilt Eup Model.
Til din server både til mænd og til kvinder. Samt at den tjekker om en spiller har
itemet politiskilt i dit inventory, hvis en spiller har itemet så skifter den model til
Decal/10 og nummer 174 til mænd, og nummer 191 til kvinder. Fjernes itemet så sætter den numrene til 0.

HVIS dit EUP køre anderledes end hvad dette er sat til, så kan du gå ind i Client.lua
ned på linje 20, 22, og 25 https://wiki.rage.mp/index.php?title=Clothes Dette link viser numrene

            SetPedComponentVariation(PlayerPed, 10, 174, 0, 0) -- Mænds Variant | Første nummer er decals Næste er 								  hvor politi skiltet kan findes dit EUP

            SetPedComponentVariation(PlayerPed, 10, 191, 0, 0) -- Kvinders Variant | Første nummer er decals Næste er 								  hvor politi skiltet kan findes i dit EUP

        SetPedComponentVariation(PlayerPed, 10, 0, 0, 0) -- Nulstilling hvis intet item.

For og tilføje som mit resource bruger skal du gå ind i [QB] - qb-core - shared- items
    ["politiskilt"] = {
        ["name"] = "politiskilt",
        ["label"] = "Politi Skilt",
        ["weight"] = 0,
        ["type"] = "item",
        ["image"] = "politiskilt.png",
        ["unique"] = true,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Et Politi Skilt?"
    },

For og have et gyldigt billede i dit inventory så man kan se skiltet
der tager du Billedet politiskilt fra resource mappen, og finder Resourcen
[QB] - qb-inventory - Html - Images (Og ligger billedet ind der).


Efter dette er gjordt så kan du gå ind i din server.cfg og sørge for at huske og starte resourcen via
ensure ramizz_politiskilt