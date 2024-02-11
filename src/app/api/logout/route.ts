import { NextResponse, NextRequest } from "next/server";
import { Request, Response } from "express";
import { PrismaClient } from "@prisma/client";
// import { User } from "../models"
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";

import { cookies } from "next/headers";


const prisma = new PrismaClient();

export async function GET(req: NextRequest) {
    const token = req.cookies.get("token");


    if (!token) {
        return NextResponse.json({
            message: "Not logged in",
        }, {
            status: 401,
        })
    }

    console.log('voy a borrar el token')

    cookies().delete("token");


    return NextResponse.json(
        {
            message: "logut succes"
        },
        {
            status: 200,
        }
    );






}