# IEX Data Analysis

This repository contains scripts and configurations for downloading and analyzing IEX market data using a Vagrant virtual machine.

## Academic Attribution

This work was completed as part of High Frequency Trading Technology at University of Illinois Urbana Champaign, under the supervision of Professor David Lariviere.  
The project builds upon their research in [specific field/topic] and incorporates valuable feedback received during [course/independent study].

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

**Note:** Working on parallel processing for the vm, to improve the download/parse speed. 

### Provisioning

The VM is provisioned with the following software:

- Python 3 and pip
- Requests and tqdm Python packages
- tcpdump
- PyPy3 and pip for PyPy3
- pytz Python package for PyPy3

## Running the Scripts

1. **Running vm_go.sh using the git bash Terminal should start the process**:
    ```sh
    ./vm_go.sh
    ```

2. **If that doesn't work**:

Check the links provided under prerequisites, and make sure you have virtual box and Vagrant installed. Use pypy3(More Efficient than Python3 in this scenario) as the interpretor with requests and tdqm module installed with the pip command Links provided under prerequisites.


3. **To Download IEX Data, make sure to check the following. Directory can remain the same**:
    ```sh
    python3 src/download_iex_pcaps.py --start-date 2024-08-01 --end-date 2024-08-02 --download-dir data/iex_downloads/
    ```

    Replace `<START_DATE>` and `<END_DATE>` with the desired date range in `YYYY-MM-DD` format.

**Note:** Download for each day will give you 5-7 GB of compressed files. Make sure to have the storage space for that.

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
