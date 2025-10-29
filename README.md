# 📱 Projeto Perguntas - Flutter Quiz App

Um aplicativo Flutter interativo de questionário com sistema de pontuação, desenvolvido para fins educacionais e demonstração de conceitos fundamentais do Flutter.

## 📋 Descrição

Este é um aplicativo de quiz desenvolvido em Flutter que apresenta uma série de perguntas ao usuário, calcula uma pontuação baseada nas respostas e exibe um resultado personalizado ao final. O projeto demonstra conceitos importantes como gerenciamento de estado, navegação entre widgets e estruturação de componentes.

## ✨ Funcionalidades

- **Quiz Interativo**: Série de perguntas com múltiplas opções de resposta
- **Sistema de Pontuação**: Cada resposta possui uma pontuação específica
- **Resultado Personalizado**: Mensagens diferentes baseadas na pontuação final
- **Função Reiniciar**: Permite recomeçar o questionário a qualquer momento
- **Interface Responsiva**: Design adaptável para diferentes tamanhos de tela

## 🎯 Características do Quiz

### Perguntas Incluídas:
1. **Qual é a sua cor favorita?**
   - Preto (10 pontos)
   - Vermelho (5 pontos)
   - Verde (3 pontos)
   - Branco (1 ponto)

2. **Qual é o seu animal favorito?**
   - Coelho (10 pontos)
   - Cobra (5 pontos)
   - Elefante (3 pontos)
   - Leão (1 ponto)

3. **Qual é o seu instrutor favorito?**
   - Maria (10 pontos)
   - João (5 pontos)
   - Leo (3 pontos)
   - Pedro (1 ponto)

### Sistema de Classificação:
- **0-7 pontos**: "Parabéns!"
- **8-11 pontos**: "Você é incrível!"
- **12-15 pontos**: "Você é impressionante!"
- **16+ pontos**: "Nível Jedi!"

## 🏗️ Arquitetura do Projeto

O projeto está estruturado em componentes modulares para facilitar a manutenção e compreensão:

```
lib/
├── main.dart          # Arquivo principal e lógica do app
├── questonario.dart   # Widget do questionário
├── questao.dart       # Widget individual das perguntas
├── resposta.dart      # Widget dos botões de resposta
└── resultado.dart     # Widget da tela de resultados
```

### Componentes Principais:

- **`PerguntaApp`**: Widget principal (StatefulWidget) que gerencia o estado global
- **`Questionario`**: Exibe as perguntas e respostas
- **`Questao`**: Renderiza o texto da pergunta atual
- **`Resposta`**: Botões interativos para as opções de resposta
- **`Resultado`**: Tela final com pontuação e opção de reiniciar

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework principal para desenvolvimento
- **Dart**: Linguagem de programação
- **Material Design**: Para componentes de UI

## 🚀 Como Executar o Projeto

### Pré-requisitos

- Flutter SDK instalado ([Guia de instalação](https://flutter.dev/docs/get-started/install))
- Editor de código (VS Code, Android Studio, etc.)
- Dispositivo móvel ou emulador configurado

### Passos para Execução

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/projeto_pergutas.git
   cd projeto_pergutas
   ```

2. **Instale as dependências:**
   ```bash
   flutter pub get
   ```

3. **Execute o aplicativo:**
   ```bash
   flutter run
   ```

## 🎨 Personalização

O projeto pode ser facilmente personalizado:

### Adicionar Novas Perguntas:
Edite o array `_perguntas` no arquivo `main.dart`:

```dart
{
  'texto': 'Sua nova pergunta aqui?',
  'respostas': [
    {'texto': 'Opção 1', 'pontuacao': 10},
    {'texto': 'Opção 2', 'pontuacao': 5},
    // ... mais opções
  ],
}
```

### Modificar Sistema de Pontuação:
Ajuste a função `fraseResultado` no arquivo `resultado.dart`.

### Personalizar Visual:
- Modifique cores no arquivo `resposta.dart`
- Ajuste tamanhos de fonte nos widgets individuais
- Adicione novos estilos conforme necessário

## 📚 Conceitos Flutter Demonstrados

Este projeto é excelente para aprender:

- **StatefulWidget vs StatelessWidget**: Gerenciamento de estado
- **Callback Functions**: Comunicação entre widgets pai e filho
- **List.map()**: Renderização dinâmica de widgets
- **Conditional Rendering**: Exibição condicional de componentes
- **Widget Composition**: Estruturação e organização de componentes
- **Material Design**: Implementação de componentes visuais

## 🤝 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para:

1. Fazer fork do projeto
2. Criar uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abrir um Pull Request

## 📄 Licença

Este projeto está sob licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 👨‍💻 Autor

Desenvolvido durante curso de Flutter para fins educacionais.

---

⭐ Se este projeto foi útil para você, considere dar uma estrela no repositório!
