prime-number-multiplication-table
=================================

Prints out a multiplication table of the  first n prime numbers.

Run
=================================
$ruby lib/display_multiplication_table.rb COUNT

if COUNT is missing default count is set to 10

$ruby lib/display_multiplication_table.rb 6

x		2		3		5		7		11	13
2		4		6		10	14	22	26
3		6		9		15	21	33	39
5		10	15	25	35	55	65
7		14	21	35	49	77	91
11	22	33	55	77	121	143
13	26	39	65	91	143	169


Run Spec
=================================
$bundle exec rspec -f d