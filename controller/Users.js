import Users from "../models/UsersModel.js";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";


export const getUsers = async (req, res) => {
    try {
        const users = await Users.findAll({
            attributes: ['id','name','Email']
        });
        res.json(Users);
    } catch (error) {
        console.log(error);
    }
}

export const Register = async(req, res) => {
    const { name, Email, password, confPassword } = req.body;
    if(password !== confPassword) return res.status(400).json({msg:"password dan confirm password tidak cocok"});
    const salt = await bcrypt.genSalt();
    const hashPassword = await bcrypt.hash(password, salt);
    try {
       await Users.create({
        name: name,
        Email: Email,
        password: hashPassword
       });
       res.json({msg:"register berhasil"});
    } catch (error) {
        console.log(error);
    }
}

export const Login = async(req, res) => {
    try {
        const user = await Users.findAll({
            where:{
                Email: req.body.Email
            }
        });
        const match = await bcrypt.compare(req.body.password, user[0].password);
        if(!match) return res.status(400).json({msg:"wrong password"});
        const userId = user[0].id;
        const name = user[0].name;
        const Email = user[0].Email;
        const accesToken = jwt.sign({userId, name, Email}, process.env.ACCESS_TOKEN_SECRET,{
            expiresIn: '20s'
        });
        const refreshToken = jwt.sign({userId, name, Email}, process.env.REFRESH_TOKEN_SECRET,{
            expiresIn: '1d'
        });
        await Users.update({refresh_token: refreshToken},{
            where :{
                id : userId
            }
        });
        res.cookie('refreshToken', refreshToken,{
            httpOnly : true,
            maxAge: 24 * 60 * 60 * 1000
        });
        res.json({accesToken});
    } catch (error) {
        res.status(404).json({msg:"email tidak ditemukan"});
    }
}

export const Logout = async(req, res) => {
    const refreshToken = req.cookies.refreshToken;
        if(!refreshToken) return res.sendStatus(204);
        const user = await Users.findAll({
            where:{
                refresh_token: refreshToken
            }
        });
        if(!user[0]) return res.sendStatus(204);
        const userId = user[0].id;
        await users.update({refreshToken: null},{
            where:{
                id: userId
            }
        })
        res.clearCookie('refreshToken');
        return res.sendStatus(204);
}