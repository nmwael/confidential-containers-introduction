echo "installing 01-fontconfigAndgraphviz"
     
sudo apt-get update 
sudo apt-get install -y fontconfig fonts-dejavu graphviz

echo "installing 02-plantuml"

wget -O plantuml.jar https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar

echo "installing 03-mermaid"

sudo apt-get install -y libdbus-1-3 libnss3 libxss1 libasound2 libx11-xcb1 libxcomposite1 libxrandr2 libgbm1 libgtk-3-0 libdrm2 libxcb1 libxdamage1 libxfixes3 fonts-liberation libu2f-udev 
npm install -g @mermaid-js/mermaid-cli

echo "done"
