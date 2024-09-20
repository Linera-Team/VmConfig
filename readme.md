## PRÉ REQUISITOS

Para acessar o ambiente virtual, você precisa usar um software chamado RealVNC, você pode encontrar o download [aqui](https://www.realvnc.com/pt/connect/download/viewer/)

## Instruções para executar a pre configuração do servidor linux.

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

## Fique Atento para qualquer interação requerida no console, algumas partes precisam de sua atenção durante a instalação. Uma delas é o pedido de uma senha para conexão do ambiente virtual

Ao chegar na seguinte tela pode selecionar qualquer uma das duas opções, eu seleciono a primeira de qualquer forma:

![](https://i.imgur.com/FyIwMww.png)

Para conectar ao ambiente virtual, você antes precisa abrir o caminho atraves do ssh com o comando:

```
ssh -L 59000:localhost:5901 -C -N -l root [ip_da_VM]
```

Conecte-se ao ambiente virtual pelo RealVNC com o ip:

```
localhost:59000
```

![](https://i.imgur.com/tfDqZoH.png)
![](https://i.imgur.com/u3WOBPd.png)
![](https://i.imgur.com/ngS2Rxg.png)
![](https://i.imgur.com/ST3KZEp.png)

Execute os serviços usando:

```
pm2 start --name "[nome_da_roleta]" ts-node -- [caminho_da_roleta]
```
