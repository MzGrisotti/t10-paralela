


#include <math.h>
#include <stdio.h>
#include <stdlib.h>


#include "Cube_Unity.h"
#include "bmp.h"

#define PI 3.1415

//Cube_Unity ***Cube;
//Cube_Unity *Cube;
//Cube_Unity ***Cube_Perspective;
//Cube_Unity *Cube_Perspective;

//funcao chamada continuamente. Deve-se controlar o que desenhar por meio de variaveis
//globais que podem ser setadas pelo metodo keyboard()
/*
void OffSet_Z(double offset){

   for(auto i = 0; i < Size; i++){
      for(auto j = 0; j < Size; j++){
         for(auto k = 0; k < Size; k++){
            Cube[i + Size * (j + Size * k)].z += offset;
         }
      }
   }

}

void Transform_3D_2D(){

   double dist_to_screen = 300;
   double new_x, new_y;

   for(auto i = 0; i < Size; i++){
      for(auto j = 0; j < Size; j++){
         for(auto k = 0; k < Size; k++){
            new_x = Cube[i + Size * (j + Size * k)].x*dist_to_screen/Cube[i + Size * (j + Size * k)].z+width/2;
            new_y = Cube[i + Size * (j + Size * k)].y*dist_to_screen/Cube[i + Size * (j + Size * k)].z+width/2;
            //Cube_Perspective[i][j][k].set_pos(new_x, new_y, 0, Cube[i + Size * (j + Size * k)].cor);
            Cube_Perspective[i + Size * (j + Size * k)].set_pos(new_x, new_y, 0, Cube[i + Size * (j + Size * k)].cor);
         }
      }
   }

}

void Rotate_x(double angulo){

   angulo = angulo * PI/180;

   double matrix_x[4][4] = {1,           0,            0, 0,
                           0, cos(angulo), -sin(angulo), 0,
                           0, sin(angulo),  cos(angulo), 0,
                           0,           0,            0, 1};

   double new_x, new_y, new_z;

   for(auto i = 0; i < Size; i++){
      for(auto j = 0; j < Size; j++){
         for(auto k = 0; k < Size; k++){

            new_x = Cube[i + Size * (j + Size * k)].x * matrix_x[0][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[0][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[0][2];
            new_y = Cube[i + Size * (j + Size * k)].x * matrix_x[1][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[1][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[1][2];
            new_z = Cube[i + Size * (j + Size * k)].x * matrix_x[2][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[2][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[2][2];

            Cube[i + Size * (j + Size * k)].x = new_x;
            Cube[i + Size * (j + Size * k)].y = new_y;
            Cube[i + Size * (j + Size * k)].z = new_z;

         }
      }
   }

}

void Rotate_y(double angulo){

   angulo = angulo * PI/180;

   double matrix_x[4][4] = { cos(angulo), 0, sin(angulo), 0,
                                      0, 1,           0, 0,
                           -sin(angulo), 0, cos(angulo), 0,
                                      0, 0,           0, 1};

   double new_x, new_y, new_z;

   for(auto i = 0; i < Size; i++){
      for(auto j = 0; j < Size; j++){
         for(auto k = 0; k < Size; k++){

            new_x = Cube[i + Size * (j + Size * k)].x * matrix_x[0][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[0][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[0][2];
            new_y = Cube[i + Size * (j + Size * k)].x * matrix_x[1][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[1][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[1][2];
            new_z = Cube[i + Size * (j + Size * k)].x * matrix_x[2][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[2][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[2][2];

            Cube[i + Size * (j + Size * k)].x = new_x;
            Cube[i + Size * (j + Size * k)].y = new_y;
            Cube[i + Size * (j + Size * k)].z = new_z;

         }
      }
   }

}

void Rotate_z(double angulo){

   angulo = angulo * PI/180;

   double matrix_x[4][4] = {cos(angulo), -sin(angulo), 0, 0,
                           sin(angulo),  cos(angulo), 0, 0,
                                     0,            0, 1, 0,
                                     0,            0, 0, 1};

   double new_x, new_y, new_z;

   for(auto i = 0; i < Size; i++){
      for(auto j = 0; j < Size; j++){
         for(auto k = 0; k < Size; k++){

            new_x = Cube[i + Size * (j + Size * k)].x * matrix_x[0][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[0][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[0][2];
            new_y = Cube[i + Size * (j + Size * k)].x * matrix_x[1][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[1][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[1][2];
            new_z = Cube[i + Size * (j + Size * k)].x * matrix_x[2][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[2][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[2][2];

            Cube[i + Size * (j + Size * k)].x = new_x;
            Cube[i + Size * (j + Size * k)].y = new_y;
            Cube[i + Size * (j + Size * k)].z = new_z;

         }
      }
   }

}
*/

void render(Cube_Unity *Cube, Cube_Unity *Cube_Perspective){
	int Size = 100;
	int width = 2000;
	int OffSet = 3000;
   double startAngulo = 1;
   //Rotate_z(angulo);
   double offset = startAngulo;
   
   auto k = blockIdx.x;
   int i = int(floor(threadIdx.x/10));
   
	//for(auto i = 0; i < Size; i++){
      //for(auto j = 0; j < Size; j++){
	  for(auto j = (threadIdx.x*10)%100; j < ((threadIdx.x*10)%100)+10; j++){
         //for(auto k = 0; k < Size; k++){
            Cube[i + Size * (j + Size * k)].z += offset;
         //}
      }
   //}
   
   //Rotate_y(angulo);
	double angulo = startAngulo * PI/180;

   double matrix_x[4][4] = { cos(angulo), 0, sin(angulo), 0,
                                      0, 1,           0, 0,
                           -sin(angulo), 0, cos(angulo), 0,
                                      0, 0,           0, 1};

   double new_x, new_y, new_z;

   //for(auto i = 0; i < Size; i++){
      for(auto j = (threadIdx.x*10)%100; j < ((threadIdx.x*10)%100)+10; j++){
         //for(auto k = 0; k < Size; k++){

            new_x = Cube[i + Size * (j + Size * k)].x * matrix_x[0][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[0][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[0][2];
            new_y = Cube[i + Size * (j + Size * k)].x * matrix_x[1][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[1][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[1][2];
            new_z = Cube[i + Size * (j + Size * k)].x * matrix_x[2][0] + Cube[i + Size * (j + Size * k)].y * matrix_x[2][1] + Cube[i + Size * (j + Size * k)].z * matrix_x[2][2];

            Cube[i + Size * (j + Size * k)].x = new_x;
            Cube[i + Size * (j + Size * k)].y = new_y;
            Cube[i + Size * (j + Size * k)].z = new_z;

         //}
      }
   //}
   
   //Rotate_x(angulo);
	angulo = startAngulo * PI/180;

   double matrix_y[4][4] = {1,           0,            0, 0,
                           0, cos(angulo), -sin(angulo), 0,
                           0, sin(angulo),  cos(angulo), 0,
                           0,           0,            0, 1};

   //double new_x, new_y, new_z;

   //for(auto i = 0; i < Size; i++){
      //for(auto j = 0; j < Size; j++){
	  for(auto j = (threadIdx.x*10)%100; j < ((threadIdx.x*10)%100)+10; j++){
         //for(auto k = 0; k < Size; k++){

            new_x = Cube[i + Size * (j + Size * k)].x * matrix_y[0][0] + Cube[i + Size * (j + Size * k)].y * matrix_y[0][1] + Cube[i + Size * (j + Size * k)].z * matrix_y[0][2];
            new_y = Cube[i + Size * (j + Size * k)].x * matrix_y[1][0] + Cube[i + Size * (j + Size * k)].y * matrix_y[1][1] + Cube[i + Size * (j + Size * k)].z * matrix_y[1][2];
            new_z = Cube[i + Size * (j + Size * k)].x * matrix_y[2][0] + Cube[i + Size * (j + Size * k)].y * matrix_y[2][1] + Cube[i + Size * (j + Size * k)].z * matrix_y[2][2];

            Cube[i + Size * (j + Size * k)].x = new_x;
            Cube[i + Size * (j + Size * k)].y = new_y;
            Cube[i + Size * (j + Size * k)].z = new_z;

         //}
      }
   //}
   //OffSet_Z(OffSet);
   offset = OffSet;
  //for(auto i = 0; i < Size; i++){
      //for(auto j = 0; j < Size; j++){
	  for(auto j = (threadIdx.x*10)%100; j < ((threadIdx.x*10)%100)+10; j++){
         //for(auto k = 0; k < Size; k++){
            Cube[i + Size * (j + Size * k)].z += offset;
         //}
      }
   //}
   //Transform_3D_2D();
   
   double dist_to_screen = 300;
   //double new_x, new_y;

   //for(auto i = 0; i < Size; i++){
      //for(auto j = 0; j < Size; j++){
	  for(auto j = (threadIdx.x*10)%100; j < ((threadIdx.x*10)%100)+10; j++){
         //for(auto k = 0; k < Size; k++){
            new_x = Cube[i + Size * (j + Size * k)].x*dist_to_screen/Cube[i + Size * (j + Size * k)].z+width/2;
            new_y = Cube[i + Size * (j + Size * k)].y*dist_to_screen/Cube[i + Size * (j + Size * k)].z+width/2;
            //Cube_Perspective[i][j][k].set_pos(new_x, new_y, 0, Cube[i + Size * (j + Size * k)].cor);
            Cube_Perspective[i + Size * (j + Size * k)].set_pos(new_x, new_y, 0, Cube[i + Size * (j + Size * k)].cor);
         //}
      }
   //}
   //OffSet_Z(-OffSet);
   offset = -OffSet;
   //for(auto i = 0; i < Size; i++){
      //for(auto j = 0; j < Size; j++){
	  for(auto j = (threadIdx.x*10)%100; j < ((threadIdx.x*10)%100)+10; j++){
         //for(auto k = 0; k < Size; k++){
            Cube[i + Size * (j + Size * k)].z += offset;
         //}
      }
   //}
}


int main(void)
{

	cudaDeviceProp devProp;
	cudaGetDeviceProperties(&devProp, 0);
	int maxThreadsPerBlock = devProp.maxThreadsPerBlock;
	int maxBlocks = devProp.maxGridSize[0];
	std::cout << "max threads per block: " << maxThreadsPerBlock << std::endl << "max blocks: " << maxBlocks << std::endl;

	Cube_Unity *Cube;
	Cube_Unity *Cube_Perspective;
	
	int Size = 100;
	int width = 2000;
	int OffSet = 3000;
	int frames = 1;
	double spacing_factor = 40;

   double inix, iniy, iniz;
   double atualx, atualy, atualz;
   double spacing;

   inix = iniy = iniz = atualx = atualy = atualz = -double(Size)/2 * spacing_factor;
   spacing = -inix*2 / double(Size);

   //Cube = new Cube_Unity**[Size];
   
   //Cube = new Cube_Unity[Size*Size*Size];
   cudaMallocManaged(&Cube, Size*Size*Size*sizeof(Cube_Unity));
   //Cube_Perspective = new Cube_Unity[Size*Size*Size];
   cudaMallocManaged(&Cube_Perspective, Size*Size*Size*sizeof(Cube_Unity));
   //Cube_Perspective = new Cube_Unity**[Size];
   for(auto i = 0; i < Size; i++){
       //Cube[i] = new Cube_Unity*[Size];
       //Cube_Perspective[i] = new Cube_Unity*[Size];
       for(auto j = 0; j < Size; j++){
           //Cube[i][j] = new Cube_Unity[Size];
           //Cube_Perspective[i][j] = new Cube_Unity[Size];
           for(auto k = 0; k < Size; k++){
              Cube[i + Size * (j + Size * k)].set_pos(atualx,atualy,atualz, 255);
              atualz += spacing;
           }
           atualz = iniz;
           atualy += spacing;
       }
       atualy = iniy;
       atualx += spacing;
   }

   // allocate picture array
   unsigned char* pic = new unsigned char[frames * width * width];

   for (int frame = 0; frame < frames; frame++) {
      for (int row = 0; row < width; row++) {
         for (int col = 0; col < width; col++) {
            unsigned char color = (unsigned char) 255;
            pic[frame * width * width + row * width + col] = (unsigned char) color;
         }
      }
   }

	int max_threads, max_blocks;

	max_threads = 1000;
	max_blocks = Size;
	
   for(int frame = 0; frame < frames; frame++){
	  render<<<max_blocks, max_threads>>>(Cube, Cube_Perspective);
      //render();
	  cudaDeviceSynchronize();
      for(auto i = 0; i < Size; i++){
         for(auto j = 0; j < Size; j++){
            for(auto k = 0; k < Size; k++){
               //int row = (int)Cube_Perspective[i][j][k].x;
               //int col = (int)Cube_Perspective[i][j][k].y;
               int row = (int)Cube_Perspective[i + Size * (j + Size * k)].x;
               int col = (int)Cube_Perspective[i + Size * (j + Size * k)].y;
               if(row >= 0 && row < width && col >= 0 && col < width){
                  unsigned char color = (unsigned char) 0;
                  pic[frame * width * width + row * width + col] = (unsigned char) color;
               }
            }
         }
      }
   }

    for (int frame = 0; frame < frames; frame++) {
      char name[32];
      sprintf(name, "cube%d.bmp", frame + 1000);
      writeBMP(width, width, &pic[frame * width * width], name);
    }


}
