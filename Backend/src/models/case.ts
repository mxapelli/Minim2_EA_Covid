import  {model, Schema, Document} from "mongoose";

export interface ICase extends Document {
    name: string;
    birthdate: string;
    date: string;
    risk: string;
    sex: string;
    email: string;
    phone: string;
    address: string;
    class: string;
}

const caseSchema = new Schema({
    name: {type: String},
    birthdate: {type: String},
    date: {type: String},
    risk: {type: String},
    sex: {type: String},
    email: {type: String},
    phone: {type: String},
    address: {type: String},
    class: {type: String}
})

export default model<ICase>("Case", caseSchema, "cases");
