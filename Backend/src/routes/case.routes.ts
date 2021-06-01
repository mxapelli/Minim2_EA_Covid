import {Router} from "express";

import caseController from "../controllers/case.controller";

const router = Router();

router.get("/", caseController.getCases);
router.post("/", caseController.postCases);
router.put("/:id", caseController.updateCase)

export default router;
