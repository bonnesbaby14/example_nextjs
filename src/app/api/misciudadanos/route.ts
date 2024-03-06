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
  
 const per_page=20;

 console.log("se va traer los datos")



 




 const page=Number(req.nextUrl.searchParams.get("page"))
 const skip = (page - 1) * per_page;

const  user : JwtPayload = await getUser() as JwtPayload;




const account = await prisma.accounts.findFirst({
    where: { account_id: parseInt(user.account_fk.toString()) }
  });

const maxLevelAccount=parseInt((account?.number_levels.toString()??"0"));
const viewLeaders=parseInt((account?.leader_view?.toString()??"0"));



var  levels: Level[]=[];


const query=""

  const person = await prisma.persons.findFirst({
    where: {
      person_id: user.person_fk,
    },
  });



  if (!person) {
    throw new Error('Persona no encontrada');
  }

  


  console.log("haciendo la consulta")
  const [citizens, total] = await prisma.$transaction([
    prisma.persons.findMany({
      skip,
      take: per_page,
      select: {
        name: true,
        last_name: true,
        second_last_name: true,
        curp: true,
        clave_elector: true,
        person_id: true,
      },
      where: {
        account_fk: user.account_fk,
      },
    }),
    prisma.persons.count({
      where: {
        account_fk: user.account_fk,
      },
    }),
  ]);

  console.log(citizens,total)

  
  

  const total_page = Math.ceil(total / per_page)

return NextResponse.json({
  data:{persons: citizens,
    total_page:total_page



  } ,
  

}, {
  status: 200,
  headers: {
    'Content-Type': 'application/json'
  }
});
    
}