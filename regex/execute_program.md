Regexes like `/a/` are literal- they specify exact character to match.
`/a/.test('a')= true`

Boundaries- When we want to match text at the beginning or end of the string.

- `.` matches any character but not empty string.

- `^` means beginning of string
    ```
    /^cat/.test('caterpillar')= true
    ```

- `$` means end of string
    ```
    /^$/- only matches empty string.
    ```

- `+` operator requires something to occur one or more times.
    ```
    /a+/.test('aa')=true
    ```

- `*` like plus, but means 0 or more times.
    ```
    /a*/.test('')=true
    ```

- `|` or operator
    ```
    /^(jpg|pdf|png)$/.test('pdf')=true
    
    The above means, any string that either starts and ends with either jpg or pdf or png, and can be written in short as-

    /^(jpg|p(df|ng))$/
    
    ```

- `?` operator matches a char set zero or one time, but not more than one times. `?` operator affects whatever is immediately before it. It binds tightly. `/ab?/ only affects b and not a.` To make `?` include more chars use parantheses, like- /(ab)?/ 
    ```
    /a?/.test('aa')=false
    ```
* `\w`= [A-Z0-9a-z_] it means letters, numbers or underscores.

#### Escaping
`+` normally repeates whatever comes before it. But when there is a need to search for plus, you can escape it via `\+`.

#### Basic character classes-

- `\d`- for digits.
- `\s`- for whitespaces

In generatl \<Capital> is ! \<smaller>. For example- `\D` = `!\d`. If `\d` matches for digits, `\D` matches for anything other than digits.

```
    /^c(a|o|u)t$/.test('cat')=true  ; // can be written in short as below
    /^c[aou]t$/.test('cat')=true
```

Character sets can be negated to mean everything not in the set. The negation works with `^`. This is usually to indicate the start of string. But inside square brackets(for character sets), it means negating the character set.

```
    /[^a]/.test('a')=false
```
* Negation applies to entire char set. The regex `/[^ab]/` means any char other than `a` or `b`.
* Negation applies to ranges as well- `/[^a-z]/` means anything that is not from `a` to `z`.
* Character sets also match exactly one character so, `+` , `*` for multiple of them.

#### Hex codes
Computers stores chars as numbers *as we all know*. As shorthand it's handy to use hex codes as an alias to those numbers.
For example- `A` in hex is `41`. [Referenece](https://www.eso.org/~ndelmott/ascii.html).
```
    /x41/.test('An apple')=true
```

* \x can only be followed by exactly 2 digits. Anything after the 2 digits is different part of regex.
* If \x is written with exactly 1 digit or anything other than [0-9a-fA-F], it's treated as a literal matching in regex.
* [gc-ea]= [g]|[c-e]|[a]. This can be negated via [^gc-ea]

**Special characters like `.` `&` aren't special inside a character set anymore. Only special character is `^` but that too only at the beginning of the char set and holds no special importance anywhere else in the char set. **

#### Constrained repetition
When we need text to be of certain length.
```
    /^....$/('1234')= true ; anything of length 4.
```
it's obviously impractical to match a string of length 200 like this, `{}` comes to rescue here.
```
    /^(a|b){3}/.test('aaa')= true ; starting and ending with either `a` or `b` and exactly occurring 3 times.
```
* Specify a range with `,`. 
```
    /^[fho]{2,3}/.test('off')=true; // anything in the char set fho and occurring 2 or 3 times.
```

* Specify n or more with `{5,}`.

* In some regexes `{,5}` means atmost 5 characters but not with js, it treats this as literal regex matching.

* Regex that matches valid hex codes-
```
    /^x[0-9a-fA-F]{2}$/
```

#### Word boundaries
`\b`- only matches where a word character is next to a non-word character.
```
/\bcat\b/.test('cat-dog')=true; since - is not \w.
```
* To search for cat in middle-
```
    /\Bcat\B/.test('concatenat')= true; Remember \Capital = !\small
```