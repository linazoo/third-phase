# fetch-cohort-data

This is a utility to extract student data from backoffice on a per-cohort basis.

## Requirements

 * `bundle install` to get the necessary dependencies.
 * You will need a Backoffice API Secret and Key. Contact tech to have one generated for you.
 * This script assumes your secret and key are in the environment variables `BO_SECRET` and `BO_KEY`.

## Usage

Run `bundle exec ruby fetch-cohort-data.rb -h` for usage details.

## Example

```
$ bundle exec ruby fetch-cohort-data.rb -c chi-fireflies-2017 -e github_username
Alexthegurl
avrilanne
CJWess
dandanthedevman
DGeorgevich
elsiekoglin
bugsdad05
karanobe
saganawski
kmoreo
moriley5
noelledusahel
rockomatthews
Rklangrin
saragerou
sarahdudek
tednguyenn
tovemercer
```
