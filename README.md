# dotfiles-win
For Windows using CMDER or Git-SCM, Not the wretched Powershell/CMD 

- I am using (cmder)[https://cmder.net] along with the default `bash.exe`. IT
	could be beneficial to install Git-SCM bash as well.

## Fix SSH
- Within my install location, which is: `/c/cmder/config` I went to the `config`
	folder and modified the `user-profile.sh` by adding the following:

```sh
ssh-agent | grep -v echo > ~/tmp-ssh-agent.sh
. ~/tmp-ssh-agent.sh
rm -f ~/tmp-ssh-agent.sh
ssh-add ~/.ssh/jream_rsa
```

Save, Reload a bash terminal; The `cmd.exe` shell uses the `user-profile.cmd` (Windows Style).


---

(C) Jesse Boyer <[JREAM](https://jream.com)>
