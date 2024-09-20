Instruções para executar a pre configuração do servidor linux.

Primeiro instale o Git:

```
sudo apt-get update

sudo apt-get install git-all

git version
```

depois clone o repositorio com o arquivo de configuração:

```
git clone https://github.com/Linera-Team/VmConfig.git
```

Navegue ate a pasta do vmconfig

```
cd VmConfig
```

e troque a branch para interface-grafica

```
git checkout interface-grafica
```

e então execute

```
chmod +x start.sh
```

em seguida:

```
./start.sh
```

#Fique Atento para qualquer interação requerida no console, algumas partes precisam de sua atenção durante a instalação.
