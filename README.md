# Run_script_in_Docker
Basic setup to run a script inside a docker container and provide some results

# Installation
1. ensure `docker` and `docker-compose` are installed
1. Run `docker-compose up --build`

# What this does
Copies the bash script from `scripts` to `/app/scripts` and runs it. The script creates a `output_folder` in the container at `/app/output_container` if it doesn't exist and creates a file called `test.txt` then shuts down. The file is availible on the host machine at `./scripts/output`
