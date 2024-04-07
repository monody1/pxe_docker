# PXE Docker

This is a PXE service using Ubuntu 20.04.6 live-server.

## Directory Structure

- `Dockerfile`
- `apache2.conf` - Apache2 configuration
- `dnsmasq.conf` - Dnsmasq configuration for DHCP and TFTP services
- `entrypoint.sh`
- `run.sh`
- `squid.conf` - Squid proxy configuration for network access during installation
- `tftp/`
  - `boot/`
    - `live-server/`
      - `initrd` - from ISO
      - `vmlinuz` - from ISO
  - `grub/`
    - `bootx64.efi` - from ISO
    - `font.pf2` - from ISO
    - `grub.cfg` - Grub configuration
  - `grubx64.efi` - from ISO
- `www/`
  - `html/`
    - `autoinstall/`
      - `meta-data`
      - `user-data` - auto-install configuration
    - `index.html`
    - `iso/`
      - `ubuntu-20.04.6-live-server-amd64.iso` - ISO image file

## Notes

1. Container should be run in host mode.
2. Modify `user-data` to change username and password. Use SHA-1 hashing (can be generated with OpenSSL).
3. Modify `user-data` for partitioning.
