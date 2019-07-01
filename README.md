# docker-twurl
Extremely simple docker wrapper for twurl (Twitter client built around curl)

## Installation:

1. `docker clone https://github.com/PeGa/docker-twurl/`
2. `cd docker-twurl`
3. `docker build . -t twurl`

## Usage

> For a permanent alias is advisable to add it after the last line of `~/.bash_profile` or `~/.bashrc`

1. `alias twurl='docker run -it twurl'`
2. `twurl` 

See https://github.com/twitter/twurl#getting-started
