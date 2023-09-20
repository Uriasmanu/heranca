void main(List<String> arguments) {
  // Criando uma instância de Funcionario
  var funcionario1 = Funcionario("Alice", 1200.0);
  funcionario1.aumento(); // Verifica o aumento do salário

  // Criando uma instância de Diretor
  var diretor1 = Diretor("João", 1500.0, "Diretor de Vendas");
  diretor1.designacao(); // Exibe a designação do diretor
}


class Funcionario{
  String nome;
  double salario;
  
  Funcionario(this.nome, this.salario);

 aumento(){
  if(salario <= 1300){
    print("O funcionario $nome esta recebendo menos que 1300, por isso terá um aumento de 5%");
  }else{
    print("Nao precisa aumentar o salário.");
  }
 }
}

class Diretor extends Funcionario{
  String funcao;
  Diretor (String nome,double salario, this.funcao):super(nome,salario);

  designacao(){
  print("O $nome tem a função de $funcao por isso que ele recebe $salario");
  }
}