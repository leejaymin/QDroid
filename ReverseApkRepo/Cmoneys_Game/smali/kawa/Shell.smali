.class public Lkawa/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static boolClasses:[Ljava/lang/Class;

.field public static defaultFormatInfo:[Ljava/lang/Object;

.field public static defaultFormatMethod:Ljava/lang/reflect/Method;

.field public static defaultFormatName:Ljava/lang/String;

.field static formats:[[Ljava/lang/Object;

.field private static httpPrinterClasses:[Ljava/lang/Class;

.field private static noClasses:[Ljava/lang/Class;

.field private static portArg:Ljava/lang/Object;

.field private static xmlPrinterClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-array v0, v5, [Ljava/lang/Class;

    sput-object v0, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    .line 16
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    .line 17
    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Lgnu/mapping/OutPort;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v6

    sput-object v0, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    .line 19
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Lgnu/mapping/OutPort;

    aput-object v1, v0, v5

    sput-object v0, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    .line 21
    const-string v0, "(port)"

    sput-object v0, Lkawa/Shell;->portArg:Ljava/lang/Object;

    .line 31
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "scheme"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getSchemeFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "readable-scheme"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getSchemeFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "elisp"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getEmacsLispFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "readable-elisp"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getEmacsLispFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clisp"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getCommonLispFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "readable-clisp"

    aput-object v3, v2, v5

    const-string v3, "gnu.kawa.functions.DisplayFormat"

    aput-object v3, v2, v6

    const-string v3, "getCommonLispFormat"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "commonlisp"

    aput-object v3, v2, v5

    const-string v3, "gnu.kawa.functions.DisplayFormat"

    aput-object v3, v2, v6

    const-string v3, "getCommonLispFormat"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "readable-commonlisp"

    aput-object v3, v2, v5

    const-string v3, "gnu.kawa.functions.DisplayFormat"

    aput-object v3, v2, v6

    const-string v3, "getCommonLispFormat"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "xml"

    aput-object v3, v2, v5

    const-string v3, "gnu.xml.XMLPrinter"

    aput-object v3, v2, v6

    const-string v3, "make"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "html"

    aput-object v3, v2, v5

    const-string v3, "gnu.xml.XMLPrinter"

    aput-object v3, v2, v6

    const-string v3, "make"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "html"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "xhtml"

    aput-object v3, v2, v5

    const-string v3, "gnu.xml.XMLPrinter"

    aput-object v3, v2, v6

    const-string v3, "make"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "xhtml"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cgi"

    aput-object v3, v2, v5

    const-string v3, "gnu.kawa.xml.HttpPrinter"

    aput-object v3, v2, v6

    const-string v3, "make"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "ignore"

    aput-object v3, v2, v5

    const-string v3, "gnu.lists.VoidConsumer"

    aput-object v3, v2, v6

    const-string v3, "getInstance"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;
    .locals 8
    .parameter "out"

    .prologue
    const/4 v6, 0x4

    .line 122
    sget-object v4, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    .line 123
    .local v4, info:[Ljava/lang/Object;
    if-nez p0, :cond_0

    .line 124
    invoke-static {}, Lgnu/lists/VoidConsumer;->getInstance()Lgnu/lists/VoidConsumer;

    move-result-object v5

    .line 141
    :goto_0
    return-object v5

    .line 125
    :cond_0
    if-nez v4, :cond_1

    .line 126
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-virtual {v5, p0}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v5

    goto :goto_0

    .line 129
    :cond_1
    :try_start_0
    array-length v5, v4

    sub-int/2addr v5, v6

    new-array v0, v5, [Ljava/lang/Object;

    .line 130
    .local v0, args:[Ljava/lang/Object;
    const/4 v5, 0x4

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    array-length v3, v0

    .local v3, i:I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 132
    aget-object v5, v0, v3

    sget-object v6, Lkawa/Shell;->portArg:Ljava/lang/Object;

    if-ne v5, v6, :cond_2

    .line 133
    aput-object p0, v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 143
    .end local v0           #args:[Ljava/lang/Object;
    .end local v3           #i:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 145
    .local v1, ex:Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get output-format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' - caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v1           #ex:Ljava/lang/Throwable;
    .restart local v0       #args:[Ljava/lang/Object;
    .restart local v3       #i:I
    :cond_3
    :try_start_1
    sget-object v5, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v2, format:Ljava/lang/Object;
    instance-of v5, v2, Lgnu/lists/AbstractFormat;

    if-eqz v5, :cond_4

    .line 137
    check-cast v2, Lgnu/lists/AbstractFormat;

    .end local v2           #format:Ljava/lang/Object;
    iput-object v2, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v5, p0

    .line 138
    goto :goto_0

    .line 141
    .restart local v2       #format:Ljava/lang/Object;
    :cond_4
    check-cast v2, Lgnu/lists/Consumer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2           #format:Ljava/lang/Object;
    move-object v5, v2

    goto :goto_0
.end method

.method public static printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    .locals 5
    .parameter "ex"
    .parameter "messages"
    .parameter "perr"

    .prologue
    const/16 v4, 0x14

    .line 301
    instance-of v3, p0, Lgnu/mapping/WrongArguments;

    if-eqz v3, :cond_1

    .line 303
    move-object v0, p0

    check-cast v0, Lgnu/mapping/WrongArguments;

    move-object v1, v0

    .line 304
    .local v1, e:Lgnu/mapping/WrongArguments;
    invoke-virtual {p1, p2, v4}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 305
    iget-object v3, v1, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-virtual {v1, p2}, Lgnu/mapping/WrongArguments;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 340
    .end local v1           #e:Lgnu/mapping/WrongArguments;
    :goto_0
    return-void

    .line 309
    :cond_1
    instance-of v3, p0, Ljava/lang/ClassCastException;

    if-eqz v3, :cond_2

    .line 311
    invoke-virtual {p1, p2, v4}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter, was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 328
    :cond_2
    instance-of v3, p0, Lgnu/text/SyntaxException;

    if-eqz v3, :cond_3

    move-object v0, p0

    check-cast v0, Lgnu/text/SyntaxException;

    move-object v2, v0

    .local v2, se:Lgnu/text/SyntaxException;
    invoke-virtual {v2}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 331
    invoke-virtual {v2, p2, v4}, Lgnu/text/SyntaxException;->printAll(Ljava/io/PrintWriter;I)V

    .line 332
    invoke-virtual {v2}, Lgnu/text/SyntaxException;->clear()V

    goto :goto_0

    .line 336
    .end local v2           #se:Lgnu/text/SyntaxException;
    :cond_3
    invoke-virtual {p1, p2, v4}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 337
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .locals 14
    .parameter "language"
    .parameter "env"
    .parameter "inp"
    .parameter "out"
    .parameter "perr"
    .parameter "url"
    .parameter "messages"

    .prologue
    .line 208
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v11

    .line 209
    .local v11, saveLanguage:Lgnu/expr/Language;
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v9

    .line 212
    .local v9, lexer:Lgnu/text/Lexer;
    if-eqz p4, :cond_5

    const/4 v5, 0x1

    move v8, v5

    .line 213
    .local v8, interactive:Z
    :goto_0
    invoke-virtual {v9, v8}, Lgnu/text/Lexer;->setInteractive(Z)V

    .line 214
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v7

    .line 215
    .local v7, ctx:Lgnu/mapping/CallContext;
    const/4 v5, 0x0

    .line 216
    .local v5, saveConsumer:Lgnu/lists/Consumer;
    if-eqz p3, :cond_0

    .line 218
    iget-object v5, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 219
    move-object/from16 v0, p3

    move-object v1, v7

    iput-object v0, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    :cond_0
    move-object v10, v5

    .line 221
    .end local v5           #saveConsumer:Lgnu/lists/Consumer;
    .local v10, saveConsumer:Lgnu/lists/Consumer;
    if-eq p0, v11, :cond_1

    .line 222
    invoke-static {p0}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    .line 225
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 226
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 230
    .local v5, parentLoader:Ljava/lang/ClassLoader;
    instance-of v12, v5, Lgnu/bytecode/ArrayClassLoader;

    if-nez v12, :cond_2

    .line 231
    new-instance v12, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v12, v5}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v6, v12}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .end local v5           #parentLoader:Ljava/lang/ClassLoader;
    .end local v6           #thread:Ljava/lang/Thread;
    :cond_2
    :goto_1
    const/4 v5, 0x3

    .line 244
    .local v5, opts:I
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v9, v5, v6}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v6

    .line 246
    .local v6, comp:Lgnu/expr/Compilation;
    if-eqz v8, :cond_6

    .line 247
    const/16 v5, 0x14

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5           #opts:I
    move-result v5

    .line 252
    .local v5, sawError:Z
    :goto_2
    if-nez v6, :cond_a

    .line 290
    .end local v5           #sawError:Z
    .end local v6           #comp:Lgnu/expr/Compilation;
    :goto_3
    if-eqz p3, :cond_3

    .line 291
    iput-object v10, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 292
    :cond_3
    if-eq p0, v11, :cond_4

    .line 293
    invoke-static {v11}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    .line 295
    :cond_4
    const/4 p0, 0x0

    .end local p0
    :goto_4
    return-object p0

    .line 212
    .end local v7           #ctx:Lgnu/mapping/CallContext;
    .end local v8           #interactive:Z
    .end local v10           #saveConsumer:Lgnu/lists/Consumer;
    .restart local p0
    :cond_5
    const/4 v5, 0x0

    move v8, v5

    goto :goto_0

    .line 248
    .local v5, opts:I
    .restart local v6       #comp:Lgnu/expr/Compilation;
    .restart local v7       #ctx:Lgnu/mapping/CallContext;
    .restart local v8       #interactive:Z
    .restart local v10       #saveConsumer:Lgnu/lists/Consumer;
    :cond_6
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    .end local v5           #opts:I
    if-eqz v5, :cond_9

    .line 249
    new-instance v5, Lgnu/text/SyntaxException;

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    .end local v6           #comp:Lgnu/expr/Compilation;
    :catch_0
    move-exception v5

    .line 282
    .local v5, e:Ljava/lang/Throwable;
    if-nez v8, :cond_11

    .line 290
    if-eqz p3, :cond_7

    .line 291
    iput-object v10, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 292
    :cond_7
    if-eq p0, v11, :cond_8

    .line 293
    invoke-static {v11}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    :cond_8
    move-object p0, v5

    goto :goto_4

    .line 251
    .end local v5           #e:Ljava/lang/Throwable;
    .restart local v6       #comp:Lgnu/expr/Compilation;
    :cond_9
    const/4 v5, 0x0

    .local v5, sawError:Z
    goto :goto_2

    .line 254
    :cond_a
    if-nez v5, :cond_2

    .line 256
    :try_start_3
    invoke-virtual {v6}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    .end local v5           #sawError:Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "atInteractiveLevel$"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lgnu/expr/ModuleExp;->interactiveCounter:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 263
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lgnu/mapping/InPort;->read()I

    move-result v5

    .line 264
    .local v5, ch:I
    if-ltz v5, :cond_c

    const/16 v12, 0xd

    if-eq v5, v12, :cond_c

    const/16 v12, 0xa

    if-ne v5, v12, :cond_e

    .line 273
    :cond_c
    :goto_5
    move-object v0, p1

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    move-result v6

    .end local v6           #comp:Lgnu/expr/Compilation;
    if-eqz v6, :cond_2

    .line 275
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/io/Writer;

    move v6, v0

    if-eqz v6, :cond_d

    .line 276
    move-object/from16 v0, p3

    check-cast v0, Ljava/io/Writer;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 277
    :cond_d
    if-gez v5, :cond_2

    goto :goto_3

    .line 266
    .restart local v6       #comp:Lgnu/expr/Compilation;
    :cond_e
    const/16 v12, 0x20

    if-eq v5, v12, :cond_b

    const/16 v12, 0x9

    if-eq v5, v12, :cond_b

    .line 268
    invoke-virtual/range {p2 .. p2}, Lgnu/mapping/InPort;->unread()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 290
    .end local v5           #ch:I
    .end local v6           #comp:Lgnu/expr/Compilation;
    :catchall_0
    move-exception p1

    .end local p1
    if-eqz p3, :cond_f

    .line 291
    iput-object v10, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 292
    :cond_f
    if-eq p0, v11, :cond_10

    .line 293
    invoke-static {v11}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    :cond_10
    throw p1

    .line 284
    .local v5, e:Ljava/lang/Throwable;
    .restart local p1
    :cond_11
    :try_start_4
    move-object v0, v5

    move-object/from16 v1, p6

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 233
    .end local v5           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .locals 8
    .parameter "language"
    .parameter "env"
    .parameter "inp"
    .parameter "pout"
    .parameter "perr"
    .parameter "messages"

    .prologue
    .line 178
    const/4 v7, 0x0

    .line 179
    .local v7, saveFormat:Lgnu/lists/AbstractFormat;
    if-eqz p3, :cond_0

    .line 180
    iget-object v7, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 181
    :cond_0
    invoke-static {p3}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v3

    .line 184
    .local v3, out:Lgnu/lists/Consumer;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p5

    :try_start_0
    invoke-static/range {v0 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 188
    if-eqz p3, :cond_1

    .line 189
    iput-object v7, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_1
    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 189
    iput-object v7, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_2
    throw v0
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z
    .locals 9
    .parameter "language"
    .parameter "env"

    .prologue
    .line 152
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v3

    .line 153
    .local v3, inp:Lgnu/mapping/InPort;
    new-instance v6, Lgnu/text/SourceMessages;

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    .line 155
    .local v6, messages:Lgnu/text/SourceMessages;
    instance-of v1, v3, Lgnu/mapping/TtyInPort;

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lgnu/expr/Language;->getPrompter()Lgnu/mapping/Procedure;

    move-result-object v8

    .line 158
    .local v8, prompter:Lgnu/mapping/Procedure;
    if-eqz v8, :cond_0

    .line 159
    move-object v0, v3

    check-cast v0, Lgnu/mapping/TtyInPort;

    move-object v4, v0

    invoke-virtual {v4, v8}, Lgnu/mapping/TtyInPort;->setPrompter(Lgnu/mapping/Procedure;)V

    .line 160
    :cond_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v5

    .line 165
    .end local v8           #prompter:Lgnu/mapping/Procedure;
    .local v5, perr:Lgnu/mapping/OutPort;
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v7

    .line 167
    .local v7, ex:Ljava/lang/Throwable;
    if-nez v7, :cond_2

    .line 168
    const/4 v1, 0x1

    .line 170
    :goto_1
    return v1

    .line 163
    .end local v5           #perr:Lgnu/mapping/OutPort;
    .end local v7           #ex:Ljava/lang/Throwable;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #perr:Lgnu/mapping/OutPort;
    goto :goto_0

    .line 169
    .restart local v7       #ex:Ljava/lang/Throwable;
    :cond_2
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    invoke-static {v7, v6, v1}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 170
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;)Z
    .locals 8
    .parameter "language"
    .parameter "env"
    .parameter "inp"
    .parameter "out"
    .parameter "perr"
    .parameter "url"

    .prologue
    .line 197
    new-instance v6, Lgnu/text/SourceMessages;

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    .local v6, messages:Lgnu/text/SourceMessages;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 198
    invoke-static/range {v0 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v7

    .line 199
    .local v7, ex:Ljava/lang/Throwable;
    if-eqz v7, :cond_0

    .line 200
    invoke-static {v7, v6, p4}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 201
    :cond_0
    if-nez v7, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runFile(Ljava/lang/String;I)Z
    .locals 7
    .parameter "fname"
    .parameter "skipLines"

    .prologue
    const/4 v6, 0x0

    .line 344
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 347
    .local v1, env:Lgnu/mapping/Environment;
    :try_start_0
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v2

    .line 350
    .local v2, in:Lgnu/mapping/InPort;
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 351
    invoke-virtual {v2}, Lgnu/mapping/InPort;->skipRestOfLine()V
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 358
    .end local v2           #in:Lgnu/mapping/InPort;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 360
    .local v0, e:Lgnu/text/SyntaxException;
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v0, v3, v4}, Lgnu/text/SyntaxException;->printAll(Ljava/io/PrintWriter;I)V

    move v3, v6

    .line 371
    .end local v0           #e:Lgnu/text/SyntaxException;
    :goto_1
    return v3

    .line 352
    .restart local v2       #in:Lgnu/mapping/InPort;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v1, v3}, Lkawa/standard/load;->loadSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;)V

    .line 356
    .end local v2           #in:Lgnu/mapping/InPort;
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 355
    :cond_1
    const/4 v3, 0x0

    invoke-static {p0, v1, v3, p1}, Lkawa/standard/load;->apply(Ljava/lang/Object;Lgnu/mapping/Environment;ZI)V
    :try_end_1
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 363
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 365
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v6

    .line 366
    goto :goto_1

    .line 368
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 370
    .local v0, e:Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    move v3, v6

    .line 371
    goto :goto_1
.end method

.method public static setDefaultFormat(Ljava/lang/String;)V
    .locals 11
    .parameter "name"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const-string v10, "\'"

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 84
    sput-object p0, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, i:I
    :goto_0
    sget-object v5, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    aget-object v4, v5, v2

    .line 88
    .local v4, info:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 89
    .local v3, iname:Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 91
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kawa: unknown output format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 85
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    if-ne v3, p0, :cond_0

    .line 96
    sput-object v4, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    .line 99
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, formatClass:Ljava/lang/Class;
    const/4 v5, 0x2

    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v4, v6

    check-cast v6, [Ljava/lang/Class;

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1           #formatClass:Ljava/lang/Class;
    :goto_1
    sget-object v5, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    aget-object v5, v5, v8

    const-string v6, "gnu.lists.VoidConsumer"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    invoke-static {v8}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 114
    :cond_2
    return-void

    .line 104
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 106
    .local v0, ex:Ljava/lang/Throwable;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kawa:  caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while looking for format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
