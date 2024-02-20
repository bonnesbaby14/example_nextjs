import { NextResponse, NextRequest } from "next/server";
import { Request, Response } from "express";
import { PrismaClient } from "@prisma/client";
import { cookies } from "next/headers";

import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import { JwtPayload } from "@/utils/authFunctions";
const prisma = new PrismaClient();

export async function POST(req: NextRequest) {

    try {
    

        const { email, password } = await req.json();





        // Buscar el usuario en la base de datos
        const user = await prisma.users.findFirst({ where: { email: email } });

        





        if (!user) {
            return NextResponse.json({
                message: "Usuario no encontrado"
            }, {
                status: 404,
            })

        }
        let isPasswordValid = false;

        if (user && user.password) {
            isPasswordValid = await bcrypt.compare(password, user.password);

            // ... rest of your logic
        } else {
            // Handle the case where user or password is missing
            isPasswordValid = false;
        }

        if (!isPasswordValid) {
            return NextResponse.json({
                message: "contrasena incorrecta"
            }, {
                status: 401,
            })
        }

        const payload: JwtPayload = {
            id: user?.id ?? 0,        
            email: user?.email ?? '', 
            nivel: user?.nivel ?? 0,  
            idcuenta: user?.idcuenta ?? 0,
            idpersona:user?.idpersona ?? 0,
            visualizador:user?.visualizador ?? 0
            
        };
        // Generar un token de autenticación
        const token = jwt.sign(payload, "secret", {
            expiresIn: "1h",
        });






        cookies().set({
            name: 'token',
            value: token,
            httpOnly: true,
        });

        // Enviar una respuesta exitosa con el token
        return NextResponse.json({
            token: token
        }, {
            status: 200,
        })
    } catch (error) {
        console.log(error)
    }

}