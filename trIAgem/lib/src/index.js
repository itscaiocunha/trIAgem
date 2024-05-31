const express = require('express');
const app = express();
const cors = require('cors');
const db = require('./database/database'); // Assumindo que conecta ao banco de dados
const routerAtendimento = require('./routers/atendimento_routers');
const routerHospital = require('./routers/hospital_routers');
const routerProfSaude = require('./routers/prof_saude_routers');
const routerUsuario = require('./routers/usuario_routers');

// Configure o middleware
app.use(cors());
app.use(express.json());

// Conecte ao banco de dados (assumindo que o módulo db manipula a conexão)
db;

// Registre as rotas
app.use(routerAtendimento);
app.use(routerHospital);
app.use(routerProfSaude);
app.use(routerUsuario);

app.listen(8001, () => {
  console.log('Servidor aberto na porta 8001: http://localhost:8001');
});