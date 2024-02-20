
import { useEffect } from 'react';
import { useRouter } from 'next/navigation';


interface CardProps {
  data: number; // Reemplaza YourDataType con el tipo de datos correcto
  icon: number; // Tipo explícito para 'icon'
}

const Card: React.FC<CardProps> = ({ data, icon }) => {
  return (
    <div
      className="flex items-start justify-between p-4 bg-white rounded-md shadow-md border border-gray-200 w-40 h-20 overflow-hidden transition duration-200 ease-in-out"
    >
      <div className="text-4xl text-gray-500">
        {icon}
      </div>
      <span className="text-2xl font-bold">{data}</span>
    </div>
  );
};



const Home = () => {




  // Resto del código del componente...

  return (
    <div className="flex flex-wrap justify-start  gap-4 p-10 mt-10">
      <Card key={1} data={1} icon={4} />
      <Card key={2} data={2} icon={3} />
      <Card key={3} data={3} icon={2} />
      <Card key={4} data={4} icon={1} />
  </div>
  );
};

export default Home;
