# Batman Counter 🦇

Um aplicativo contador desenvolvido em Flutter para estudar e aplicar o padrão de gerenciamento de estado **BLoC** (Business Logic Component).

## 📱 Sobre o Projeto

Este projeto é uma aplicação prática dos conceitos fundamentais do pacote `flutter_bloc`. O objetivo é separar a regra de negócios da interface do usuário (UI), utilizando `Events` (eventos) e `States` (estados) para controlar o fluxo de dados.

Ao invés de um contador numérico simples, o app adiciona logos do Batman na tela dinamicamente conforme o estado do contador é alterado.

## 🛠️ Tecnologias Utilizadas

- **Flutter** & **Dart**
- **flutter_bloc**: Para gerenciamento de estado.
- **equatable** (opcional, se tiver usado): Para comparação de objetos.

## ✨ Funcionalidades

- **Incrementar**: Adiciona um logo do Batman à pilha.
- **Decrementar**: Remove o último logo adicionado.
- **Resetar**: Limpa o estado e volta a contagem para zero (Desafio prático).
- **Gerenciamento de Estado**: Uso de `BlocProvider`, `BlocBuilder` e separação de lógica em arquivos de *Event* e *State*.

## 🚀 Como rodar o projeto

1. Clone este repositório:
```bash
git clone [https://github.com/Sancho18/batman_counter.git](https://github.com/Sancho18/batman_counter.git)