# docker-twurl
Extremely simple docker wrapper for twurl (Twitter client built around curl)

## Installation:

1. `git clone https://github.com/PeGa/docker-twurl/`
2. `cd docker-twurl`
3. `docker build . -t twurl:latest`
4. `docker run --name twurl -it twurl:latest`

## Usage

> For a permanent alias is advisable to add it after the last line of `~/.bash_profile` or `~/.bashrc`

1. `docker run -td twurl`
2. `alias twurl='docker exec -it twurl twurl'`
3. `twurl` 

See https://github.com/twitter/twurl#getting-started
