# Leaflet POC built with Rails API and Vue

<img src="https://i.ibb.co/syrR4FB/poc.jpg" alt="poc" border="0" />

## Run using docker-compose
Prepare your .env files in be, fe directories as well as in project root.
```shell
cp .env.example .env    # In backend, frontend, and one more for mongodb. (I am a big fan of dotenv. :XD)
```
Run the whole app by simply typing:
```shell
docker-compose up -d
```
Open your browser at port 8080 from where the Vue app is being served. <br />
http://localhost:8080 <br />
This is only development mode.

## License
MIT

## Author
CrazyOptimist@2020 July
