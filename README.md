# Install Docker

- on Ubuntu: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

- on MacOs: https://docs.docker.com/desktop/install/mac-install/

# Running tutorial

1. Init bundle

```
bundle init
```

2. Generate a Gemfile.lock

````
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:3.2.3 bundle install
````

3. Build ruby-3-tutorial image

```
docker build -t ruby-3-tutorial .
````

4. Running a ruby-3-tutorial container 

```
docker run -it --name ruby-3-tutorial ruby-3-tutorial
```

Should be printed "Hello, world!"

# Running a single script

```
docker run -it --rm --name ruby -v "$PWD":/usr/src/app -w /usr/src/app ruby:3.2.3 ruby hello_world.rb
````
Should be printed "Hello, world!"

# Try examples with interactive terminal mode

```
docker run -it ruby:3.2.3
```