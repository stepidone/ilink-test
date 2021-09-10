const router = require ('express')
const userController = require('../controller/user.controller')

const Router = new router()
const UserController = require('../controller/user.controller')

Router.post('/user', userController.createUser)
Router.get('/user', userController.getUsers)
Router.get('/user/:id', userController.getUserId)
Router.get('/name/:name', userController.getUserName)
Router.put('/user', userController.updateUser)
Router.put('/delete', userController.deleteUser)

module.exports = Router