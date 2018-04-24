echo on

go build -o build/mackerel-agent.exe  -ldflags="-X github.com/7474/mackerel-agent/config.apibase=http://localhost:7071 "
