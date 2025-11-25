const express = require('express')
const cors = require('cors')
const mysql = require("mysql2/promise")
//Importar o Módulo de conexão com BD
const conexao = require('./db.js')
const porta = 3000
const server = express()

server.use(cors())
//consegue acessar os dados do body
server.use(express.json())

server.listen (porta, () => {
    console.log("Servidor está rodando !")
})


server.post("/cadastro", async (req,res) => {
    try {
        const{nome, email, assunto, mensagem} = req.body
        const dthr_status = new Date();
        const status_lei = 'Aguardando resposta';

        // console.log(req.body)
        //Tratativas- Se esta tudo certo
        if(nome.length <6){
            return res.json({"resposta":"Preencha um nome"})
        }else if(email.length <6){
            return res.json({"resposta":"Preencha um email"})
        }else if(assunto.length <6){
            return res.json({"resposta":"Preencha um assunto"})
        }else if(mensagem.length <6){
            return res.json({"resposta":"Preencha uma mensagem"})
        }else if(dthr_status.length <6){
            return res.json({"resposta":"Preencha uma mensagem"})
        }else if(status_lei.length <6){
            return res.json({"resposta":"Preencha uma mensagem"})
        }

        //Verificar se o email já está cadastrado
        let sql = `SELECT * FROM usuarios WHERE email = ?`
        let [resultado] = await conexao.query(sql,[email])
        if (resultado.length != 0){
            return res.json({"resposta":"Email já cadastrado!"})
        }

        //Verificar se o email já está cadastrado
        sql = `INSERT INTO contato (nome, email, assunto, mensagem, dthr_status, status_lei) VALUES (?,?,?,?,?,?)`
        let [resultado2] = await conexao.query(sql,[nome, email, assunto, mensagem, dthr_status, status_lei])

        if(resultado2.affectedRows == 1){
            return res.json({"resposta":"cadastro efetuado com sucesso!"})
        }else{
            return res.json({"resposta":"Erro ao fazer cadastro"})
        }
    } catch (error) {
        console.log(error)
    }
})