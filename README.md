# Docker Session

## Step 0 setup docker environment

Install `VirtualBox` if you don't have it.

You can do it by `brew` or download it from Internet.

```
brew cask install virtualbox
```

Install docker tools on Mac OS. (via brew)

```
brew install docker docker-compose docker-machine
```

Check docker version and info

```
docker version
docker info
```

## Step 0.5 setup docker machine

Create a `default` machine

```
docker-machine create -d virtualbox default
```

Start `default` machine
```
docker-machine start default
```

Config `default` machine
```
eval $(docker-machine env default)
```

## Run your very first docker container

```
docker run fengzhichao/debian_helloworld
```

## Run ruby container with entrypoint

Run with default entrypoint and argument

```
docker run fengzhichao/ruby_helloworld
```

Provide arguments (overriding default arguments)

```
docker run fengzhichao/ruby_helloworld http://www.bing.com
```

Provide entrypoint (overriding default arguments)

```
docker run --entrypoint curl fengzhichao/ruby_helloworld -i http://www.bing.com
```

## Run ruby app

```
docker run fengzhichao/ruby_app test_string
```

## Run rails app

```
```
