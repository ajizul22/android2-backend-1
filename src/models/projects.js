const db = require('../helpers/db')

module.exports = {
  getAllProjectModel: (searchKey, searchValue, limit, offset, callback) => {
    db.query(`SELECT * FROM project WHERE ${searchKey} LIKE '%${searchValue}%' LIMIT ${limit} OFFSET ${offset}`, (err, result, _fields) => {
      if (!err) {
        callback(result)
      } else {
        callback(err)
      }
    })
  },
  getProjectByIdModel: (projectId) => {
    return new Promise((resolve, reject) => {
      db.query(`SELECT * FROM project WHERE project_id = ${projectId}`, (err, result, _fields) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  createProjectModel: (setData) => {
    return new Promise((resolve, reject) => {
      db.query('INSERT INTO project SET ?', setData, (err, result, _fields) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  deleteProjectModel: (projectId) => {
    return new Promise((resolve, reject) => {
      db.query(`DELETE FROM project WHERE project_id = ${projectId}`, (err, result, _fields) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  putProjectModel: (projectName, projectDesc, projectType, projectId) => {
    return new Promise((resolve, reject) => {
      const queryUpdate = `UPDATE project SET project_name = '${projectName}', project_desc = '${projectDesc}', project_type = '${projectType}' WHERE project_id = ${projectId}`
      db.query(queryUpdate, (err, result, _fields) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  patchProjectModel: (dataColumn, projectId) => {
    return new Promise((resolve, reject) => {
      const queryUpdate = `UPDATE project SET ${dataColumn} WHERE project_id = ${projectId}`
      db.query(queryUpdate, (err, result, _fields) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  }
}
