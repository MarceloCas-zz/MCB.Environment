Write-Host("WSL shutdown...");
wsl --shutdown;

Write-Host("WSL start docker service");
wsl -u root -e service docker start;

Write-Host("Remove docker compose with force and stop running services options");
wsl -e docker compose rm -f -s;

Write-Host("Up docker compose");
wsl -e docker compose start;
