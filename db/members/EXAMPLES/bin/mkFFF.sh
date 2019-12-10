awk 'BEGIN{for(i=0;i<4096;i++)printf("%03X\n",i);}' | xargs -n1 mkdir
