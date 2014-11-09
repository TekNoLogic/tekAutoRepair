
local f = CreateFrame("Frame")
f:SetScript("OnEvent", function()
	if not CanMerchantRepair() or GetMoney() < 1000000 or GetMoney() < GetRepairAllCost() then return end
	RepairAllItems()
end)

f:RegisterEvent("MERCHANT_SHOW")
if MerchantFrame:IsVisible() then f:GetScript("OnEvent")() end
