# mongoose-os-docker
Mongoose OS CLI installed in a docker image for reproducible development environments

- Built image is 112MB (as of Version: 1.15, Build ID: 20170907-130858/1.15@8f8f002d+, Update channel: release)
- UI and command line tested OK with Docker version 17.07.0-ce, build 87847530f7
running on Manjaro Linux x86_64

# Usage

    git clone git@github.com:tejpochiraju/mongoose-os-docker.git
    docker build -t mongoose:minideb .
    
    # To run in browser UI mode:
    docker run -d --rm --device=/dev/ttyUSB0 -p 1992:1992 -v /path/to/code:/root/code mongoose:minideb
    xdg-open http://localhost:1992 # or just open localhost:1992 in your browser

    # To open shell and run in interactive mode:
    docker run -it --rm --device=/dev/ttyUSB0 -p 1992:1992 -v /path/to/code:/root/code mongoose:minideb bash
    cd /root/code
    mos --help # or whatever command you want to run

# Known Issues
- The serial port *might* switch if you disconnect and reconnect the development board on the host. In this case you will have to exit the container and restart it with the right device binding.
