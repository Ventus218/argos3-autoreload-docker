# ARGoS3 autoreload docker

Portable robot simulation environment, using ARGoS. Built within docker containers & displayed via browser-based VNC (noVNC), ARGoS should now be accessable on all platforms.

It includes a script that automatically reloads the simulation when file changes are detected.

## Usage

```sh
docker run -p 6080:80 -v /dev/shm:/dev/shm ventus218/argos3-autoreload
```

Visit http://localhost:6080 in your browser to access the GUI.

Open a terminal inside the container and run:

```sh
argos3-autoreload -c <simulation.argos>
```

### If you encounter an error when starting the simulation

`argos3` requires you to navigate (`cd`) to the directory containing the simulation files before running the command above.

### `argos3` options

All arguments passed to `argos3-autoreload` are forwarded to the `argos3` binary.

## How it works

When you run `argos3-autoreload`, the simulator launches and continuously monitors the directory of the given simulation file for any changes.

Upon detecting a change, the simulator automatically shuts down and restarts.

Stopping the script will **not** stop the simulator. This can be useful if you want to prevent automatic reloads while keeping the simulation running.

## Based on the work of [tylerferrara](https://github.com/tylerferrara)

This Docker image adds the `argos3-autoreload` script to the [tjferrara/argos3](https://hub.docker.com/r/tjferrara/argos3/) image.

## Customization

For further customization, refer to the base image documentation: [tjferrara/argos3](https://hub.docker.com/r/tjferrara/argos3/).
