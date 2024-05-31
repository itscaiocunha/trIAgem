const jwt = require("jsonwebtoken");
const SECRET = "Gugu Liberato";

const papeis = ['Hospital', 'ProfSaude', 'Usuario'];

const verifyJwt = async (req, res, next, auths) => {
    const token = req.headers.authorization;
    console.log(token)

    try {
      const decoded = jwt.verify(token, SECRET);
  
      if (Date.now() >= decoded.exp * 1000) {
        res.status(401); // Não autorizado
        res.json({ message : "Sua sessão expirou. Faça login novamente." });
        return;
      }
  
      if (!papeis.includes(decoded.Papel)) {
        res.json({ message: "Seu papel é indefinido" });
      } else if (auths.includes(decoded.Papel)) {
        next();
      } else {
        res.status(401);
        res.json({ message: "Você não possui permissão de acesso!" });
        return;
      }
    } catch (error) {
      console.log(error);
      res.status(403); // Proibido
      res.json({ message : "Você não está autenticado" });
      return;
    }
  };

module.exports = {verifyJwt};
    