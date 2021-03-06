# Docker Session

## Step 0 install docker

Install `VirtualBox` if you don't have it.

You can do it by `brew` or download it from Internet.

```
brew cask install virtualbox
```

Install docker tools on Mac OS. (via brew)

```
brew install docker docker-compose docker-machine
```

## Step 0.5 setup docker machine

Create a `default` machine

```
docker-machine create -d virtualbox default
```

Start `default` machine if it is not running
```
docker-machine start default
```

Config `default` machine
```
eval $(docker-machine env default)
```

## 0.99 Check docker version and info

```
docker version
docker info
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

Checkout this codebase and change directory to `1_rails_app`, run

```
docker-compose run --service-port web
```

The rails app should be available on http://DOCKER_MACHINE_IP:4000/

To get docker machine ip, run

```
docker-machine ip default
```

Run database migration

```
docker-compose run rake db:migrate
```
