number = 0
var3 = 0
var2 = 0
var1 = 0
start = 0

crescentNumber = 0
descendingNumber = 0

totalCalculation = 0

totalNumbers = 0

function toSeparated(separated, condicion)
	number100 = math.floor(separated / 100)
	number10 = math.floor(separated / 10)
	number1 = separated

	var3 = number100
	var2 = number10 - number100 * 10
	var1 = number1 - number10 * 10

	if tonumber(condicion) == 0 then
		addNumber()
	else
		if tonumber(condicion) == 1 then
			crescentAndDescending()
		elseif tonumber(condicion) == 2 then
			verification()
		end
	end
end

function calculation( )
	totalCalculation = totalCalculation + 1
	number = descendingNumber - crescentNumber

	if tonumber(number) == 495 then
		totalNumbers = totalNumbers + 1
		print("From: " .. tostring(start) .. " obtained: " .. tonumber(number) .. " in " .. tostring(totalCalculation) .. " calculations." .. " Total numbers = " .. tostring(totalNumbers))

		toSeparated(start, 0)
	else
		toSeparated(number, 1)
	end
end

function crescentAndDescending()

	if tonumber(var1) > tonumber(var2) and tonumber(var1) > tonumber(var3) then
		if tonumber(var2) > tonumber(var3) then
			descendingNumber = var1 .. var2 .. var3
			crescentNumber = var3 .. var2 .. var1
				calculation()
		else
			descendingNumber = var1 .. var3 .. var2
			crescentNumber = var2 .. var3 .. var1
				calculation()
		end
	else

		if tonumber(var2) > tonumber(var1) and tonumber(var2) > tonumber(var3) then
			if tonumber(var1) > tonumber(var3) then
				descendingNumber = var2 .. var1 .. var3
				crescentNumber = var3 .. var1 .. var2
					calculation()
			else
				descendingNumber = var2 .. var3 .. var1
				crescentNumber = var1 .. var3 .. var2
					calculation()
			end
		else

			if tonumber(var3) > tonumber(var2) and tonumber(var3) > tonumber(var1) then
				if tonumber(var1) > tonumber(var2) then
					descendingNumber = var3 .. var1 .. var2
					crescentNumber = var2 .. var1 .. var3
						calculation()
				else
					descendingNumber = var3 .. var2 .. var1
					crescentNumber = var1 .. var2 .. var3
						calculation()
				end
			end
		end
	end
end

function verification()
	if var1 == var2 then
		addNumber()
	else
		if var1 == var3 then
			addNumber()
		else
			if var2 == var3 then
				addNumber()
			else
				print("calculating from: " .. tostring(start) .. "...")
				crescentAndDescending()
			end
		end
	end
end

function addNumber()
	totalCalculation = 0
	start = start + 1

	if start < 10 then
		start = 0 .. 0 .. start
	elseif start < 100 then
		start = 0 .. start
	end

	number = start

	if tonumber(number) < 1000 then
		toSeparated(number, 2)
	else
		print("Program closed! Total Numers: " .. tostring(totalNumbers))
		print("Enter to exit")
		turnOff = io.read()
	end


end

addNumber()
