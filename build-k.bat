FOR /F "usebackq" %%w IN (`git rev-parse --short HEAD`) DO SET COMMIT=%%w

go build -o build/mackerel-agent-kcps.exe -ldflags="-X main.gitcommit=%COMMIT% -X github.com/7474/mackerel-agent/config.apibase=http://198.18.0.16 " github.com/7474/mackerel-agent
