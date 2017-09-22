# mongoose-os-docker
Mongoose OS CLI installed in a docker image for reproducible development environments

    git clone git@github.com:tejpochiraju/mongoose-os-docker.git
    docker build -t mongoose:minideb .
    
    # To run in browser UI mode:
    docker run -d --rm --device=/dev/ttyUSB0 -p 1992:1992 mongoose:minideb
    xdg-open http://localhost:1992 # or just open localhost:1992 in your browser

    # To open shell and run in interactive mode:
    docker run -it --rm --device=/dev/ttyUSB0 -p 1992:1992 mongoose:minideb bash
    mos --help # or whatever command you want to run

# TO DO
- Volume binding for code directory
- Handle port switching when board is disconnected and reconnected