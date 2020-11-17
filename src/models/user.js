const db = require('../helpers/db')

module.exports = {
  postUserModel: (setData) => {
    return new Promise((resolve, reject) => {
      db.query('INSERT INTO user SET ?', setData, (error, result) => {
        if (!error) {
          const newResult = {
            id: result.insertId,
            ...setData
          }
          delete newResult.user_password
          resolve(newResult)
        } else {
          reject(new Error(error))
        }
      } )
    })
  },
  getUserModel: (email) => {
    return new Promise((resolve, reject) => {
      db.query('SELECT * FROM user WHERE user_email = ?', email, (error, result) => {
        if (!error) {
          resolve(result)
        } else {
          reject(new Error(error))
        }
      })
    })
  }
}