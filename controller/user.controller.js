const db = require('../db')

class UserController{
    async createUser(req, res){
        const {name, email, password} = req.body
        const newPerson = await db.query('INSERT INTO users (name, email, password) values ($1, $2, $3) RETURNING *', [name, email, password])
        res.json(newPerson.rows[0])
    }
    async getUsers(req, res){
        const users = await db.query('SELECT * FROM users')
        res.json(users.rows)
    }
    async getUserId(req, res){
        const id = req.params.id
        const user = await db.query('SELECT * FROM users WHERE id = $1', [id])
        res.json(user.rows[0])
    }
    async getUserName(req, res){
        const name = req.params.name
        const user = await db.query('SELECT * FROM users WHERE name = $1', [name])
        res.json(user.rows[0])
    }
    async updateUser(req, res){
        const {id, name, email, password} = req.body
        const user = await db.query('UPDATE users SET name = $1, email = $2, password = $3 WHERE id = $4 RETURNING *', [name, email, password, id])
        res.json(user.rows[0])
    }
    async deleteUser(req, res){
        const {id} = req.body
        const user = await db.query('UPDATE users SET deletedat = CURRENT_TIMESTAMP WHERE id = $1 RETURNING *', [id])
        res.json(user.rows[0])
    }
}

module.exports = new UserController()