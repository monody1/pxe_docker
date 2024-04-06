# pxe_docker
自用pxe服务 ubuntu 20.04.6 live-server

|-- Dockerfile
|-- apache2.conf                                        apache2 配置
|-- dnsmasq.conf                                        dnsmasq配置 提供DHCP和TFTP
|-- entrypoint.sh        
|-- run.sh               
|-- squid.conf                                          squid代理 安装时提供网络访问
|-- tftp
|   |-- boot
|   |   `-- live-server           
|   |       |-- initrd                                  from iso
|   |       `-- vmlinuz                                 from iso
|   |-- grub
|   |   |-- bootx64.efi                                 from iso
|   |   |-- font.pf2                                    from iso
|   |   `-- grub.cfg                                    Grub配置
|   `-- grubx64.efi                                     from iso
`-- www
    `-- html
        |-- autoinstall
        |   |-- meta-data
        |   `-- user-data                               自动安装配置
        |-- index.html
        `-- iso
            `-- ubuntu-20.04.6-live-server-amd64.iso    镜像文件
            
/*注 1.docker 一定要使用host模式 
     2.user-data 修改用户和密码sha-1(可用openssl 生成)
     3.user-data 分区表修改                           */
