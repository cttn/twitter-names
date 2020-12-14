# twitter-names
Basic bash scripts for searching available twitter nicknames, without relying on Twitter API. 
The idea could not be more simple: Just launchs wget to open 'https://mobile.twitter.com/USERNAME', 
if wget complains, then the username should be available (there are some counterexamples to this rule: 
banned nicknames and local connection issues could derive in false positives).

## namespider.sh
Randomly searches for available five-letter twitter usernames.

## namespider2.sh
Randomly searches for available five-letter twitter usernames, indicating where the consonants and de vowels should be.

## namedics.sh
Looks for available twitter usernames, taken from a custom word dictionary. A spanish dictionary is provided as an example.
A filter for five-letter usernames is also given.
