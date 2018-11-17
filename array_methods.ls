min = -> it.reduce (res, inc) -> if inc < res then inc else res
max = -> it.reduce (res, inc) -> if inc > res then inc else res
range = -> max(it) - min(it)
bool = -> !!it
gt = -> bool it.reduce (res, inc) -> if inc > res then inc else false
lt = -> bool it.reduce (res, inc) -> if inc < res then inc else false
reverse = -> it.reduce (res, inc) -> [inc, ...res]
sort = ->
	reducer = (res, inc) -> arr =
		...res.filter -> it < inc
		inc
		...res.filter -> it > inc
	it.reduce reducer, []

arr = [\b, \a, \c]
console.log sort arr
