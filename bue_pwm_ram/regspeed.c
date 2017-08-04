#include <opora.h>

void pi_reg_speed(int flag)
{
	static struct pi_reg_state reg = {0.0, 0.0, 0.0, 0.0};

	int32_t e;
	int32_t enc, denc;
	static int32_t enc1 = 0;
	static int32_t enc2 = 0;
	int32_t speed;
	int32_t smp_rate;
    
    switch(flag)
    {
	case 1:		
	    //r_OUT(0, 0) = (double)(reg.y/1024);
	break;
	case 2:
	
		smp_rate = 0; //(int32_t)r_IN(5, 0);
	
		enc = 0; //(int32_t)r_IN(4, 0);
		denc = (enc-enc1);
		enc2 = enc1;
		enc1 = enc;
		if(abs(denc) > 1000){
			if(denc < 0) denc += 4096;
			else denc -= 4096;
		}		
		speed = (denc*60*smp_rate)>>12;
		
		//e = r_IN(1, 0) - r_IN(0, 0);
		e = (int32_t)r_IN(1, 0) - speed;
		r_OUT(1, 0) = (double)e;

		reg.ki = r_IN(2, 0)*1024;
		reg.kp = r_IN(3, 0)*1024;

		update(&reg, e);

	break;
	case 4:
	    reg.a = 0.0;
	    reg.y = 0.0;
	    
	    enc1 = 0;
	    enc2 = 0;
	break;
    }
}
