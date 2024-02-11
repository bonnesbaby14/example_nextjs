import { NextRequest, NextResponse } from "next/server";
import { jwtVerify } from "jose";

import { cookies } from "next/headers";

export async function middleware(req: NextRequest) {

    await console.log("entre al midd")
    const jwt = cookies().get("token");

    if (!jwt) return NextResponse.redirect(new URL("/login", req.url));


    try {
        const { payload } = await jwtVerify(
            jwt.value,
            new TextEncoder().encode("secret")
        );
        return NextResponse.next();
    } catch (error) {
        return NextResponse.redirect(new URL("/login", req.url));
    }
}

export const config = {
    matcher: [
        // "/dashboard"
        /*
         * Match all request paths except for the ones starting with:
         * - api (API routes)
         * - _next/static (static files)
         * - _next/image (image optimization files)
         * - favicon.ico (favicon file)
         */
        '/((?!api/login|api/logout|login|_next/static|_next/image|favicon.ico).*)',
    ],
};