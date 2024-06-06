

# 1. Factory Constructor
- In `Dart`, and by extension in Flutter, a Factory Constructor is a special type of constructor that is used to return an instance of a class.a factory constructor can return an existing instance, a subtype instance, or even null. Factory constructors are particularly useful when you need more control over the instance creation process.

## Key Features of a Factory Constructor
1. Control Over Instance Creation: You can control how instances of a class are created, potentially reusing existing instances or creating different subtypes based on input parameters.
2. Singleton Pattern: Factory constructors can be used to implement the Singleton pattern, ensuring that only one instance of a class is created.
3. Complex Initialization Logic: You can encapsulate complex instance creation logic within a factory constructor, making the code cleaner and more maintainable.

## Step-by-Step Implementation
1. Define an Abstract Class or Interface: This will declare the common methods that all concrete classes should implement.
2. Create Concrete Classes: These classes will implement the abstract class or interface and be used as Flutter widgets.
3. Implement the Factory Class with a Factory Constructor: The factory constructor will decide which widget to instantiate based on input parameters and return an instance of the selected widget.

# 2. Model Class
- In `Flutter`, a Model class often represents data and business logic, typically used in conjunction with state management solutions like Provider, ScopedModel, or Riverpod. It encapsulates the application's state and logic, allowing the UI to reactively update when the model changes.

## Step-by-Step Implementation
1. Set Up the Project: Ensure you have the provider package added to your pubspec.yaml.
2. Create the Model Class: Define the CounterModel class with necessary state and methods.
3. Set Up the Provider: Configure the provider in the widget tree.
4. Use the Model in the UI: Use the Consumer widget to access and modify the model in the UI.
<h1 align = "center"> Random Quotes Generator </h1>
<p>
  <img src='https://github.com/Dipeshmaurya1/quote_app_daily_task/assets/149373441/5f60aedc-1c8d-4e28-a5d6-fc7fed5bca31' height=35%, width=22%>
</p>
<p>
  <img src='https://github.com/Dipeshmaurya1/quote_app_daily_task/assets/149373441/8c3a4f01-0781-4c42-9739-9e01cb73dac3' height=35%, width=22%>
</p>
<p>
  <video src='https://github.com/Dipeshmaurya1/quote_app_daily_task/assets/149373441/5ad873e2-aebc-4f21-80ba-ccbe4a9857fc' height=35%, width=22%>
</p>
<a  href="https://github.com/Dipeshmaurya1/quote_app_daily_task/tree/master/lib/Component/Screens/RandomQuote">-> 📂 Go To Dart File 📂<-</a>












