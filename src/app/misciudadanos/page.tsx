
import { getHome } from "@/utils/homeFunctions";
import { cookies } from "next/headers";
import React, { useState, useEffect, Suspense } from 'react';
import { AreaData, ColorType, DeepPartial, Time, TimeChartOptions, createChart } from 'lightweight-charts';
import { Level } from "../api/home/route";

type Person = { grupo_nivel1: string, grupo_nivel2: string, grupo_nivel3: string, grupo_nivel4: string, grupo_nivel5: string, grupo_nivel6: string, grupo_nivel7: string, grupo_nivel8: string, nombre: string, curp: string, clave_elector: string, apellido_materno:string, apellido_paterno:string }
type HomeData = {
  persons: Person[];

  // Otros campos específicos de HomeData si los tienes
};

const Home = () => {


 const danos_nuevos=await getHome()

  const [homeData, setHomeData] = useState<HomeData>({ persons: [] });


  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('/api/misciudadanos', {
          method: 'GET',
          headers: { 'Content-Type': 'application/json' },
        });

        if (!response.ok) {
          // Manejar errores de la petición
          console.error(`Error: ${response.status}`);
          return;
        }

        const data = await response.json();
        const fetchedCounters = data.data;


        console.log(data)


        setHomeData({ persons: fetchedCounters.persons });




      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();  // Llamar a la función de obtención de datos

  }, []);
  // const data = await getHome()












  return (
    <div>






      <div className="p-4 sm:ml-64">
        <div className="p-4 border-2 border-gray-200 border-dashed rounded-lg dark:border-gray-700">




          <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table className="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
              <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                  <th scope="col" className="px-6 py-3 text-center">
                    Nombre
                  </th>
                  <th scope="col" className="px-6 py-3 text-center">
                    Clave de elector
                  </th>
                  <th scope="col" className="px-6 py-3 text-center">
                    CURP
                  </th>

                  <th scope="col" className="px-6 py-3 text-center">
                    Opciones
                  </th>
                </tr>
              </thead>
              <tbody>


                {homeData.persons.map((person) => (
                  <tr className="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                    <th scope="row" className="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white  text-center">
                      {person.nombre}      {person.apellido_paterno} {person.apellido_materno}
                    </th>
                    <td className="px-6 py-4  text-center">
                      {person.clave_elector}
                    </td>
                    <td className="px-6 py-4  text-center">

                      {person.curp}
                    </td>

                    <td className="px-6 py-4 text-center">
                      <button type="button" className="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br  focus:outline-none  font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Ver</button>
                      <button type="button" className="text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br  focus:outline-none   font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Editar</button>
                      <button type="button" className="text-white bg-gradient-to-r from-red-400 via-red-500 to-red-600 hover:bg-gradient-to-br  focus:outline-none   font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">Eliminar</button>

                    </td>
                  </tr>
                ))

                }



              </tbody>
            </table>
          </div>



        </div>
        <nav aria-label="Page navigation example ">
          <ul className="inline-flex -space-x-px text-sm m-5">
            <li>
              <a href="#"  className="flex items-center justify-center px-3 h-8 ms-0 leading-tight text-gray-500 bg-white border border-e-0 border-gray-300 rounded-s-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">Previous</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 text-blue-600 border border-gray-300 bg-blue-50 hover:bg-blue-100 hover:text-blue-700 dark:border-gray-700 dark:bg-gray-700 dark:text-white">1</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">2</a>
            </li>
            <li>
              <a href="#"  className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">3</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">4</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">5</a>
            </li>
            <li>
              <a href="#" className="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 rounded-e-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">Next</a>
            </li>
          </ul>
        </nav>
      </div>

    </div>
  );
};

export default Home;
