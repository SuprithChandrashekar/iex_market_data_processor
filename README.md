# IEX Market Data Processor

A Vagrant-based solution for downloading and processing IEX market data (DEEP feeds) at scale.

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Academic Attribution](#academic-attribution)
- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Directory Structure](#directory-structure)
- [Ignored Files](#ignored-files)
- [Acknowledgments](#acknowledgments)
- [License](#license)

---

## Project Overview

This project provides a scalable and reproducible environment for acquiring, parsing, and analyzing IEX DEEP market data. It is especially suited for high-frequency trading (HFT) research and experimentation. By leveraging Vagrant and VirtualBox, users can rapidly set up a virtualized analysis environment, saving time and ensuring consistency across deployments.

- **Primary Language:** Python
- **License:** MIT License
- **Virtualization:** Vagrant, VirtualBox

## Features

- Automated download and parsing of raw IEX DEEP market data (pcap format).
- Conversion of pcap data to textual and CSV formats for downstream analysis.
- Modular architecture supporting rapid prototyping and experimentation.
- Virtualized environment for reproducible research and consistent setups.
- Extensible for custom analytics and further data processing pipelines.

## Academic Attribution

This work was completed as part of the High Frequency Trading Technology course at University of Illinois Urbana-Champaign, under the supervision of Professor David Lariviere.  
The project builds upon and tweaks the university’s IEX pcap parser, incorporating personal modifications for experimentation during the course/project.

## Architecture

The project architecture centers on three main components:

- **Data Acquisition:** Downloads raw IEX DEEP data in pcap format.
- **Data Parsing:** Converts pcap files into readable text and CSV files using custom and university-provided parsers.
- **Analysis Environment:** Provisions an isolated VM using Vagrant and VirtualBox, allowing Python-based analysis and experimentation.

## Prerequisites

- [Vagrant](https://www.vagrantup.com/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Git](https://git-scm.com/downloads)

## Setup Instructions

1. **Clone the Repository:**
    ```sh
    git clone https://github.com/SuprithChandrashekar/iex_market_data_processor.git
    cd iex_market_data_processor
    ```

2. **Initialize Vagrant Environment:**
    ```sh
    ./set_vagrant_env.sh
    ```

3. **Bring Up the Vagrant VM:**
    ```sh
    ./vm_go.sh
    ```

4. **Access the VM and Start Analysis:**
    - SSH into the VM and follow project-specific instructions for downloading and parsing IEX data.

## Usage

After provisioning the VM, use the provided scripts to download, parse, and analyze IEX DEEP data. Custom Python modules and utilities are included for extended analytics.

## Directory Structure

- `data/iex_downloads/DEEP/` – Raw pcap files downloaded from IEX.
- `data/text_tick_data/` – Parsed text tick data files.
- `data/book_snapshots/` – CSV book snapshots.
- `scripts/` – Utility and setup scripts.
- `README.md` – Project documentation.
- `.gitignore` – Files and directories excluded from version control.

## Ignored Files

The following files and directories are ignored by Git, as specified in the `.gitignore` file:

- `data/iex_downloads/DEEP/*.pcap*`
- `data/text_tick_data/tick_*.txt*`
- `data/book_snapshots/*csv*`
- `*csv`
- `__pycache__`
- `.vagrant`
- `vagrant_home`

## Acknowledgments

This project uses the IEX parser from [IEX Downloader Parser](https://gitlab.engr.illinois.edu/shared_code/iexdownloaderparser). Special thanks to the original authors for their work.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

*This README is intended to provide recruiters and collaborators with a thorough understanding of the project’s scope, setup, and academic context. For questions, please contact [Suprith Chandrashekar](https://github.com/SuprithChandrashekar).*
