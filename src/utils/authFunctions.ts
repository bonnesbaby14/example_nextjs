import { jwtVerify } from "jose";
import { cookies } from "next/headers";
import { NextResponse } from "next/server";

export  type JwtPayload = {
    id: number;
    email: string;
    nivel: number;
    idcuenta: number;
    idpersona:number;
    visualizador:number
    // Agrega aquí los demás campos según la estructura de tu payload
  };

export default async function getUser(){


    const jwt = cookies().get("token");

    if (!jwt) return NextResponse.redirect(new URL("/login", ""));
    
    try {
        const { payload } = await jwtVerify(
            jwt.value,
            new TextEncoder().encode("secret")
        );
        return payload;
    } catch (error) {
        return NextResponse.redirect(new URL("/login", ""));
    }


}