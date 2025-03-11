# ARGoS3 autoreload docker
Portable robot simulation environment, using ARGoS. Built within docker containers & displayed via browser-based VNC (noVNC), ARGoS should now be accessable on all platforms.

Includes a script which automatically reload the simulation when file changes are detected.

## Usage
```sh
docker run -p 6080:80 -v /dev/shm:/dev/shm ventus218/argos3-autoreload
```

Visit http://localhost:6080 on your browser, to display the GUI.

Open a terminal inside the container and run
```sh
argos3-autoreload -c <simulation.argos>
```

### If you get an error starting the simulation
argos3 requires you to "cd" into the directory containing the simulation files, so do that before running the command above.

### argos3 options
All the arguments received by `argos3-autoreload` are passed to the `argos3` binary.

## How it works
If you run `argos3-autoreload` it will open the simulator and continuosly check for any file change in the directory of the given simulation file.

Upon changes the simulator is closed and then reopened.

Stopping the script will not cause the simulator to be stop. This can be helpful in case you'd like to prevent autoreloads.

## Based on the work of [tylerferrara](https://github.com/tylerferrara)
This docker image just adds the `argos3-autoreload` script to the [tjferrara/argos3](https://hub.docker.com/r/tjferrara/argos3/) image.

## Customization
For any other customization you can look at the base image documentation [tjferrara/argos3](https://hub.docker.com/r/tjferrara/argos3/).
