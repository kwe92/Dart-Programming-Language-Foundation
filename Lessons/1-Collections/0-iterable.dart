// Iterable

//   - abstract class (can not be instantiated)
//   - a data structure, representing a collection of Objects;
//     "elements" or "values" that can be accessed sequentially (linearly) O(n) worst case (asymptotic) time-complexity
//   - can be declared and initalized with List and Set literals or literal parameterized types
//   - List and Set classes are sub-classes of Iterable; implementations of the Iterable super-class
//   - if a List or Set literal is initalized as an Iterable it can't be indexed using brackets

// All Implementors (sub-types / sub-classes) of the Iterable Abstract Class in Dart

//   - most commonly used implementors:

//       - List
//       - Set

//   - least commonly used implementors:

//       - LinkedList
//       - Queue
//       - DoubleLinkedQueue
//       - ListQueue
//       - Runes
//       - SplayTreeSet

// Why have separate Implementations (sub-classes) of Iterable?

//    - separate implementations of the Iterable types
//      allows sub-types (sub-classes) to serve distinct
//      purposes as individual data structures and maintain
//      separation of concerns (separation of behaviors between sub-types)

typedef IntFunc = int Function(int);

void main() {
  // Example: const Iterable parameterized List literal

  //   - frozen at compile-time (unmodifiable / immutable Iterable)
  //   - initalized with a parameterized List literal
  //   - declared as an Iterable type (tooling can know what the class can and can't do | what methods and properties it has)

  // homogenous Iterable of Strings (Strings themselves are a type of iterable but do not implement Iterable directly; as each character can be accessed by index using bracket notation, loops, and control flow)
  const Iterable heroNamesTest = <String>['Goku', 'Naruto', 'Gon', 'Deku'];

  // Example: final Iterable parameterized Set literal

  //    - a compile-time constant after initalization
  //    - modifiable / mutable, may return a diffrent pointer in memory if modified

  // homogenous Iterable of double terminating decimal numbers
  final Iterable terminalingDecimals = <double>{3.14, 0.001, 0.05};

  const sayian = 'Goku';

  print('\nSon ${sayian} first letter of name: ${sayian[0]}');

  print('\nList as Iterable of anime characters: $heroNamesTest');

  print('\nSet as Iterable of double terminating decimal numbers: $terminalingDecimals\n');
}