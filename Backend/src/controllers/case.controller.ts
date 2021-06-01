import Case from "../models/case";
import {Request, Response} from "express";


const getCases = async (req: Request, res: Response) => {
    try {
        const results = await Case.find({});
        return res.status(200).json(results);
    }
    catch (err) {
        return res.status(400).json(err);
    }
}

const postCases = async (req: Request, res: Response) => {
    const newCase = new Case( {
        name: req.body.name,
        birthdate: req.body.birthdate,
        date: req.body.date,
        risk: req.body.risk,
        sex: req.body.sex,
        email: req.body.email,
        phone: req.body.phone,
        address: req.body.address,
        clasi: req.body.class
    })
    console.log(req.body);
    newCase.save().then((data) => {
        return res.status(200).json(data);
    }).catch((err) => {
        return res.status(400).json(err);
    })
}

const updateCase= async (req: Request, res: Response) => {
    let caseId = req.params.id;
    Case.updateOne(
        { "_id" : caseId},
        { $set: {
                name: req.body.name,
                birthdate: req.body.birthdate,
                date: req.body.date,
                risk: req.body.risk,
                sex: req.body.sex,
                email: req.body.email,
                phone: req.body.phone,
                address: req.body.address,
                clasi: req.body.class
            }
        }
    ).then((data) => {
        if (data.nModified == 1) {
            res.status(201).send("Case Modified");
        }
        else {
            res.status(400).send("Case not modified");
        }
    });
}

export default {getCases, postCases, updateCase};
