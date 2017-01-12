var choices = 0
var outcomes = 1
let decisions = life.count

for decision in life {
	print(decision.1)
	choices += decision.1.count
	outcomes = outcomes * decision.1.count
}
print(decisions)
print(choices)
print(outcomes)
