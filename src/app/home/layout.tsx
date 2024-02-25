import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "../globals.css";

import React, { useState, useEffect } from 'react';
import { cookies } from 'next/headers';
import Nav from "../components/Nav";



export default function RootLayout({
    children,

}: Readonly<{
    children: React.ReactNode;
}>) {




    return (

    <div>
        <Nav/>
        {children}
    </div>

    );
}
{/* <div>
 */}