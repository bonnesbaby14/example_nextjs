'use client'
import React, { useState } from 'react';
import { useRouter } from 'next/navigation';

const Login = () => {
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleSubmit = async (e: React.MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();

    try {
      const response = await fetch('/api/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email, password }),
      });

      if (!response.ok) {

        switch (response.status) {
          case 404:
            // Mostrar un mensaje de error específico para el código de estado 404
            alert('No se encontró la página o recurso solicitado.');
           
            break;
          case 401:
            // Mostrar un mensaje de error específico para el código de estado 401 (no autorizado)
            alert('Credenciales incorrectas o no autorizado.');
            break;
          // Agregar más casos según sea necesario para otros códigos de estado específicos
          default:
            // Mostrar un mensaje de error genérico para otros códigos de estado de error
            throw new Error(`API error (${response.status}):`);
        }
        return;
      }

      const data = await response.json();

      if (data.token) {
        router.push('/home');
      } 
    } catch (error) {
      alert("error en el sistema")

      // Mostrar un mensaje de error que indique que ha habido un problema con la solicitud
    }
  };

  return (
    <div>
      <div className="bg-white py-5 px-8 border-t-4 border-blue-700 rounded-md shadow-lg">
        <h2 className="text-3xl text-gray-400 mb-3">Iniciar sesión</h2>

        <div className="mb-2">
          <label className="text-sm">Nombre</label>
          <input
            type="text"
            placeholder="Nombre"
            className="w-full p-2 mt-1 bg-slate-950 rounded-md focus:outline-none"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
          />
        </div>

        <div className="mt-2 mb-3">
          <label className="text-sm">Contraseña</label>
          <input
            type="password"
            placeholder="Contraseña"
            className="w-full p-2 mt-1 bg-slate-950 rounded-md focus:outline-none"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
        </div>

        <button
          className="border-none bg-blue-800 py-2 px-3 text-white rounded-sm w-full mt-2 rounded-md hover:bg-blue-700 mb-5"
          type="submit"
          onClick={handleSubmit}
        >
          Iniciar sesión
        </button>
      </div>
    </div>
  );
};

export default Login;