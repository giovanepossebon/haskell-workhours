-- Horas
-- Giovane Possebon

needsToWork :: Int -> Int -> Int
needsToWork hours days = hours * days

statusWork :: Int -> Int -> String
statusWork  hoursWorked totalHours 
		| hoursWorked < totalHours = "You haven't complete your hours! " 
		++ show (hoursLeft hoursWorked totalHours) ++ " hours left!"
		| hoursWorked == totalHours = "You have finished your hours!" 
		| otherwise = "You've worked more than you need to! You have "
		++ show (hoursLeft hoursWorked totalHours) ++ " hours to take a break!"

hoursLeft :: Int -> Int -> Int
hoursLeft hoursWorked totalHours
		| hoursWorked < totalHours = totalHours - hoursWorked
		| otherwise = hoursWorked - totalHours

main = do
	putStrLn "How many hours do you need to work?"
	hoursDay <- readLn
	putStrLn "How many work days we have in this month?"
	daysMonth <- readLn
	let resultTotalHours = (needsToWork hoursDay daysMonth)
	putStrLn $ "You need to work " ++ show resultTotalHours ++ " hours!"
	putStrLn "How many hours do you have worked already?"
	hoursWorked <- readLn
	print(statusWork hoursWorked resultTotalHours)