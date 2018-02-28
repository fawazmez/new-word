-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--title
local TitleOfTheShopTextField = display.newText( "Pizza Shop", display.contentCenterX - 00, display.contentCenterY - 600, native.systemFont, 100 )
TitleOfTheShopTextField:setFillColor( 99, 10, 88 )

--instructions
local InstructionsOnHowToUseTheShopTextField = display.newText( "Enter the size of the pizza (in inchs)", display.contentCenterX - 200, display.contentCenterY - 300, native.systemFont, 85 )
InstructionsOnHowToUseTheShopTextField:setFillColor( 99, 10, 88 )

--textbox
local DiameterOfPizzaTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 100, 750, 140 )
DiameterOfPizzaTextField.id = "length textField"

-- The text that have the subtotal,tax,and total 
local SubtotalTextField = display.newText( "Subtotal", display.contentCenterX - 650, display.contentCenterY + 400, native.systemFont, 100 )
SubtotalTextField.id = "SubtotalTextField"
SubtotalTextField:setFillColor( 1, 1, 1 )

local TaxTextField = display.newText( "Tax", display.contentCenterX + 50, display.contentCenterY + 400, native.systemFont, 100 )
TaxTextField.id = "TaxTextField"
TaxTextField:setFillColor( 1, 1, 1 )

local TotalTextField = display.newText( "Total", display.contentCenterX + 700, display.contentCenterY + 400, native.systemFont, 100 )
TotalTextField.id = "TotalTextField"
TotalTextField:setFillColor( 1, 1, 1 )

-- the click button
local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +700
calculateButton.y = display.contentCenterY -100
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )
    -- this function calculates the subtotal,tax,and total
 
    local DiameterOfPizza
	local Tax 
	local Subtotal
	local Total
 
    DiameterOfPizza = DiameterOfPizzaTextField.text
    Tax = TaxTextField.text
    Subtotal = SubtotalTextField.text
    Total = TotalTextField.text
    Subtotal = 0.75 + 1.00 + (DiameterOfPizza * 0.5)
    Tax = Subtotal * 0.13
    Total = Subtotal + Tax
    -- print( Subtotal, Tax, and Total )
   SubtotalTextField.text = "Subtotal: " .. Subtotal.."$"
   TaxTextField.text = "Tax:" .. Tax .."$"
   TotalTextField.text = "Total:" ..Total.."$"

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )