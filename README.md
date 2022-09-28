# Copy Paste

## Introduction

The purpose of the Copy Paste project is to create a platform that will streamline the generation of contribution lists that constantly circulate in whatsapp. The application is purposed to help in the creation, generation, and sharing of these lists in a streamlined way. It should not collect or share any information with any server (for now) as all the data can be stored locally.

## Architecture

The application will utilize the Domain Driven Design (DDD) architecture to organize files and ensure separation of concerns. For more information on DDD, check out [This](https://medium.com/microtica/the-concept-of-domain-driven-design-explained-3184c0fd7c3f). However, in addition to the DDD principles, we will employ the Layered Architecture [Read more here](https://medium.com/kayvan-kaseb/the-layered-architecture-pattern-in-software-architecture-324922d381ad) to further refine the structure. In general, the application structure will be as follows:

#### 1. Application Layout

1. <b>Presentation Layer</b>

- Comprise of any UI related items
- Comprise of widgets
- Routes and routers
- Themes and colors

2. <b>Application Layer</b>

- Helpers and utils
- State management (Linked below)
- Controller-related operations

3. <b>Domain Layer</b>

- Models (Entities) and Data classes (Data Transfer Objects)
- Business logic and business rules
- Interfaces and contracts
- Validations

4. <b>Infrastructure Layer</b>

- Repositories (Local and Cloud repositories)
- Data persistence

#### 2. State Management

This project will utilize Redux State Management solution to provide a source of truth for all data consumed across the application. Redux is popular in the web development world with React, but it is platform-agnostic, and can be used in different settings. More specifically, this application will use [Async Redux](https://pub.dev/packages/async_redux) which is powerful especially when it comes to dealing with network related tasks.

### 3. Code Generation

In order to ensure faster development and reduce bugs, we will opt to use a code generation tool for data classes. More specifically, this tool will help in generating the following:

- `copyWith` functions that are useful when cloning or copying items from one class to another.
- `toJson` functions that are useful when converting dart classes to json objects
- `fromJson` functions that will help to convert json objects to dart classes

The tool we will be using is called [Freezed](https://pub.dev/packages/freezed) and [Freezed Annotations](https://pub.dev/packages/freezed_annotation) along with [Json Annotations](https://pub.dev/packages/json_annotation). We will use [Build Runner](https://pub.dev/packages/build_runner) to automate the code generation process.

Commands to assist with the code generation will be stored in a `Makefile` and can be accessed by the following sample snippet:

```bash
# if a command in the make file is named 'generate-icons'
# you call it as follows in the terminal
make generate-icons
```
