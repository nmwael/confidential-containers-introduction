# Devcontainer

to build in devcontainer run
java -jar plantuml.jar "diagrams/*.puml" --output-dir ../build/media --format svg
npx @marp-team/marp-cli@latest slide-deck.md --bespoke.progress slide-deck.md -o build/index.html
