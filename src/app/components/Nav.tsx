"use client";
import Link from "next/link";
import React from "react";
import { useRouter } from "next/navigation";

export default function Nav() {
    const router = useRouter();

    const logout = async () => {

        const response = await fetch('/api/logout', {
            method: 'GET',
            headers: { 'Content-Type': 'application/json' },

        });


        if (response.status == 200) {
            router.push("/login");
        } else {
            alert("error")
        }
    }

    return (

        <header>
            <nav className="flex items-center justify-between p-6 lg:px-8 h-20 border border-t-0 border-l-0 border-r-0 border-b-gray-600" aria-label="global">
                <div className="flex lg:flex-1">

                    <a href="/" className="-m-1.5 p-1.5 ">next auth</a>

                </div>
                <Link href="/dashboard">Dashboard</Link>
                <button onClick={() => logout()} >Cerrar sesion</button>
            </nav>
        </header>

    );

}