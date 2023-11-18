# Lab Report 3 - Bugs and Commands

## Part 1 - Bugs

We exame the bug in the reverseInPlace method.

### JUnit Test of failure inducing input

```java
  @Test
  public void testFailureInducing() {
      int[] input1 = { 1 };
      assertArrayEquals(new int[] { 1 }, ArrayExamples.reversed(input1));
  }
```

### JUnit Test of non-failure inducing input

```java
  @Test
  public void testNonFailureInducing() {
    int[] input1 = { };
    assertArrayEquals(new int[]{ }, ArrayExamples.reversed(input1));
  }
```

### The Symptom

We can see the symptom of this bug by running these two JUnit tests:
![symptom](./images/Screenshot%202023-11-18%20at%2012.48.04 PM.png)

### The Bug: Before and After

#### Before

```java
  static int[] reversed(int[] arr) {
    int[] newArray = new int[arr.length];
    for(int i = 0; i < arr.length; i += 1) {
      arr[i] = newArray[arr.length - i - 1];
    }
    return arr;
  }
```

#### After

```java
static int[] reversed(int[] arr) {
    int[] newArray = new int[arr.length];
    for (int i = 0; i < arr.length; i += 1) {
      newArray[i] = arr[arr.length - i - 1];
    }
    return newArray;
  }
```

In the original Java code, a logic error occurs where the method, meant to reverse an array, mistakenly overwrites the elements of the input array `arr` with zeros from a new, uninitialized array `newArray`. The corrected version resolves this by properly reversing the array: it assigns the elements of `arr` into `newArray` in reverse order and returns `newArray`, thereby preserving the original array `arr` and accurately creating a reversed copy.

## Part 2 - Researching Commands - `grep`

All option descriptions come from `man grep`.

### command line option 1: `grep -r`

The `grep -r` command in Unix/Linux recursively searches for a specified pattern in all files within a given directory and its subdirectories. This feature is highly useful for comprehensive searches across multiple files and directories, particularly in large projects or complex directory structures, enabling efficient pattern finding without manually checking each file.

#### example 1:

```bash
$ grep -r "legal aid lawyers" technical/

technical/government/Media/RoanokeTimes.txt:Many viewed the early legal aid lawyers as "wild-eyed radicals,"
technical/government/Media/RoanokeTimes.txt:In the 1960s, Harley said, legal aid lawyers were banned from
```

#### example 2:

```bash
$ grep -r "United States Congress" technical/

technical/plos/pmed.0010060.txt:        September 2004, an AMA trustee testified in a United States Congressional hearing,
technical/911report/preface.txt:                the President of the United States, the United States Congress, and the American
technical/911report/chapter-1.txt:    Tuesday, September 11, 2001, dawned temperate and nearly cloudless in the eastern United States. Millions of men and women readied themselves for work. Some made their way to the Twin Towers, the signature structures of the World Trade Center complex in New York City. Others went to Arlington, Virginia, to the Pentagon. Across the Potomac River, the United States Congress was back in session. At the other end of Pennsylvania Avenue, people began to line up for a White House tour. In Sarasota, Florida, President George W. Bush went for an early morning run.
technical/government/About_LSC/Strategic_report.txt:LSC is committed to providing the United States Congress and the
```

### command line option 2: `grep -i`

The `grep -i` command in Unix/Linux is used for case-insensitive searching of a specified pattern within files. This option is useful because it allows the command to match the pattern regardless of case, making searches more flexible and comprehensive, especially in scenarios where the exact case of the text is unknown or varied.

#### example 1:

```bash
$ grep -r -i "legal aid lawyers" technical/

technical/government/Media/Anthem_Payout.txt:Legal aid lawyers in Kentucky have put together an action team
technical/government/Media/NJ_Legal_Services.txt:Four former Passaic Legal Aid lawyers, who requested anonymity,
technical/government/Media/Legal_Aid_in_Clay_County.txt:But even though Legal Aid lawyers provide legal services to
technical/government/Media/Funding_cuts_force.txt:about 24,000 low-income people annually. Legal Aid lawyers help
technical/government/Media/Marylands_Legal_Aid.txt:managing) attorneys around the state are former Legal Aid lawyers
technical/government/Media/RoanokeTimes.txt:Many viewed the early legal aid lawyers as "wild-eyed radicals,"
technical/government/Media/RoanokeTimes.txt:In the 1960s, Harley said, legal aid lawyers were banned from
technical/government/About_LSC/reporting_system.txt:child care services. Legal aid lawyers and paralegals increasingly

```

#### example 2:

```bash
$ grep -r -i "united states congress" technical/

technical/plos/pmed.0010060.txt:        September 2004, an AMA trustee testified in a United States Congressional hearing,
technical/911report/preface.txt:                the President of the United States, the United States Congress, and the American
technical/911report/chapter-1.txt:    Tuesday, September 11, 2001, dawned temperate and nearly cloudless in the eastern United States. Millions of men and women readied themselves for work. Some made their way to the Twin Towers, the signature structures of the World Trade Center complex in New York City. Others went to Arlington, Virginia, to the Pentagon. Across the Potomac River, the United States Congress was back in session. At the other end of Pennsylvania Avenue, people began to line up for a White House tour. In Sarasota, Florida, President George W. Bush went for an early morning run.
technical/government/About_LSC/Strategic_report.txt:LSC is committed to providing the United States Congress and the
```

### command line option 3: `grep -c`

The `grep -c` command in Unix/Linux counts the number of lines in a file that match a specified pattern. This functionality is useful for quickly determining the frequency of a pattern's occurrence in a file, which is particularly beneficial for analyzing and summarizing large datasets or logs.

#### example 1

```bash
$ grep -r -c "legal aid lawyers" technical/

...
technical/911report/chapter-8.txt:0
technical/911report/chapter-5.txt:0
technical/911report/preface.txt:1
technical/911report/chapter-9.txt:0
technical/911report/chapter-13.3.txt:0
technical/911report/chapter-1.txt:1
technical/911report/chapter-13.1.txt:0
technical/911report/chapter-13.4.txt:0
technical/911report/chapter-11.txt:0
...
```

#### example 2

```bash
$ grep -r -i -c "united states congress" technical/

....
technical/government/About_LSC/commission_report.txt:0
technical/government/About_LSC/Strategic_report.txt:1
technical/government/About_LSC/LegalServCorp_v_VelazquezOpinion.txt:0
technical/government/About_LSC/Comments_on_semiannual.txt:0
```

### command line option 4: `grep -n`

The `grep -n` command in Unix/Linux adds line numbers to the output of a search, showing where each match is found within the file. This feature is particularly useful for pinpointing the exact location of matches, which is crucial for debugging, editing, or analyzing data within larger files.

#### example 1

```bash
$ grep -r -i -n "legal aid lawyers" technical/

technical/government/Media/Anthem_Payout.txt:30:Legal aid lawyers in Kentucky have put together an action team
technical/government/Media/NJ_Legal_Services.txt:93:Four former Passaic Legal Aid lawyers, who requested anonymity,
technical/government/Media/Legal_Aid_in_Clay_County.txt:13:But even though Legal Aid lawyers provide legal services to
technical/government/Media/Funding_cuts_force.txt:11:about 24,000 low-income people annually. Legal Aid lawyers help
technical/government/Media/Marylands_Legal_Aid.txt:70:managing) attorneys around the state are former Legal Aid lawyers
technical/government/Media/RoanokeTimes.txt:29:Many viewed the early legal aid lawyers as "wild-eyed radicals,"
technical/government/Media/RoanokeTimes.txt:42:In the 1960s, Harley said, legal aid lawyers were banned from
technical/government/About_LSC/reporting_system.txt:208:child care services. Legal aid lawyers and paralegals increasingly
```

#### example 2

```bash
$ grep -r -i -n "united states congress" technical/

technical/plos/pmed.0010060.txt:28:        September 2004, an AMA trustee testified in a United States Congressional hearing,
technical/911report/preface.txt:6:                the President of the United States, the United States Congress, and the American
technical/911report/chapter-1.txt:6:    Tuesday, September 11, 2001, dawned temperate and nearly cloudless in the eastern United States. Millions of men and women readied themselves for work. Some made their way to the Twin Towers, the signature structures of the World Trade Center complex in New York City. Others went to Arlington, Virginia, to the Pentagon. Across the Potomac River, the United States Congress was back in session. At the other end of Pennsylvania Avenue, people began to line up for a White House tour. In Sarasota, Florida, President George W. Bush went for an early morning run.
technical/government/About_LSC/Strategic_report.txt:495:LSC is committed to providing the United States Congress and the
```
