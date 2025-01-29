# Swift Compiler Type Mismatch in Function Parameters

This repository demonstrates a subtle bug in Swift where the compiler doesn't always detect type mismatches in function parameters.  This can lead to unexpected behavior and runtime errors that are difficult to debug.

## Problem

The Swift compiler doesn't consistently enforce type matching when using named parameters.  If you pass arguments with a type that implicitly converts to the expected type, the compiler won't issue a warning or error, even if this leads to unexpected results.  This is especially problematic when dealing with implicit type conversions between numeric types.

## Solution

The best solution is to use explicit type annotations consistently in function definitions.  This improves code readability, making the expected types clear and reduces the chances of this type of error.