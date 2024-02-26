

"use client"
import { getHome } from "@/utils/homeFunctions";
import { cookies } from "next/headers";
import React, { useState, useEffect } from 'react';
import { AreaData, ColorType, DeepPartial, Time, TimeChartOptions, createChart } from 'lightweight-charts';
import { Level } from "../api/home/route";


type HomeData = {
  counters: Level[];
  graphic: any[]
  // Otros campos específicos de HomeData si los tienes
};

const Home = () => {

  const [homeData, setHomeData] = useState<HomeData>({ counters: [], graphic: [] });


  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('/api/home', {
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
        const graphicData = fetchedCounters.graphic;


        const chartContainer = document.getElementById('graphic') ?? "";
        let containerWidth
        if (chartContainer instanceof HTMLElement) {
          chartContainer.innerHTML = "";
          containerWidth = chartContainer.offsetWidth; // Obtener el ancho del contenedor

        }


        const chartOptions: DeepPartial<TimeChartOptions> = {
          width: containerWidth, height: 300, grid: {
            vertLines: { visible: false },
            horzLines: { visible: false },
          }, layout: { textColor: 'white', background: { type: ColorType.Solid, color: '#2B2B43' } }
        };
        const chart = createChart(chartContainer, chartOptions);
        const areaSeries = chart.addAreaSeries({ lineColor: '#2962FF', topColor: '#2962FF', bottomColor: 'rgba(41, 98, 255, 0.28)' });

        console.log(graphicData)
        const datas: AreaData<Time>[] = []


        for (const key in graphicData) {
          datas.push({ time: key, value: graphicData[key] })

        }

        const timeScale = chart.timeScale();
        // timeScale.scrollToPosition(100,false);
        timeScale.fitContent()

        areaSeries.setData(datas);

        setHomeData(fetchedCounters);




      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();  // Llamar a la función de obtención de datos

  }, []);
  // const data = await getHome()



  const counters = homeData.counters;








  return (
    <div>

      <button data-drawer-target="default-sidebar" data-drawer-toggle="default-sidebar" aria-controls="default-sidebar" type="button" className="inline-flex items-center p-2 mt-2 ms-3 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600">
        <span className="sr-only">Open sidebar</span>
        <svg className="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
          <path clipRule="evenodd" fillRule="evenodd" d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z"></path>
        </svg>
      </button>


      <div className="p-4 sm:ml-64">
        <div className="p-4 border-2 border-gray-200 border-dashed rounded-lg dark:border-gray-700">
          <div className="grid grid-cols-4 gap-x-6 gap-y-6 flex-wrap "> {/* Agregué gap-x-4 y flex-wrap */}


            {counters.map((counter) => (
              <div className="flex items-center space-x-20 pl-6 h-28 rounded bg-gray-50 dark:bg-gray-800" key={counter.level}>

                <div className="flex flex-col items-center">
                  <svg className={`w-16 h-16 ${counter.color} dark:${counter.color}`} aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                    <path stroke="currentColor" strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18Zm0 0a9 9 0 0 0 5-1.5 4 4 0 0 0-4-3.5h-2a4 4 0 0 0-4 3.5 9 9 0 0 0 5 1.5Zm3-11a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                  </svg>
                  <h4 className="text-xs text-center">{counter.name}</h4>
                </div>

                <h1 className="text-3xl">{counter.persons}</h1>
              </div>
            ))}







          </div>
        </div>
      </div>

      <div className="p-4 sm:ml-64">
        <div className="p-4 border-2 border-gray-200 border-dashed rounded-lg dark:border-gray-700">


          <div id="graphic"></div>

        </div>
      </div>

    </div>
  );
};

export default Home;
