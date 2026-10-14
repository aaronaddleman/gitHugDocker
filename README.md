# gitHugDocker

Run gitHug inside a container to not deal with Ruby packages


# build

```
docker build -t githug-game .
```

# run

```
docker run --rm -it --name githug -v "$(pwd)/githug_profile:/src/githug" githug-game
```

# how to githug

1. run the command `githug`
2. follow the instructions or challang
3. evaluate results with running `githug` again