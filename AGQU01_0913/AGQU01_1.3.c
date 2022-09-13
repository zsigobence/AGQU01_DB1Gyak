#include <stdio.h>
#include <stdlib.h>

void filemasol(char *fnev1, char *fnev2);
int main()
{
    filemasol("munka1.txt","munka2.txt");
    return 0;
}
void filemasol(char *fnev1, char *fnev2)
{
FILE *fp1, *fp2;
char ch;
int pos;
if ((fp1 = fopen(fnev1, "r")) == NULL)
{
printf("\nNem lehet megnyitni a fajlt.");
return;
}
else
{
printf("\nFajl megnyitva masolasra…\n ");
}
fp2 = fopen(fnev2, "w");
fseek(fp1, 0L, SEEK_END); // File pointer a fajl vegere
pos = ftell(fp1);
fseek(fp1, 0L, SEEK_SET); // File pointer a fajl elejere
while (pos--)
{
ch = fgetc(fp1); // Karakterenkent masolja a fajl tartalmat
fputc(ch, fp2);
}
fclose(fp1);
fclose(fp2);
}
