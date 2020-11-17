const { Router } = require('express')
const { getAllProject, getProjectById, createProject, deleteProject, putProject, patchProject } = require('../controllers/projects')
const { authorization } = require('../helpers/auth')

const router = Router()

router.get('/', authorization, getAllProject)
router.get('/:projectId', authorization, getProjectById)
router.post('/', authorization, createProject)
router.put('/:projectId', authorization, putProject)
router.patch('/:projectId', authorization, patchProject)
router.delete('/:projectId', authorization, deleteProject)

module.exports = router
