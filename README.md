# ComfyUI Setup

## Requirements

- Git
- Docker
- NVIDIA GPU

Ensure you have your GPU's latest driver installed, see https://www.nvidia.com/en-us/geforce/drivers

## Usage

To (re)clone ComfyUI, run `./init.ps1`

WARNING: This will wipe out the `./app` directory, only those will be preserved by default:
- ./app/models
- ./app/input
- ./app/output
- ./app/user/default/workflows
You can easily modify what's being preserved in `init.ps1`

To start ComfyUI, run `docker compose up`

If you modify `entrypoint.sh` or `setup.sh`, run `docker compose build`

Don't modify `requirements.txt` directly, run `init.ps1` at least once and modify `./app/requirements.txt` instead
