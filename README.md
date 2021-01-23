# quick-setup
Easy, Fast, Efficient, Convenient first time setups for Linux and Windows. This allows easy and quick Teamviewer Access to me on a remote computer, regardless of the environment. Also installs essential open-source programs.

# Linux

<!-- ## **Simple Process:**  -->

1. Open the Terminal app. 

2. Copy and Paste the following code into the app, and then press `Enter`.

3. Enter your password if necessary.

```bash
curl -sSL https://git.io/JLxkS | bash
```

![*Terminal*](https://raw.githubusercontent.com/gamerhat18/cybrdise-blog-hugo/master/content/posts/images/linux-terminal.png)


Here's the script [https://git.io/JLxkS](https://git.io/JLxkS)

Here's what it does:

    -> Updates repositories via `sudo apt update`
    -> Downloads and Installs TeamViewer.
    -> Installs ZSH and Oh-My-ZSH .
    -> Replaces .zshrc & .bashrc with my rc files.
    -> Opens TeamViewer and I ask the client to send a picture of the ID and password.
    -> Gets other scripts for more personalized configurations.

# Windows (Administrator Privileges needed)
- ## **Step 1:** 

    -> Right-click on the Start Menu, and select `Windows Powershell (Admin)`. 

![*Windows Submenu*](https://raw.githubusercontent.com/gamerhat18/cybrdise-blog-hugo/master/content/posts/images/windows-start-submenu.png)

- ## **Step 2:** 

    -> Click `YES`. Enter Administrator password if asked. 

![*Security Prompt*](https://raw.githubusercontent.com/gamerhat18/cybrdise-blog-hugo/master/content/posts/images/uacprompt.png)

- ## **Step 3:** 

    -> Copy and Paste the following code into the Powershell, and then press `Enter`.
```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/Jt3LI'))
```

![*Security Prompt*](https://raw.githubusercontent.com/gamerhat18/cybrdise-blog-hugo/master/content/posts/images/one-liner-powershell.png)

Here's the script [https://git.io/Jt3LI](https://git.io/Jt3LI)

Here's what it does:

    -> Installs Chocolatey.
    -> Installs TeamViewer from Chocolatey.
    -> Installs QBittorent from Chocolatey for downloading Linux ISO(s).
    -> Downloads Rufus/Ventoy for writing the ISO to a USB drive.
    -> Opens TeamViewer and I ask the client to send a picture of the ID and password.
    -> Gets other scripts for more personalized configurations.

Also worth checking out: [Windows 10 Essentials Script](https://github.com/gamerhat18/win10script)
