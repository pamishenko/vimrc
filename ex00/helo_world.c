#include <unistd.h>

void hello_stas()
{
	write(1, "Stas\n", 5);
}

int main(int argc, char **argv)
{
	hello_stas();
	write(1, "HELLO_WORLD\n", 12);
	return(0);
}
