const { Router } = require('express')
// const multer = require('multer')
const { getAllProject, getProjectById, createProject, deleteProject, putProject, patchProject } = require('../controllers/projects')
const { authorization } = require('../middleware/auth')
const uploadImage = require('../middleware/multer')

const router = Router()

router.get('/', authorization, getAllProject)
router.get('/:projectId', authorization, getProjectById)
router.post('/', authorization, uploadImage, createProject)
router.put('/:projectId', authorization, putProject)
router.patch('/:projectId', authorization, patchProject)
router.delete('/:projectId', authorization, deleteProject)

module.exports = router
