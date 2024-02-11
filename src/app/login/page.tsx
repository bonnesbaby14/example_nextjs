'use client'
import React, { useState } from 'react';

const Login = () => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleSubmit = async (e : React.MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();

    try {
      const response = await fetch('/api/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username, password }),
      });

      if (!response.ok) {
        throw new Error(`API error: ${response.statusText}`);
      }

      const data = await response.json();

      if (data.token) {
        // Almacenar el token en el almacenamiento local o en la sesión del navegador
        // Redirigir al área segura del usuario o al panel de control
      } else {
        // Mostrar un mensaje de error que indique que las credenciales son incorrectas
      }
    } catch (error) {
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
            value={username}
            onChange={(e) => setUsername(e.target.value)}
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