// Write code to add two numbers without using any binary operator or +, -. but you can use ++ , --.
#include <stdio.h>
int add_x_y( int x , int y) // this code only add two integers.

	{
	if( x>0 ) {	 // assuming one integer be positive and dont worr
				// about sign of 2nd integer.
	while( x> 0 )
		{
		y++ ;
		x--;
	}
	retrun (y);
	}
if( x<0 ) {		// assuming one integer be negative and dnt worry
				// about sign of second integer.
	while( x< 0 )
		{
		y++ ;
		x++;
	}
	retrun (y);
	}
}

int main(){
	int a,b,result;

    scanf("%d %d", &a, &b);

    result=add_x_y(a,b)
    printf("Result: %d",result);
	return 0;
}

// or
/*

#include <stdio.h>
int main(){

    int a,b;

    scanf("%d %d", &a, &b);

    int i;

  if(b>0)

   {

    for (i=0; i<b; i++)

        a++;

    printf ("%d", a);

   }

else

        {

          for(i=0;i>b;i--)

          a--;

         printf("%d",a);

        }

return 0; 

}

*/