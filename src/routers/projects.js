const { Router } = require('express')
const { getAllProject, getProjectById, createProject, deleteProject } = require('../controllers/projects')

const router = Router()

router.get('/', getAllProject)
router.get('/:projectId', getProjectById)
router.post('/', createProject)
// router.put('/:projectId', )
// router.patch('/:projectId', )
router.delete('/:projectId', deleteProject)

module.exports = router
