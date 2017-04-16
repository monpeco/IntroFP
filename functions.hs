--Basic functions
double x = x + x

qua x = double (double x)

factorial n = product [1..n]

suma n = sum [1..n]

average ns = sum ns `div` length ns

average' ns = div (sum ns) (length ns)

--no parameter function
fun_c = b + c
	where 
		b = 1
		c = 8
--one parameter function
fun_d b = b + c
	where 
		c = 8
{-
curly brackets comment
used for multi line comments
-}		
fun_e b = b + c + d
	where 
		{c = 10;
		d = 10}		
		
add x y = x + y	
	
add' (x, y) = x + y	

zeroto x = [0..x]

mult x y z = x*y*z

