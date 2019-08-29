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
		verification()
	else
		crescentAndDescending()
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

function ifRepeatedNumbers()
	if var1 == var2 then
		verification()
	else
		if var1 == var3 then
			verification()
		else
			if var2 == var3 then
				verification()
			else
				print("calculating from: " .. tostring(start) .. "...")
				crescentAndDescending()
			end
		end
	end
end

function verification()
	totalCalculation = 0
	var1 = var1 + 1

	if tonumber(var1) < 10 then
		if tonumber(var2) < 10 then
			if tonumber(var3) < 10 then
				start = var3 .. var2 .. var1
				ifRepeatedNumbers()
			else
				print("Program closed! Total Numers: " .. tostring(totalNumbers))
				turnOff = io.read()
			end
		else
			var2 = 0
			var3 = var3 + 1

			start = var3 .. var2 .. var1
			ifRepeatedNumbers()
		end
	else
		var1 = 0
		var2 = var2 + 1

				if tonumber(var2) < 10 then
			if tonumber(var3) < 10 then
				start = var3 .. var2 .. var1
				ifRepeatedNumbers()
			else
				print("Program closed! Total Numers: " .. tostring(totalNumbers))
				turnOff = io.read()
			end
		else
			var2 = 0
			var3 = var3 + 1

			start = var3 .. var2 .. var1
			ifRepeatedNumbers()
		end
	end

end

verification()
