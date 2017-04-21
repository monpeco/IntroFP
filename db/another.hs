-- ---------- FUNCTIONS ----------
-- ghc --make another.hs  compiles your program and executes the main function
 
-- Functions must start with lowercase letters
 
-- We can define functions and values in the GHCi with let
-- let num7 = 7
-- let getTriple x = x * 3
 
-- getTriple num7 = 21
 
-- main is a function that can be called in the terminal with main
main = do
	-- Prints the string with a new line
	putStrLn "What's your name: "
	
	-- Gets user input and stores it in name
	-- <- Pulls the name entered from an IO action
	name <- getLine
	
	putStrLn ("Hello " ++ name)