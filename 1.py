import string
from pathlib import Path

mappings = {
	'one':'o1e',
	'two':'t2o',
	'three':'t3e',
	'four':'f4r',
	'five':'f5e',
	'six':'s6x',
	'seven':'s7n',
	'eight':'e8t',
	'nine':'n9e',
}

def p1(part):
	total = 0

	for line in Path('1.txt').read_text().split("\n"):
		if part == 2:
			for k,v in mappings.items():
				line = line.replace(k,v)
		digits = [c for c in list(line) if c in string.digits]
		total += int(digits[0])*10+int(digits[-1])

	return total

print(p1(1))
print(p1(2))
