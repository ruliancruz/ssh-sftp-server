# SSH + SFTP server

This is a simple SSH + SFTP server that can be used for testing purposes.

## Dependencies

- [OpenSSH](https://www.openssh.com/)
- [Docker](https://www.docker.com/)

## How to run

First, make the `start_server.sh` script executable:

```bash
chmod +x start_server.sh
```

Then, run the script:

```bash
./start_server.sh
```

The server will start and you can connect to it using the following credentials:

- **Host:** localhost
- **Port:** 22
- **Username:** user
- **Password:** password

### How to connect to the server via SSH

Enter the following command in your terminal:

```bash
ssh user@localhost
```

After that, you will be prompted to enter the password, so type `password` and press `Enter`.

You may also need to accept the server's fingerprint by typing `yes` and pressing `Enter`.

If everything is correct, you will be connected to the server.

Alternatively, you can use an SSH client like [PuTTY](https://www.putty.org/) or [OpenSSH](https://www.openssh.com/).

### How to connect to the server via SFTP

Enter the following command in your terminal:

```bash
sftp user@localhost
```

Similarly to SSH connect, you will be prompted to enter the password, which is the same, and you may also need to accept the server's fingerprint.

If everything is correct, you will be connected to the server.

Alternatively, you can use an SFTP client like [FileZilla](https://filezilla-project.org/) or [Cyberduck](https://cyberduck.io/).
