#define RND_G

#include <p2c/rnd.h>


void P_random(seed)
long *seed;
{
  static short xsubi[3];
  
  srand(*seed);
  *seed = rand();
}


long P_rand(seed, limit)
long *seed;
long limit;
{
  long ret;

  srand(*seed);
  *seed = rand();
  if (limit != 0)
    return(abs(*seed % limit)); /* I know, I know.  This skews probabilities */
			        /* slightly toward low numbers unless limit  */
			        /* is a divisor of 2^32.  Tough.             */
  else
    return(0);
}  
  
