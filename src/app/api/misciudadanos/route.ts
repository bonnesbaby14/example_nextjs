import { NextResponse, NextRequest } from "next/server"
import { PrismaClient , Prisma} from "@prisma/client";
import getUser, { JwtPayload } from "@/utils/authFunctions";
import { use } from "react";
const prisma=new PrismaClient();


export interface Level {
  
  level: number;
  persons?:number,
  name:string,
  color:string

}

export interface GraphicItem{
  name:string,
  data:number
}

export async function GET(req: NextRequest) {
  
  


const  user : JwtPayload = await getUser() as JwtPayload;


const account = await prisma.cuenta.findFirst({
    where: { idcuenta: parseInt(user.idcuenta.toString()) }
  });

const maxLevelAccount=parseInt((account?.numero_niveles.toString()??"0"));
const viewLeaders=parseInt((account?.vista_lideres?.toString()??"0"));



var  levels: Level[]=[];


const query=""

  const person = await prisma.persona.findFirst({
    where: {
      idpersona: user.idpersona,
    },
  });



  if (!person) {
    throw new Error('Persona no encontrada');
  }

  var query_sql=Prisma.sql`SELECT 

  gn1.nombre as grupo_nivel1,
gn2.nombre as grupo_nivel2,
gn3.nombre as grupo_nivel3,
gn4.nombre as grupo_nivel4,
gn5.nombre as grupo_nivel5,
gn6.nombre as grupo_nivel6,
gn7.nombre as grupo_nivel7,
gn8.nombre as grupo_nivel8,
Persona.nombre,
Persona.apellido_paterno,
Persona.apellido_materno,
Persona.curp,
Persona.clave_elector

  
 FROM Persona 
 LEFT JOIN GrupoNivel1 as gn1 on Persona.idnivel1= gn1.idgrupo_nivel1
 LEFT JOIN GrupoNivel2 as gn2 on Persona.idnivel2= gn2.idgrupo_nivel2
 LEFT JOIN GrupoNivel3 as gn3 on Persona.idnivel3= gn3.idgrupo_nivel3
 LEFT JOIN GrupoNivel4 as gn4 on Persona.idnivel4= gn4.idgrupo_nivel4
 LEFT JOIN GrupoNivel5 as gn5 on Persona.idnivel5= gn5.idgrupo_nivel5
 LEFT JOIN GrupoNivel6 as gn6 on Persona.idnivel6= gn6.idgrupo_nivel6
 LEFT JOIN GrupoNivel7 as gn7 on Persona.idnivel7= gn7.idgrupo_nivel7
 LEFT JOIN GrupoNivel8 as gn8 on Persona.idnivel8= gn8.idgrupo_nivel8

where Persona.idcuenta=${account?.idcuenta} 
and Persona.activo=1 
and Persona.idpersona != ${user.idpersona} 

limit 20 

`
if(viewLeaders > 0 && (user.visualizador==0 && user.nivel>0) )
 {
  query_sql = Prisma.sql`${query_sql} AND Persona.idpersona_lider like %,${user.idpersona},% `;
 }
 
//  query_sql = Prisma.sql`${query_sql} AND (
//   Persona.nombre LIKE %${query}% OR
//   Persona.apellido_paterno LIKE %${query}% OR
//   Persona.apellido_materno LIKE %${query}% OR
//   Persona.clave_elector LIKE %${query}% OR
//   Persona.numero LIKE %${query}% OR
//   Persona.idPersona LIKE %${query}% OR
//   concat(Persona.nombre, " ", Persona.apellido_paterno) LIKE %${query}% OR
//   concat(Persona.nombre, " ", Persona.apellido_materno) LIKE %${query}% OR
//   concat(Persona.apellido_paterno, " ", Persona.nombre) LIKE %${query}% OR
//   concat(Persona.apellido_materno, " ", Persona.nombre) LIKE %${query}% OR
//   concat(Persona.apellido_paterno, " ", Persona.apellido_materno) LIKE %${query}% OR
//   concat(Persona.nombre, " ", Persona.apellido_paterno, " ", Persona.apellido_materno) LIKE %${query}% OR
//   concat(Persona.apellido_paterno, " ", Persona.apellido_materno, " ", Persona.nombre) LIKE %${query}% OR

//   SUBSTRING_INDEX(Persona.nombre, " ", 1) LIKE %${query}% OR
//   SUBSTRING_INDEX(Persona.nombre, " ", -1) LIKE %${query}% OR
//   concat(SUBSTRING_INDEX(Persona.nombre, " ", 1), " ", Persona.apellido_paterno) LIKE %${query}% OR
//   concat(SUBSTRING_INDEX(Persona.nombre, " ", -1), " ", Persona.apellido_paterno) LIKE %${query}% OR
//   concat(SUBSTRING_INDEX(Persona.nombre, " ", 1), " ", Persona.apellido_materno) LIKE %${query}% OR
//   concat(SUBSTRING_INDEX(Persona.nombre, " ", -1), " ", Persona.apellido_materno) LIKE %${query}% OR
//   concat(SUBSTRING_INDEX(Persona.nombre, " ", -1), " ", Persona.apellido_paterno, " ", Persona.apellido_materno) LIKE %${query}% OR
//   concat(SUBSTRING_INDEX(Persona.nombre, " ", 1), " ", Persona.apellido_paterno, " ", Persona.apellido_materno) LIKE %${query}% OR

//   concat(Persona.nombre, " ", Persona.apellido_materno) LIKE %${query}% OR
//   concat(Persona.nombre, " ", Persona.apellido_paterno) LIKE %${query}% OR
//   concat(Persona.apellido_materno, " ", Persona.nombre) LIKE %${query}% OR
//   concat(Persona.apellido_paterno, " ", Persona.nombre) LIKE %${query}% OR
//   concat(Persona.apellido_materno, " ", Persona.apellido_paterno) LIKE %${query}% OR
//   concat(Persona.nombre, " ", Persona.apellido_materno, " ", Persona.apellido_paterno) LIKE %${query}% OR
//   concat(Persona.nombre, " ", Persona.apellido_paterno, " ", Persona.apellido_materno) LIKE %${query}% OR
//   concat(Persona.apellido_materno, " ", Persona.apellido_paterno, " ", Persona.nombre) LIKE %${query}%
// ) `;
 
  // query_sql = Prisma.sql`${query_sql} AND Persona.activo=1`;
  
  // const citizens=await prisma.$queryRaw(query_sql);


  const citizens = await prisma.$queryRaw(query_sql);


  
  


console.log("se me hizo una petcion")


return NextResponse.json({
  data:{persons: citizens


  } ,
  

}, {
  status: 200,
  headers: {
    'Content-Type': 'application/json'
  }
});
    
}