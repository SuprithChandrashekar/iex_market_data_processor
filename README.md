# IEX Data Analysis

This repository contains scripts and configurations for downloading and analyzing IEX market data using a Vagrant virtual machine.

## Prerequisites

- [Vagrant](https://www.vagrantup.com/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Git](https://git-scm.com/downloads)

## Setup

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/SuprithChandrashekar/iexdataanalysis.git
    cd iexdataanalysis
    ```

2. **Initialize Vagrant Environment**:
    ```sh
    ./set_vagrant_env.sh
    ```

3. **Bring Up the Vagrant VM**:
    ```sh
    ./vm_go.sh
    ```

## Vagrant Configuration

The Vagrant VM is configured with the following settings:

- **Box**: `generic/fedora35`
- **Memory**: `1024 MB`
- **CPUs**: `4`
- **Synced Folder**: The current directory is synced to `/vagrant` inside the VM.

### Provisioning

The VM is provisioned with the following software:

- Python 3 and pip
- Requests and tqdm Python packages
- tcpdump
- PyPy3 and pip for PyPy3
- pytz Python package for PyPy3

## Running the Scripts

1. **SSH into the Vagrant VM**:
    ```sh
    vagrant ssh
    ```

2. **Navigate to the Project Directory**:
    ```sh
    cd /vagrant/src
    ```

3. **Download IEX Data**:
    ```sh
    python download_iex_pcaps.py --start-date <START_DATE> --end-date <END_DATE> --download-dir /vagrant/downloads
    ```

    Replace `<START_DATE>` and `<END_DATE>` with the desired date range in `YYYY-MM-DD` format.

## Ignored Files

The following files and directories are ignored by Git as specified in the [.gitignore](http://_vscodecontentref_/2) file:

- `data/iex_downloads/DEEP/*.pcap*`
- `data/text_tick_data/tick_*.txt*`
- `data/book_snapshots/*csv*`
- `*csv`
- [__pycache__](http://_vscodecontentref_/3)
- [.vagrant](http://_vscodecontentref_/4)
- `vagrant_home`

## Acknowledgments

This project uses the IEX parser from [IEX Downloader Parser](https://gitlab.engr.illinois.edu/shared_code/iexdownloaderparser). Special thanks to the original authors for their work.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
