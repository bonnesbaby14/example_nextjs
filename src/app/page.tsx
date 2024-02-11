'use client'
import { useEffect } from 'react';
import { useRouter } from 'next/navigation';

const Home = () => {
  const router = useRouter();

  useEffect(() => {
    // Función para verificar la autenticación
    const isAuthenticated = async () => {
      const token = localStorage.getItem("token");

      if (!token) return false;

      // const response = await fetch("/api/auth/validate-token", {
      //   headers: {
      //     Authorization: `Bearer ${token}`,
      //   },
      // });

      // if (response.status === 200) {
      //   return true;
      // }

      return false;
    };

    // Verificar si el usuario está autenticado
    isAuthenticated().then((isAuthenticated) => {
      if (!isAuthenticated) {
        // Redirigir al usuario al login
        router.push('/login');
      }
    });
  }, []);

  // Resto del código del componente...

  return (
    <div>
      <h1>Página principal</h1>
      {/* Resto del contenido del componente */}
    </div>
  );
};

export default Home;
