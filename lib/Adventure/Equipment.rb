# frozen_string_literal: true

## Simple Melee Weapons
Club = Weapon.new('Club', 'Simple Melee', '1d4', 'bludgeoning', '2lb.', '1sp', false, 'Light')
Dagger = Weapon.new('Dagger', 'Simple Melee', '1d4', 'piercing', '1lb.', '2gp', true, 'Finesse, light, thrown (range 20/60)')
Greatclub = Weapon.new('Greatclub', 'Simple Melee', '1d8', 'bludgeoning', '10lb.', '2sp', false, 'Two-handed')
Handaxe = Weapon.new('Handaxe', 'Simple Melee', '1d6', 'slashing', '2lb.', '5gp', false, 'Light, thrown (range 20/60)')
Javelin = Weapon.new('Javelin', 'Simple Melee', '1d6', 'piercing', '2lb.', '5sp', false, 'Thrown (range 30/120)')
Light_Hammer = Weapon.new('Light Hammer', 'Simple Melee', '1d4', 'bludgeoning', '2lb.', '2gp', false, 'Light, thrown (range 20/60)')
Mace = Weapon.new('Mace', 'Simple Melee', '1d6', 'bludgeoning', '4lb.', '5gp', false, '')
Quarterstaff = Weapon.new('Quarterstaff', 'Simple Melee', '1d6', 'bludgeoning', '4lb.', '2sp', false, 'Versatile (1d8)')
Sickle = Weapon.new('Sickle', 'Simple Melee', '1d4', 'slashing', '2lb.', '1gp', false, 'Light')
Spear = Weapon.new('Spear', 'Simple Melee', '1d6', 'piercing', '3lb.', '1gp', false, 'Thrown (range 20/60), versatile (1d8)')

## Simple Ranged Weapons
Light_Crossbow = Weapon.new('Light Crossbow', 'Simple Ranged', '1d8', 'piercing', '5lb.', '25gp', false, 'Ammunition (range 80/320), loading, two-handed', true)
Dart = Weapon.new('Dart', 'Simple Ranged', '1d4', 'piercing', '1/4lb.', '5sp', true, 'Finesse, thrown (range 20/60)', true)
Shortbow = Weapon.new('Shortbow', 'Simple Ranged', '1d6', 'piercing', '2lb.', '1gp', false, 'Ammunition (range 80/320),two-handed', true)
Sling = Weapon.new('Sling', 'Simple Ranged', '1d4', 'bludgeoning', '—', '—', false, 'Ammunition (30/120)', true)

## Martial Melee Weapons
Battleaxe = Weapon.new('Battleaxe', 'Martial Melee', '1d8', 'slashing', '4lb.', '10gp', false, 'Versatile (1d10)')
Flail = Weapon.new('Flail', 'Martial Melee', '1d8', 'bludgeoning', '2lb.', '10gp', false, '')
Glaive = Weapon.new('Glaive', 'Martial Melee', '1d10', 'slashing', '6lb.', '20gp', false, 'Heavy, reach, two-handed')
Greataxe = Weapon.new('Greataxe', 'Martial Melee', '1d12', 'slashing', '7lb.', '30gp', false, 'Heavy, two-handed')
Greatsword = Weapon.new('Greatsword', 'Martial Melee', '2d6', 'slashing', '6lb.', '50gp', false, 'Heavy, two-handed')
Halberd = Weapon.new('Halberd', 'Martial Melee', '1d10', 'slashing', '6lb.', '20gp', false, 'Heavy, reach, two-handed')
Lance = Weapon.new('Lance', 'Martial Melee', '1d12', 'piercing', '6lb.', '10gp', false, 'Reach, disadvantage when you use a lance to attack a target within 5 feet of you')
Longsword = Weapon.new('Longsword', 'Martial Melee', '1d8', 'slashing', '3lb.', '15gp', false, 'Versatile (1d10)')
Maul = Weapon.new('Maul', 'Martial Melee', '2d6', 'bludgeoning', '10lb.', '10gp', false, 'Heavy, two-handed')
Morningstar = Weapon.new('Morningstar', 'Martial Melee', '1d8', 'piercing', '4lb.', '15gp', false, '')
Pike = Weapon.new('Pike', 'Martial Melee', '1d6', 'piercing', '18lb.', '5gp', false, 'Heavy, reach, two-handed')
Rapier = Weapon.new('Rapier', 'Martial Melee', '1d6', 'piercing', '2lb.', '25gp', true, 'Finesse')
Scimitar = Weapon.new('Scimitar', 'Martial Melee', '1d6', 'slashing', '3lb.', '25gp', true, 'Finesse, light')
Shortsword = Weapon.new('Shortsword', 'Martial Melee', '1d4', 'piercing', '2lb.', '10gp', true, 'Finesse, light')
Trident = Weapon.new('Trident', 'Martial Melee', '1d8', 'piercing', '4lb.', '5gp', false, 'Thrown (range 20/60), versatile (1d8)')
War_Pick = Weapon.new('War pick', 'Martial Melee', '1d8', 'piercing', '2lb.', '5gp', false, '')
Warhammer = Weapon.new('Warhammer', 'Martial Melee', '1d8', 'bludgeoning', '2lb.', '15gp', false, 'Versatile (1d10)')
Whip = Weapon.new('Whip', 'Martial Melee', '1d4', 'slashing', '3lb.', '2gp', true, 'Finesse, reach')

## Ranged Weapons
Blowgun = Weapon.new('Blowgun', 'Simple Melee', '1', 'piercing', '1lb.', '10gp', false, 'Ammunition (range 25/100), loading', true)
Hand_Crossbow = Weapon.new('Hand Crossbow', 'Simple Melee', '1d6', 'piercing', '3lb.', '75gp', false, 'Ammunition (range 30/120), light, loading', true)
Heavy_Crossbow = Weapon.new('Heavy Crossbow', 'Simple Melee', '1d10', 'piercing', '18lb.', '50gp', false, 'Ammunition (range 100/400), heavy, loading, two-handed', true)
Longbow = Weapon.new('Longbow', 'Simple Melee', '1d8', 'piercing', '2lb.', '50gp', false, 'Ammunition (range 150/600), heavy, two-handed', true)

## Light Armor
Padded_Armor = Armor.new('Padded', 'Light', 11, 10, '5gp', '8lb.', true)
Leather_Armor = Armor.new('Leather', 'Light', 11, 10, '10gp', '10lb.')
Studded_leather_Armor = Armor.new('Studded leather', 'Light', 12, 10, '45gp', '13lb.')

## Medium Armor
Hide_Armor = Armor.new('Hide', 'Medium', 12, 2, '10gp', '12lb.')
Chain_shirt_Armor = Armor.new('Chain shirt', 'Medium', 13, 2, '50gp', '20lb.', true)
Scale_mail_Armor = Armor.new('Scale mail', 'Medium', 14, 2, '50gp', '45lb.', true)
Breastplate_Armor = Armor.new('Breastplate', 'Medium', 14, 2, '400gp', '20lb.')
Half_plate_Armor = Armor.new('Half plate', 'Medium', 15, 2, '750gp', '40lb.', true)

## Heavy Armor
Ring_mail_Armor = Armor.new('Ring mail', 'Heavy', 14, 0, '30gp', '40lb.', true)
Chain_mail_Armor = Armor.new('Chain mail', 'Heavy', 16, 0, '75gp', '55lb.', true)
Splint_Armor = Armor.new('Splint', 'Heavy', 17, 0, '200gp', '60lb.', true)
Plate_Armor = Armor.new('Plate', 'Heavy', 18, 0, '1500gp', '65lb.', true)
