# My Scoop

my windows packages registry for [scoop.sh](scoop.sh)

# Usage

```powershell
scoop bucket add my-scoop https://github.com/geektheripper/my-scoop.git
```

# Components


## winsw

```powershell
sudo scoop install winsw --global
sudo scoop install winsw.net2 --global
```

## winsw-service

```powershell
# scoop cache rm winsw-service
# sudo scoop uninstall winsw-service --global
sudo scoop install winsw-service --global
cd foo/bar
winsw-service <up|down|stop>
```

## npc

```powershell
sudo scoop install npc --global
```

## sublime-text-2

```powershell
scoop install sublime-text-2
subl xxx.txt
```

## oss-browser

```powershell
scoop install oss-browser
```

## govc

```powershell
scoop install govc
```
