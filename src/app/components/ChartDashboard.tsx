"use client"
import { AreaData, ColorType, DeepPartial, Time, TimeChartOptions, createChart } from "lightweight-charts";
import { FC, useEffect, useState } from "react";

const ChartDashboard: FC = () => {
  const [chartData, setChartData] = useState<any>(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('/api/home?type=chart', {
          method: 'GET',
          headers: { 'Content-Type': 'application/json' },
        });

        if (!response.ok) {
          console.error(`Error: ${response.status}`);
          return;
        }

        const data = await response.json();
        const fetchedCounters = data.data;
        setChartData(fetchedCounters.graphic);
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();

    // Cleanup function (optional)
    return () => {
      // Perform any cleanup, if needed
    };
  }, []); // Dependency array to ensure useEffect runs once

  useEffect(() => {
    if (chartData) {
      const chartContainer = document.getElementById('graphic');
      let containerWidth;
      if (chartContainer instanceof HTMLElement) {
        chartContainer.innerHTML = "";
        containerWidth = chartContainer.offsetWidth;

        const chartOptions: DeepPartial<TimeChartOptions> = {
          width: containerWidth, height: 300, grid: {
            vertLines: { visible: false },
            horzLines: { visible: false },
          }, layout: { textColor: 'white', background: { type: ColorType.Solid, color: '#2B2B43' } }
        };

        const chart = createChart(chartContainer, chartOptions);
        const areaSeries = chart.addAreaSeries({ lineColor: '#2962FF', topColor: '#2962FF', bottomColor: 'rgba(41, 98, 255, 0.28)' });

        const datas: AreaData<Time>[] = [];
        for (const key in chartData) {
          datas.push({ time: key, value: chartData[key] });
        }

        const timeScale = chart.timeScale();
        timeScale.fitContent();

        areaSeries.setData(datas);
      }
    }
  }, [chartData]);

  return (
    <div id="graphic"></div>
  );
};

export default ChartDashboard;
