# docker-twurl
Extremely simple docker wrapper for twurl (Twitter client built around curl)

## Prerrequisites:

Put a working twurlrc file in the repo directory. If you don't have a working 
twurlrc, or this is the first time you're working with this repository, 
consider running the normal steps but adding `sh` at the end of the 
`docker run` sentence. Once inside the container, work your way through the 
authorization process for twurl.

Refer to the [official documentation](https://github.com/twitter/twurl#getting-started) for more info.

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
