# Cherry Programming Language

Cherry is a programming language suitable for implementing OS with language based protection.

Cherry offers strongs memory safety and guarantees absense of data races, without sacrificting expressivity.

Cherry used referenced-counted smart pointers to provide semantical destructors.

Cherry has no global variables. Because variables which are typically called "global" actually are process-local.
But Cherry does not assume that program inrunning inside a Unix-like process.

All global constants are evaluated (interpreted) at compile time.
Any objects that remain live at the end of the evaluation are allocated in the `.rdata` section
with immortal reference counter and stable reference hash.

Every Cherry program is perfectly sandboxed - it can access only resources which were passed to the `main()` function.
Code executed during compile time has no access to these resources.
E.g. it cannot access file system, network, clock or even system random number generator.
Compile-time evaluation is guaranteed to be safe and produce stable results, without artifical restrictions on structure of compile-time code.

Cherry uses generic types to write code portable across hardware platforms.
All built-in types either have fixed layout or are generic over target platform traits.
Cherry uses **_axioms_** to avoid boilerplate code for passing platform traits, but if needed they can be specified explicitly.
Code running on 32-bit platform can emulate behaviour of the 64-bit platform and vice versa.
But if emulation is not needed, compiler will monomorphize code according to the target platform.

> TODO: Should static data be allowed in generic types? With platform traits being generic arguments, almost every type will be generic.

All types in Cherry are comparable for equality and can be hashed. Including closures.
Structs can customize implementation of equality by conforming to `CustomEquatable` protocol.
Classes are always compared by their identity.

> TODO: what about move-only types? E.g. unique pointers.

To highlight semantical differences, instance of a class is created using keyword `new`.

## Pointers

| Type              | Can escape | Can copy | Can make weak | class init/deinit | class method |
|-------------------|------------|----------|---------------|-------------------|--------------|
| scoped raw ptr    | No         | Yes      | No            | Yes               | Yes          |
| scoped shared ptr | No         | Yes      | Yes           | Yes               | Yes          |
| shared ptr        | Yes        | Yes      | Yes           | No                | Yes          |
| unique ptr        | Yes        | No       | No            | No                | Yes          |

## Locks

* `Immortal` - global constant, always implicitly held for reading, cannot be taken explicitly. Used to protect global constants.
* `Thread` - implicit param to a function, implicitly held for writing, cannot be taken explicitly. Used to protect local variables.
* `Mutex` - can be created manually, provides exclusive write locking.
* `ReadWriteLock` - can be created manually, provides shared read locking and exclusive write locking.
* `SerialQueue` - combines `Mutex` with scheduling code execution.
* `ConcurrentQueue` - combines `ReadWriteLock` with scheduling code execution.
