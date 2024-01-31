Instruções para executar a pre configuração do servidor linux.

Primeiro instale o Git:

```
sudo apt-get update

sudo apt-get install git-all

git version
```

acese a pasta:

```
cd VmConfig/
```

depois clone o repositorio com o arquivo de configuração:

```
git clone https://github.com/Linera-Team/VmConfig.git
```

e então execute

```
chmod +x start.sh
```

em seguida:

```
./start.sh
```