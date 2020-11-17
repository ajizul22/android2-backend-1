require('dotenv')
const bycrpt = require('bcrypt')
const { request } = require('express')
const { postUserModel, getUserModel } = require('../models/user')
const jwt = require('jsonwebtoken')

module.exports = {
  registerUser: async (request, response) => {
    const { userEmail, userPassword, userLevel } = request.body
    const salt = bycrpt.genSaltSync(10)
    const encryptPassword = bycrpt.hashSync(userPassword, salt)

    const setData = {
      user_email: userEmail,
      user_password: encryptPassword,
      user_level: userLevel,
      created_at: new Date()
    }

    try {
      // Add Action Check Email (SELECT QUERY SQL)

      const result = await postUserModel(setData)
      response.send({
        success: true,
        message: 'Register user succesful!',
        data: result
      })
    } catch (error) {
      response.status(500).send({
        success: false,
        message: 'Bad request'
      })
    }
  },
  loginUser: async (request, response) => {
    try {
      const { user_email, user_password } = request.body
      const dataUser = await getUserModel(user_email)
      if (dataUser.length >= 1) {
        const checkPassword = bycrpt.compareSync(user_password, dataUser[0].user_password)
        if (checkPassword) {
          const { user_id, user_email, user_level } = dataUser[0]
          let payload = {
            user_id,
            user_email,
            user_level
          }
          const token = jwt.sign(payload, process.env.JWT_KEY, { expiresIn: '1h' })
          payload = {...payload, token}
          response.send({
            success: true,
            message: 'Success Login!',
            data: payload
          })
        } else {
          response.status(400).send({
            success: false,
            message: 'Wrong Password!'
          })
        }
      } else {
        response.status(400).send({
          success: false,
          message: 'Email/Account not registered!'
        })
      }
    } catch (error) {
      response.status(500).send({
        success: false,
        message: 'Bad request'
      })
    }
  }
}