import { jwtVerify } from "jose";
import { cookies } from "next/headers";
import { NextResponse } from "next/server";

export  type JwtPayload = {
    id: number;
    email: string;
    level: number;
    account_fk: number;
    person_fk:number;
    visualizer:number
    // Agrega aquí los demás campos según la estructura de tu payload
  };

export default async function getUser(){


    const jwt = cookies().get("token");
    console.log("ENTRE AL GET USER")
    console.log(jwt)
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