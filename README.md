# TUGoal Mobile

Aplicação móvel desenvolvida em **Flutter e Dart**, integrada com uma API em **C# / ASP.NET Core** e uma base de dados **Microsoft SQL Server**, para gerir e acompanhar uma competição de futebol.

## Funcionalidades

### Área de Adepto
- Consulta de equipas e respetivas informações.
- Acompanhamento de jogos e resultados.
- Consulta do calendário por jornadas.
- Visualização da classificação do campeonato.
- Consulta de notícias e informações.
- Possibilidade de escolher uma equipa favorita.
- Acesso como convidado ou através de autenticação.

### Área de Administração
- Gestão de equipas.
- Gestão de jogadores.
- Registo e gestão de jogos.
- Gestão de campeonatos e eventos.
- Consulta de estatísticas.
- Reinício de época.

## Tecnologias utilizadas

**Aplicação móvel**
- Flutter
- Dart
- Material Design

**Backend**
- C#
- ASP.NET Core Web API
- Entity Framework Core
- JWT Authentication
- Swagger

**Base de dados**
- Microsoft SQL Server
- SQL

## Estrutura do projeto

```text
TUGoal-Mobile/
│
├── tugoal/
│   ├── android/
│   ├── assets/
│   ├── lib/
│   │   ├── app/
│   │   ├── config/
│   │   ├── models/
│   │   └── screens/
│   ├── web/
│   ├── pubspec.yaml
│   └── pubspec.lock
│
├── TuGoalAPI/
│   ├── Controllers/
│   ├── Data/
│   ├── Models/
│   ├── Properties/
│   ├── Program.cs
│   ├── appsettings.json
│   └── TuGoalAPI.csproj
│
├── tugoaldb.sql
├── .gitignore
└── README.md
```

## Requisitos

- Flutter SDK com suporte a Dart 3.11 ou superior.
- .NET 10 SDK.
- Microsoft SQL Server.
- Visual Studio ou Visual Studio Code.
- Dispositivo Android, emulador ou navegador compatível.

## Configuração e execução

### 1. Base de dados

1. Abrir o SQL Server Management Studio.
2. Abrir o ficheiro `tugoaldb.sql`.
3. Verificar e adaptar os caminhos dos ficheiros da base de dados à instalação local do SQL Server, se necessário.
4. Executar o script.
5. Confirmar que a base de dados `TuGoalDB` foi criada.

### 2. Backend – API

1. Abrir `TuGoalAPI/TuGoalAPI.csproj` no Visual Studio.
2. Configurar a connection string no `appsettings.json`.
3. Configurar uma chave JWT válida através das configurações locais.
4. Executar o projeto.

A API está configurada para utilizar a porta `5177` em HTTP.

Durante o desenvolvimento, a documentação Swagger fica disponível no ambiente Development.

### 3. Aplicação Flutter

Abrir um terminal na pasta `tugoal/` e executar:

```bash
flutter pub get
flutter run
```

### 4. Configuração da ligação à API

No ficheiro `tugoal/lib/config/api_config.dart`, configurar o endereço IP do computador na variável `ipFisico` quando a aplicação for executada num dispositivo Android físico.

A aplicação utiliza `localhost` para Flutter Web e Windows.

## Autenticação

A API utiliza autenticação baseada em JWT (JSON Web Tokens) para gerir o acesso às funcionalidades protegidas.

## Objetivo

O TUGoal foi desenvolvido como um projeto de aplicação móvel, integrando Flutter, uma API própria e uma base de dados SQL Server para gerir e acompanhar uma competição de futebol.