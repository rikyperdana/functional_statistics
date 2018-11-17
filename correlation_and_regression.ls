sum = -> it.reduce (res, inc) -> res + inc
multi = -> it.reduce (res, inc) -> res * inc
divs = -> it.reduce (res, inc) -> res / inc
mean = -> sum(it)/it.length
diff = -> if mean it then it.map -> it - that
squared = -> it.map -> Math.pow it, 2
pows = (num, arr) -> arr.map -> Math.pow it, num

variance = (xs) -> divs arr =
	sum squared diff xs
	xs.length - 1

stdDev = -> Math.sqrt variance it

skewness = (xs) -> times arr =
	if xs.length then divs [that, times [that-1, that-2]]
	sum pows 3, divs [stdDev, mean]map -> it xs

sumBothDiff = (xs, ys) -> iff diff(ys)
	sum diff(xs)map (val, key) -> val * that[key]

correlation = (xs, ys) -> sumBothDiff(xs, ys) / multi [xs, ys]map ->
	Math.sqrt sum squared diff it

linearRegB = (xs, ys) -> sumBothDiff(xs, ys) / sum squared diff xs
linearRegA = (xs, ys) -> mean(ys) - (linearRegB(xs, ys) * mean(xs))
linearRegY = (xs, ys, x) -> linearRegA(xs, ys) + linearRegB(xs, ys)*x

yHats = (xs, ys) -> xs.map -> linearRegY xs, ys, it
R2 = (xs, ys) -> divs [yHats(xs, ys), ys]map ->
	sum squared diff it

arrX = [1 2 3 4 5]; arrY = [2 3 4 5 6]
console.log anyFunction arrX, arrY
