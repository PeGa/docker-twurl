# docker-twurl
Extremely simple docker wrapper for twurl (Twitter client built around curl)

## Installation:

1. `git clone https://github.com/PeGa/docker-twurl/`
2. `cd docker-twurl`
3. `docker build . -t twurl:latest`
4. `docker run --name twurl -v $PWD/index:/index -v $PWD/twurlrc:/root/.twurlrc -td twurl:latest`

## Usage


Just run twurl container starting it with the following command:

```
docker start twurl
```

It will do its job and exit gracefully.

## SEE ALSO:

See https://github.com/twitter/twurl#getting-started
