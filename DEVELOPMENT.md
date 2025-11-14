# Devcontainer

>to build in devcontainer run

```console
java -jar plantuml.jar "diagrams/*.puml" --output-dir ../build/media --format svg
npx @marp-team/marp-cli@latest slide-deck.md --bespoke.progress slide-deck.md -o build/index.html
```

>host from devcontainer

```console
cp media/* build/media
cd build

npx serve . -l 8080
```
