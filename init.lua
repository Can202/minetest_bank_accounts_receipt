--mod just for me

local modpath = minetest.get_modpath("bank_accounts_receipt")


minetest.register_craftitem("bank_accounts_receipt:x", {
	description = ("Trash"),
	inventory_image = "bank_accounts_receipt.png",
})
minetest.register_craftitem("bank_accounts_receipt:y", {
	description = ("Wet Trash"),
	inventory_image = "bank_accounts_receipt_water.png",
})
minetest.register_craft({
	output = "bank_accounts_receipt:x",
	recipe = {
		{"bank_accounts:receipt"},
	}
})

minetest.register_craft({
	output = "bank_accounts_receipt:y",
	recipe = {
		{"bank_accounts_receipt:x"},
		{"bucket:bucket_water"},
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_water"}}
})
minetest.register_craft({
	type  =  "cooking",
	recipe  = "bank_accounts_receipt:y",
	output = "default:paper 3",
})
