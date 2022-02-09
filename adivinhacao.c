#include <stdio.h>

int main()
{
  // imprime cabeçalho do nosso jogo
  printf("******************************************\n");
  printf("* Bem vindo ao nosso jogo de adivinhação *\n");
  printf("******************************************\n");

  int numerosecreto = 42;

  int chute;

  printf("Qual é o seu chute? ");
  scanf("%d", &chute);
  printf("Se chute foi %d\n", chute);

  printf("%d %d", numerosecreto, chute);
}
