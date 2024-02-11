import { NextResponse, NextRequest } from "next/server";
import { Request, Response } from "express";
import { PrismaClient } from "@prisma/client";
// import { User } from "../models"
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
const prisma = new PrismaClient();

export async function POST(req: NextRequest, res: NextResponse) {
    console.log("hola enter aqui")

    const { email, password } = await req.json();


    // Buscar el usuario en la base de datos
    const user = await prisma.user.findFirst({ where: { email: email } });



    if (!user) {
        NextResponse.json({
            message: "Usuario no encontrado"
        }, {
            status: 404,
        })

    }


    let isPasswordValid = false;

    if (user && user.password) {
        isPasswordValid = await bcrypt.compare(password, user.password);
        console.log("NO ES LA PASONA")
        // ... rest of your logic
    } else {
        // Handle the case where user or password is missing
        isPasswordValid = false;
    }

    if (!isPasswordValid) {
        return NextResponse.json({
            message: "contrasena no encontrada"
        }, {
            status: 401,
        })
    }

    // Generar un token de autenticación
    const token = jwt.sign({ id: user?.id, username: user?.email, role: user?.idpersona }, "secret", {
        expiresIn: "1h",
    });

    // Enviar una respuesta exitosa con el token
    return NextResponse.json({
        token: token
    }, {
        status: 200,
    })


}