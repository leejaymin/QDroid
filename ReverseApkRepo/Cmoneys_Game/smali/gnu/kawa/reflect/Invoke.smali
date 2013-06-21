.class public Lgnu/kawa/reflect/Invoke;
.super Lgnu/mapping/ProcedureN;
.source "Invoke.java"

# interfaces
.implements Lgnu/expr/CanInline;


# static fields
.field public static final invoke:Lgnu/kawa/reflect/Invoke;

.field public static final invokeSpecial:Lgnu/kawa/reflect/Invoke;

.field public static final invokeStatic:Lgnu/kawa/reflect/Invoke;

.field public static final make:Lgnu/kawa/reflect/Invoke;


# instance fields
.field kind:C

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    .line 29
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke-static"

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    .line 30
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke-special"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    .line 31
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "make"

    const/16 v2, 0x4e

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .parameter "name"
    .parameter "kind"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 36
    iput-char p2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 37
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CLgnu/expr/Language;)V
    .locals 0
    .parameter "name"
    .parameter "kind"
    .parameter "language"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 43
    iput-char p2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 44
    iput-object p3, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    .line 45
    return-void
.end method

.method private append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V
    .locals 2
    .parameter "methods"
    .parameter "mcount"
    .parameter "sbuf"

    .prologue
    .line 653
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 655
    const-string v1, "\n  candidate: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    aget-object v1, p1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 658
    :cond_0
    return-void
.end method

.method static checkKeywords(Lgnu/bytecode/Type;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;
    .locals 10
    .parameter "type"
    .parameter "args"
    .parameter "start"
    .parameter "caller"

    .prologue
    const/4 v9, 0x0

    .line 301
    array-length v4, p1

    .line 302
    .local v4, len:I
    sub-int v8, v4, p2

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    move-object v8, v9

    .line 317
    :goto_0
    return-object v8

    .line 304
    :cond_0
    sub-int v8, v4, p2

    shr-int/lit8 v8, v8, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    .line 305
    .local v2, fields:[Ljava/lang/Object;
    array-length v3, v2

    .local v3, i:I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 307
    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, p2

    aget-object v1, p1, v8

    .line 308
    .local v1, arg:Lgnu/expr/Expression;
    instance-of v8, v1, Lgnu/expr/QuoteExp;

    if-nez v8, :cond_1

    move-object v8, v9

    .line 309
    goto :goto_0

    .line 310
    :cond_1
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1           #arg:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 311
    .local v7, value:Ljava/lang/Object;
    instance-of v8, v7, Lgnu/expr/Keyword;

    if-nez v8, :cond_2

    move-object v8, v9

    .line 312
    goto :goto_0

    .line 313
    :cond_2
    check-cast v7, Lgnu/expr/Keyword;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, name:Ljava/lang/String;
    move-object v0, p0

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object v8, v0

    invoke-static {v8, v5, p3}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v6

    .line 315
    .local v6, slot:Lgnu/bytecode/Member;
    if-eqz v6, :cond_3

    move-object v8, v6

    :goto_2
    aput-object v8, v2, v3

    goto :goto_1

    :cond_3
    move-object v8, v5

    goto :goto_2

    .end local v5           #name:Ljava/lang/String;
    .end local v6           #slot:Lgnu/bytecode/Member;
    :cond_4
    move-object v8, v2

    .line 317
    goto :goto_0
.end method

.method public static checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I
    .locals 5
    .parameter "type"
    .parameter "comp"

    .prologue
    .line 327
    instance-of v2, p0, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_0

    move-object v0, p0

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    const/4 v2, 0x1

    .line 340
    :goto_0
    return v2

    .line 334
    :catch_0
    move-exception v1

    .line 336
    .local v1, ex:Ljava/lang/Exception;
    const/16 v2, 0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 337
    const/4 v2, -0x1

    goto :goto_0

    .line 340
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMethodName([Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 3
    .parameter "args"

    .prologue
    .line 662
    iget-char v1, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_0

    .line 663
    const-string v1, "<init>"

    .line 667
    :goto_0
    return-object v1

    .line 664
    :cond_0
    iget-char v1, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    move v0, v1

    .line 665
    .local v0, nameIndex:I
    :goto_1
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-lt v1, v2, :cond_2

    .line 666
    aget-object v1, p1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 664
    .end local v0           #nameIndex:I
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_1

    .line 667
    .restart local v0       #nameIndex:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 13
    .parameter "type"
    .parameter "name"
    .parameter "args"

    .prologue
    const/4 v12, 0x0

    .line 689
    const-class v11, Lgnu/kawa/reflect/Invoke;

    monitor-enter v11

    :try_start_0
    sget-object v1, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lgnu/kawa/reflect/Invoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)[Lgnu/expr/PrimProcedure;

    move-result-object v0

    .line 690
    .local v0, methods:[Lgnu/expr/PrimProcedure;
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lgnu/kawa/reflect/Invoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 691
    .local v8, num:J
    const/16 v1, 0x20

    shr-long v1, v8, v1

    long-to-int v10, v1

    .line 692
    .local v10, okCount:I
    long-to-int v7, v8

    .line 694
    .local v7, maybeCount:I
    if-nez v0, :cond_0

    .line 695
    const/4 v6, -0x1

    .line 702
    .local v6, index:I
    :goto_0
    if-gez v6, :cond_3

    move-object v1, v12

    :goto_1
    monitor-exit v11

    return-object v1

    .line 696
    .end local v6           #index:I
    :cond_0
    if-lez v10, :cond_1

    .line 697
    :try_start_1
    invoke-static {v0, v10}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v6

    .restart local v6       #index:I
    goto :goto_0

    .line 698
    .end local v6           #index:I
    :cond_1
    const/4 v1, 0x1

    if-ne v7, v1, :cond_2

    .line 699
    const/4 v6, 0x0

    .restart local v6       #index:I
    goto :goto_0

    .line 701
    .end local v6           #index:I
    :cond_2
    const/4 v6, -0x1

    .restart local v6       #index:I
    goto :goto_0

    .line 702
    :cond_3
    aget-object v1, v0, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 689
    .end local v0           #methods:[Lgnu/expr/PrimProcedure;
    .end local v6           #index:I
    .end local v7           #maybeCount:I
    .end local v8           #num:J
    .end local v10           #okCount:I
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1
.end method

.method public static inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;
    .locals 8
    .parameter "exp"
    .parameter "carg"
    .parameter "walker"

    .prologue
    const/4 v7, 0x0

    .line 350
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    .line 351
    .local v1, comp:Lgnu/expr/Compilation;
    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 352
    .local v2, language:Lgnu/expr/Language;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 353
    .local v0, args:[Lgnu/expr/Expression;
    array-length v6, v0

    if-le v6, p1, :cond_1

    .line 355
    aget-object v6, v0, p1

    invoke-virtual {v2, v6}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v5

    .line 356
    .local v5, type:Lgnu/bytecode/Type;
    instance-of v6, v5, Lgnu/bytecode/Type;

    if-nez v6, :cond_0

    move-object v6, p0

    .line 366
    .end local v5           #type:Lgnu/bytecode/Type;
    :goto_0
    return-object v6

    .line 358
    .restart local v5       #type:Lgnu/bytecode/Type;
    :cond_0
    invoke-static {v5, v1}, Lgnu/kawa/reflect/Invoke;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    .line 359
    array-length v6, v0

    new-array v3, v6, [Lgnu/expr/Expression;

    .line 360
    .local v3, nargs:[Lgnu/expr/Expression;
    array-length v6, v0

    invoke-static {v0, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v3, p1

    .line 362
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 363
    .local v4, nexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v4, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-object v6, v4

    .line 364
    goto :goto_0

    .end local v3           #nargs:[Lgnu/expr/Expression;
    .end local v4           #nexp:Lgnu/expr/ApplyExp;
    .end local v5           #type:Lgnu/bytecode/Type;
    :cond_1
    move-object v6, p0

    .line 366
    goto :goto_0
.end method

.method public static invoke$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStatic$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static make$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 5
    .parameter "type"
    .parameter "name"
    .parameter "args"

    .prologue
    .line 679
    const-class v1, Lgnu/kawa/reflect/Invoke;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/Invoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;

    move-result-object v0

    .line 680
    .local v0, method:Lgnu/expr/PrimProcedure;
    if-nez v0, :cond_0

    .line 681
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing or ambiguous method `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    .end local v0           #method:Lgnu/expr/PrimProcedure;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 683
    .restart local v0       #method:Lgnu/expr/PrimProcedure;
    :cond_0
    :try_start_1
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v2
.end method

.method private static selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    .locals 6
    .parameter "methods"
    .parameter "ctype"
    .parameter "args"
    .parameter "margsLength"
    .parameter "argsStartIndex"
    .parameter "objIndex"

    .prologue
    .line 284
    new-array v0, p3, [Lgnu/bytecode/Type;

    .line 286
    .local v0, atypes:[Lgnu/bytecode/Type;
    const/4 v1, 0x0

    .line 287
    .local v1, dst:I
    if-ltz p5, :cond_0

    .line 288
    add-int/lit8 v2, v1, 0x1

    .end local v1           #dst:I
    .local v2, dst:I
    aput-object p1, v0, v1

    move v1, v2

    .line 289
    .end local v2           #dst:I
    .restart local v1       #dst:I
    :cond_0
    move v3, p4

    .line 290
    .local v3, src:I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 292
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v0, v1

    .line 291
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {p0, v0}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v4

    return-wide v4
.end method

.method private static typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;
    .locals 3
    .parameter "arg"
    .parameter "thisProc"

    .prologue
    .line 64
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .line 66
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_1

    .line 67
    check-cast p0, Lgnu/bytecode/ObjectType;

    move-object v0, p0

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_3

    .line 69
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_3
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_4

    .line 71
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_4
    instance-of v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v0, :cond_5

    .line 73
    check-cast p0, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_5
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    const-string v2, "class-specifier"

    invoke-direct {v0, p1, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, args:[Ljava/lang/Object;
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x53

    if-eq v8, v9, :cond_0

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x56

    if-eq v8, v9, :cond_0

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x73

    if-eq v8, v9, :cond_0

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_6

    .line 84
    :cond_0
    array-length v6, v1

    .line 85
    .local v6, nargs:I
    invoke-static {p0, v6}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 86
    const/4 v8, 0x0

    aget-object v0, v1, v8

    .line 87
    .local v0, arg0:Ljava/lang/Object;
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x53

    if-eq v8, v9, :cond_1

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x73

    if-ne v8, v9, :cond_4

    :cond_1
    invoke-static {v0, p0}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v8

    move-object v2, v8

    :goto_0
    check-cast v2, Lgnu/bytecode/ObjectType;

    .line 90
    .local v2, dtype:Lgnu/bytecode/ObjectType;
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {p0, v2, v8}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v7

    .line 91
    .local v7, proc:Lgnu/mapping/Procedure;
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x53

    if-ne v8, v9, :cond_5

    const/4 v8, 0x2

    :goto_1
    sub-int v8, v6, v8

    new-array v5, v8, [Ljava/lang/Object;

    .line 92
    .local v5, margs:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 93
    .local v3, i:I
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x56

    if-eq v8, v9, :cond_2

    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_3

    .line 94
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    const/4 v8, 0x0

    aget-object v8, v1, v8

    aput-object v8, v5, v3

    move v3, v4

    .line 95
    .end local v4           #i:I
    .restart local v3       #i:I
    :cond_3
    const/4 v8, 0x2

    const/4 v9, 0x2

    sub-int v9, v6, v9

    invoke-static {v1, v8, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {v7, v5, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 100
    .end local v0           #arg0:Ljava/lang/Object;
    .end local v2           #dtype:Lgnu/bytecode/ObjectType;
    .end local v3           #i:I
    .end local v5           #margs:[Ljava/lang/Object;
    .end local v6           #nargs:I
    .end local v7           #proc:Lgnu/mapping/Procedure;
    :goto_2
    return-void

    .line 87
    .restart local v0       #arg0:Ljava/lang/Object;
    .restart local v6       #nargs:I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v2, v8

    goto :goto_0

    .line 91
    .restart local v2       #dtype:Lgnu/bytecode/ObjectType;
    .restart local v7       #proc:Lgnu/mapping/Procedure;
    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    .line 99
    .end local v0           #arg0:Ljava/lang/Object;
    .end local v2           #dtype:Lgnu/bytecode/ObjectType;
    .end local v6           #nargs:I
    .end local v7           #proc:Lgnu/mapping/Procedure;
    :cond_6
    invoke-virtual {p0, v1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x50

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 105
    new-instance v31, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": invoke-special not allowed at run time"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 108
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    .line 109
    .local v24, nargs:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 110
    const/16 v31, 0x0

    aget-object v6, p1, v31

    .line 111
    .local v6, arg0:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x56

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x2a

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v31

    move-object/from16 v9, v31

    .line 114
    .local v9, dtype:Lgnu/bytecode/ObjectType;
    :goto_0
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x4e

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 116
    const/16 v22, 0x0

    .line 117
    .local v22, mname:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 119
    move-object v0, v9

    check-cast v0, Lgnu/expr/TypeValue;

    move-object v10, v0

    invoke-interface {v10}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v8

    .line 120
    .local v8, constructor:Lgnu/mapping/Procedure;
    if-eqz v8, :cond_2

    .line 122
    add-int/lit8 v24, v24, -0x1

    .line 123
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    .line 124
    .local v30, xargs:[Ljava/lang/Object;
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move-object/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    move-object v0, v8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .line 231
    .end local v8           #constructor:Lgnu/mapping/Procedure;
    .end local v22           #mname:Ljava/lang/Object;
    .end local v30           #xargs:[Ljava/lang/Object;
    .end local p0
    :goto_1
    return-object v31

    .line 111
    .end local v9           #dtype:Lgnu/bytecode/ObjectType;
    .restart local p0
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ObjectType;

    move-object v9, v5

    goto :goto_0

    .line 128
    .restart local v9       #dtype:Lgnu/bytecode/ObjectType;
    .restart local v22       #mname:Ljava/lang/Object;
    :cond_2
    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/PairClassType;

    move/from16 v31, v0

    if-eqz v31, :cond_3

    .line 130
    move-object v0, v9

    check-cast v0, Lgnu/expr/PairClassType;

    move-object/from16 v26, v0

    .line 131
    .local v26, ptype:Lgnu/expr/PairClassType;
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object v9, v0

    .line 133
    .end local v26           #ptype:Lgnu/expr/PairClassType;
    :cond_3
    move-object v0, v9

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 135
    move-object v0, v9

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v10

    .line 137
    .local v10, elementType:Lgnu/bytecode/Type;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    sub-int v18, v31, v32

    .line 142
    .local v18, len:I
    const/16 v31, 0x2

    move/from16 v0, v18

    move/from16 v1, v31

    if-lt v0, v1, :cond_6

    const/16 v31, 0x1

    aget-object v31, p1, v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v31, v0

    if-eqz v31, :cond_6

    const-string v31, "length"

    const/16 v32, 0x1

    aget-object p0, p1, v32

    .end local p0
    check-cast p0, Lgnu/expr/Keyword;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v23

    .local v23, name:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    const-string v31, "size"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 146
    :cond_4
    const/16 v31, 0x2

    aget-object p0, p1, v31

    check-cast p0, Ljava/lang/Number;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v19

    .line 147
    .local v19, length:I
    const/4 v13, 0x3

    .line 148
    .local v13, i:I
    const/16 v20, 0x1

    .line 156
    .end local v23           #name:Ljava/lang/String;
    .local v20, lengthSpecified:Z
    :goto_2
    invoke-virtual {v10}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    .line 158
    .local v7, arr:Ljava/lang/Object;
    const/4 v15, 0x0

    .line 159
    .local v15, index:I
    :goto_3
    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    .line 161
    aget-object v5, p1, v13

    .line 162
    .local v5, arg:Ljava/lang/Object;
    if-eqz v20, :cond_5

    move-object v0, v5

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v31, v0

    if-eqz v31, :cond_5

    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 164
    check-cast v5, Lgnu/expr/Keyword;

    .end local v5           #arg:Ljava/lang/Object;
    invoke-virtual {v5}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v17

    .line 167
    .local v17, kname:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 173
    add-int/lit8 v13, v13, 0x1

    aget-object v5, p1, v13

    .line 175
    .end local v17           #kname:Ljava/lang/String;
    .restart local v5       #arg:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v10, v5}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object v0, v7

    move v1, v15

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 176
    add-int/lit8 v15, v15, 0x1

    .line 159
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 152
    .end local v5           #arg:Ljava/lang/Object;
    .end local v7           #arr:Ljava/lang/Object;
    .end local v13           #i:I
    .end local v15           #index:I
    .end local v19           #length:I
    .end local v20           #lengthSpecified:Z
    :cond_6
    move/from16 v19, v18

    .line 153
    .restart local v19       #length:I
    const/4 v13, 0x1

    .line 154
    .restart local v13       #i:I
    const/16 v20, 0x0

    .restart local v20       #lengthSpecified:Z
    goto :goto_2

    .line 169
    .restart local v7       #arr:Ljava/lang/Object;
    .restart local v15       #index:I
    .restart local v17       #kname:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 171
    .local v12, ex:Ljava/lang/Throwable;
    new-instance v31, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "non-integer keyword \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\' in array constructor"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .end local v12           #ex:Ljava/lang/Throwable;
    .end local v17           #kname:Ljava/lang/String;
    :cond_7
    move-object/from16 v31, v7

    .line 178
    goto/16 :goto_1

    .line 183
    .end local v7           #arr:Ljava/lang/Object;
    .end local v10           #elementType:Lgnu/bytecode/Type;
    .end local v13           #i:I
    .end local v15           #index:I
    .end local v18           #len:I
    .end local v19           #length:I
    .end local v20           #lengthSpecified:Z
    .end local v22           #mname:Ljava/lang/Object;
    .restart local p0
    :cond_8
    const/16 v31, 0x1

    aget-object v22, p1, v31

    .line 185
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v25

    .line 186
    .local v25, proc:Lgnu/mapping/MethodProc;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x4e

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x53

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x73

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    :cond_a
    const/16 v31, 0x2

    :goto_4
    sub-int v31, v24, v31

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 189
    .local v21, margs:[Ljava/lang/Object;
    const/4 v13, 0x0

    .line 190
    .restart local v13       #i:I
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x56

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v31, v0

    const/16 v32, 0x2a

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 191
    :cond_b
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .local v14, i:I
    const/16 v31, 0x0

    aget-object v31, p1, v31

    aput-object v31, v21, v13

    move v13, v14

    .line 192
    .end local v14           #i:I
    .restart local v13       #i:I
    :cond_c
    const/16 v31, 0x2

    const/16 v32, 0x2

    sub-int v32, v24, v32

    move-object/from16 v0, p1

    move/from16 v1, v31

    move-object/from16 v2, v21

    move v3, v13

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    goto/16 :goto_1

    .line 188
    .end local v13           #i:I
    .end local v21           #margs:[Ljava/lang/Object;
    :cond_d
    const/16 v31, 0x1

    goto :goto_4

    .line 197
    :cond_e
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v28

    .line 198
    .local v28, vars:Lgnu/mapping/CallContext;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v11

    .line 199
    .local v11, err:I
    if-nez v11, :cond_f

    .line 200
    invoke-virtual/range {v28 .. v28}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v31

    goto/16 :goto_1

    .line 202
    :cond_f
    and-int/lit8 v31, v24, 0x1

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 205
    const/4 v13, 0x1

    .line 207
    .restart local v13       #i:I
    :goto_5
    move v0, v13

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 210
    const/16 v31, 0x0

    aget-object v31, p1, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/mapping/MethodProc;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 211
    .local v27, result:Ljava/lang/Object;
    const/4 v13, 0x1

    :goto_6
    move v0, v13

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    .line 213
    aget-object v16, p1, v13

    check-cast v16, Lgnu/expr/Keyword;

    .line 214
    .local v16, key:Lgnu/expr/Keyword;
    add-int/lit8 v31, v13, 0x1

    aget-object v5, p1, v31

    .line 215
    .restart local v5       #arg:Ljava/lang/Object;
    const/16 v31, 0x0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v32

    move/from16 v0, v31

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v13, v13, 0x2

    goto :goto_6

    .end local v5           #arg:Ljava/lang/Object;
    .end local v16           #key:Lgnu/expr/Keyword;
    :cond_10
    move-object/from16 v31, v27

    .line 217
    goto/16 :goto_1

    .line 219
    .end local v27           #result:Ljava/lang/Object;
    :cond_11
    aget-object v31, p1, v13

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v31, v0

    if-nez v31, :cond_13

    .line 223
    .end local v13           #i:I
    :cond_12
    move-object v0, v9

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v10, v0

    const-string v31, "valueOf"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v33, v0

    move-object v0, v10

    move-object/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v29

    .line 225
    .local v29, vproc:Lgnu/mapping/MethodProc;
    if-eqz v29, :cond_14

    .line 227
    const/16 v31, 0x1

    sub-int v31, v24, v31

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 228
    .restart local v21       #margs:[Ljava/lang/Object;
    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x1

    sub-int v33, v24, v33

    move-object/from16 v0, p1

    move/from16 v1, v31

    move-object/from16 v2, v21

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v11

    .line 230
    if-nez v11, :cond_14

    .line 231
    invoke-virtual/range {v28 .. v28}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v31

    goto/16 :goto_1

    .line 205
    .end local v21           #margs:[Ljava/lang/Object;
    .end local v29           #vproc:Lgnu/mapping/MethodProc;
    .restart local v13       #i:I
    :cond_13
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_5

    .line 234
    .end local v13           #i:I
    .restart local v29       #vproc:Lgnu/mapping/MethodProc;
    :cond_14
    move v0, v11

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31
.end method

.method protected getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)[Lgnu/expr/PrimProcedure;
    .locals 3
    .parameter "ctype"
    .parameter "mname"
    .parameter "caller"

    .prologue
    const/16 v2, 0x56

    const/16 v1, 0x50

    .line 272
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v1, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {p1, p2, v0, p3, v1}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v0

    return-object v0

    :cond_0
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 56
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 372
    invoke-virtual/range {p1 .. p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v25

    .line 374
    .local v25, comp:Lgnu/expr/Compilation;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    .line 375
    .local v7, args:[Lgnu/expr/Expression;
    move-object v0, v7

    array-length v0, v0

    move/from16 v43, v0

    .line 376
    .local v43, nargs:I
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lgnu/expr/Compilation;->mustCompile:Z

    move v11, v0

    if-eqz v11, :cond_1

    if-eqz v43, :cond_1

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x56

    if-eq v11, v12, :cond_0

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x2a

    if-ne v11, v12, :cond_2

    :cond_0
    const/4 v11, 0x1

    move/from16 v0, v43

    move v1, v11

    if-ne v0, v1, :cond_2

    :cond_1
    move-object/from16 v11, p1

    .line 648
    .end local p0
    :goto_0
    return-object v11

    .line 382
    .restart local p0
    :cond_2
    const/4 v11, 0x0

    aget-object v20, v7, v11

    .line 383
    .local v20, arg0:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x56

    if-eq v11, v12, :cond_3

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x2a

    if-ne v11, v12, :cond_8

    :cond_3
    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object/from16 v54, v11

    .line 384
    .local v54, type0:Lgnu/bytecode/Type;
    :goto_1
    move-object/from16 v0, v54

    instance-of v0, v0, Lgnu/expr/PairClassType;

    move v11, v0

    if-eqz v11, :cond_9

    .line 385
    check-cast v54, Lgnu/expr/PairClassType;

    .end local v54           #type0:Lgnu/bytecode/Type;
    move-object/from16 v0, v54

    iget-object v0, v0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v53, v0

    .line 390
    .local v53, type:Lgnu/bytecode/ObjectType;
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/Invoke;->getMethodName([Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v42

    .line 393
    .local v42, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x56

    if-eq v11, v12, :cond_4

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x2a

    if-ne v11, v12, :cond_b

    .line 395
    :cond_4
    const/4 v11, 0x1

    sub-int v8, v43, v11

    .line 396
    .local v8, margsLength:I
    const/4 v9, 0x2

    .line 397
    .local v9, argsStartIndex:I
    const/4 v10, 0x0

    .line 420
    .local v10, objIndex:I
    :goto_3
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x4e

    if-ne v11, v12, :cond_14

    move-object/from16 v0, v53

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move v11, v0

    if-eqz v11, :cond_14

    .line 422
    move-object/from16 v0, v53

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object/from16 v22, v0

    .line 423
    .local v22, atype:Lgnu/bytecode/ArrayType;
    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v30

    .line 424
    .local v30, elementType:Lgnu/bytecode/Type;
    const/16 v50, 0x0

    .line 425
    .local v50, sizeArg:Lgnu/expr/Expression;
    const/16 v37, 0x0

    .line 426
    .local v37, lengthSpecified:Z
    array-length v11, v7

    const/4 v12, 0x3

    if-lt v11, v12, :cond_6

    const/4 v11, 0x1

    aget-object v11, v7, v11

    instance-of v11, v11, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_6

    .line 428
    const/4 v11, 0x1

    aget-object p0, v7, v11

    .end local p0
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    .line 429
    .local v21, arg1:Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v11, v0

    if-eqz v11, :cond_6

    const-string v11, "length"

    check-cast v21, Lgnu/expr/Keyword;

    .end local v21           #arg1:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v42

    move-object v0, v11

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "size"

    move-object v0, v11

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 433
    :cond_5
    const/4 v11, 0x2

    aget-object v50, v7, v11

    .line 434
    const/16 v37, 0x1

    .line 437
    :cond_6
    if-nez v50, :cond_7

    .line 438
    new-instance v11, Ljava/lang/Integer;

    array-length v12, v7

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v11}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v50

    .line 439
    :cond_7
    new-instance v18, Lgnu/expr/ApplyExp;

    new-instance v11, Lgnu/kawa/reflect/ArrayNew;

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/ArrayNew;-><init>(Lgnu/bytecode/Type;)V

    const/4 v12, 0x1

    new-array v12, v12, [Lgnu/expr/Expression;

    const/4 v13, 0x0

    aput-object v50, v12, v13

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 441
    .local v18, alloc:Lgnu/expr/Expression;
    if-eqz v37, :cond_10

    array-length v11, v7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_10

    move-object/from16 v11, v18

    .line 442
    goto/16 :goto_0

    .line 383
    .end local v8           #margsLength:I
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    .end local v18           #alloc:Lgnu/expr/Expression;
    .end local v22           #atype:Lgnu/bytecode/ArrayType;
    .end local v30           #elementType:Lgnu/bytecode/Type;
    .end local v37           #lengthSpecified:Z
    .end local v42           #name:Ljava/lang/String;
    .end local v50           #sizeArg:Lgnu/expr/Expression;
    .end local v53           #type:Lgnu/bytecode/ObjectType;
    .restart local p0
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v11

    move-object/from16 v54, v11

    goto/16 :goto_1

    .line 386
    .restart local v54       #type0:Lgnu/bytecode/Type;
    :cond_9
    move-object/from16 v0, v54

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move v11, v0

    if-eqz v11, :cond_a

    .line 387
    move-object/from16 v0, v54

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object/from16 v53, v0

    .restart local v53       #type:Lgnu/bytecode/ObjectType;
    goto/16 :goto_2

    .line 389
    .end local v53           #type:Lgnu/bytecode/ObjectType;
    :cond_a
    const/16 v53, 0x0

    .restart local v53       #type:Lgnu/bytecode/ObjectType;
    goto/16 :goto_2

    .line 399
    .end local v54           #type0:Lgnu/bytecode/Type;
    .restart local v42       #name:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x4e

    if-ne v11, v12, :cond_c

    .line 401
    move/from16 v8, v43

    .line 402
    .restart local v8       #margsLength:I
    const/4 v9, 0x0

    .line 403
    .restart local v9       #argsStartIndex:I
    const/4 v10, -0x1

    .restart local v10       #objIndex:I
    goto/16 :goto_3

    .line 405
    .end local v8           #margsLength:I
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    :cond_c
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x53

    if-eq v11, v12, :cond_d

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x73

    if-ne v11, v12, :cond_e

    .line 407
    :cond_d
    const/4 v11, 0x2

    sub-int v8, v43, v11

    .line 408
    .restart local v8       #margsLength:I
    const/4 v9, 0x2

    .line 409
    .restart local v9       #argsStartIndex:I
    const/4 v10, -0x1

    .restart local v10       #objIndex:I
    goto/16 :goto_3

    .line 411
    .end local v8           #margsLength:I
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    :cond_e
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x50

    if-ne v11, v12, :cond_f

    .line 413
    const/4 v11, 0x2

    sub-int v8, v43, v11

    .line 414
    .restart local v8       #margsLength:I
    const/4 v9, 0x3

    .line 415
    .restart local v9       #argsStartIndex:I
    const/4 v10, 0x1

    .restart local v10       #objIndex:I
    goto/16 :goto_3

    .end local v8           #margsLength:I
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    :cond_f
    move-object/from16 v11, p1

    .line 418
    goto/16 :goto_0

    .line 443
    .end local p0
    .restart local v8       #margsLength:I
    .restart local v9       #argsStartIndex:I
    .restart local v10       #objIndex:I
    .restart local v18       #alloc:Lgnu/expr/Expression;
    .restart local v22       #atype:Lgnu/bytecode/ArrayType;
    .restart local v30       #elementType:Lgnu/bytecode/Type;
    .restart local v37       #lengthSpecified:Z
    .restart local v50       #sizeArg:Lgnu/expr/Expression;
    :cond_10
    new-instance v38, Lgnu/expr/LetExp;

    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/expr/Expression;

    const/4 v12, 0x0

    aput-object v18, v11, v12

    move-object/from16 v0, v38

    move-object v1, v11

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 444
    .local v38, let:Lgnu/expr/LetExp;
    const/16 p0, 0x0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v17

    .line 445
    .local v17, adecl:Lgnu/expr/Declaration;
    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 446
    new-instance v23, Lgnu/expr/BeginExp;

    invoke-direct/range {v23 .. v23}, Lgnu/expr/BeginExp;-><init>()V

    .line 447
    .local v23, begin:Lgnu/expr/BeginExp;
    const/16 v34, 0x0

    .line 448
    .local v34, index:I
    if-eqz v37, :cond_12

    const/4 v11, 0x3

    move/from16 v33, v11

    .end local v20           #arg0:Lgnu/expr/Expression;
    .local v33, i:I
    :goto_4
    array-length v11, v7

    move/from16 v0, v33

    move v1, v11

    if-ge v0, v1, :cond_13

    .line 450
    aget-object v19, v7, v33

    .line 451
    .local v19, arg:Lgnu/expr/Expression;
    if-eqz v37, :cond_11

    add-int/lit8 v11, v33, 0x1

    array-length v12, v7

    if-ge v11, v12, :cond_11

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v11, v0

    if-eqz v11, :cond_11

    .line 453
    move-object/from16 v0, v19

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v35

    .line 454
    .local v35, key:Ljava/lang/Object;
    move-object/from16 v0, v35

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v11, v0

    if-eqz v11, :cond_11

    .line 456
    check-cast v35, Lgnu/expr/Keyword;

    .end local v35           #key:Ljava/lang/Object;
    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v36

    .line 459
    .local v36, kname:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 460
    add-int/lit8 v33, v33, 0x1

    aget-object v19, v7, v33
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v36           #kname:Ljava/lang/String;
    :cond_11
    new-instance v11, Lgnu/expr/ApplyExp;

    new-instance v12, Lgnu/kawa/reflect/ArraySet;

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    const/4 v13, 0x3

    new-array v13, v13, [Lgnu/expr/Expression;

    const/4 v14, 0x0

    new-instance v15, Lgnu/expr/ReferenceExp;

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Ljava/lang/Integer;

    move-object v0, v15

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v15}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v19, v13, v14

    invoke-direct {v11, v12, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 474
    add-int/lit8 v34, v34, 0x1

    .line 448
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .end local v19           #arg:Lgnu/expr/Expression;
    .end local v33           #i:I
    .restart local v20       #arg0:Lgnu/expr/Expression;
    :cond_12
    const/4 v11, 0x1

    move/from16 v33, v11

    goto :goto_4

    .line 462
    .end local v20           #arg0:Lgnu/expr/Expression;
    .restart local v19       #arg:Lgnu/expr/Expression;
    .restart local v33       #i:I
    .restart local v36       #kname:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object/from16 v32, v11

    .line 464
    .local v32, ex:Ljava/lang/Throwable;
    const/16 v11, 0x65

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "non-integer keyword \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' in array constructor"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v25

    move v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object/from16 v11, p1

    .line 465
    goto/16 :goto_0

    .line 476
    .end local v19           #arg:Lgnu/expr/Expression;
    .end local v32           #ex:Ljava/lang/Throwable;
    .end local v36           #kname:Ljava/lang/String;
    :cond_13
    new-instance v11, Lgnu/expr/ReferenceExp;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 477
    move-object/from16 v0, v23

    move-object/from16 v1, v38

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object/from16 v11, v38

    .line 478
    goto/16 :goto_0

    .line 480
    .end local v17           #adecl:Lgnu/expr/Declaration;
    .end local v18           #alloc:Lgnu/expr/Expression;
    .end local v22           #atype:Lgnu/bytecode/ArrayType;
    .end local v23           #begin:Lgnu/expr/BeginExp;
    .end local v30           #elementType:Lgnu/bytecode/Type;
    .end local v33           #i:I
    .end local v34           #index:I
    .end local v37           #lengthSpecified:Z
    .end local v38           #let:Lgnu/expr/LetExp;
    .end local v50           #sizeArg:Lgnu/expr/Expression;
    .restart local v20       #arg0:Lgnu/expr/Expression;
    .restart local p0
    :cond_14
    if-eqz v53, :cond_31

    if-eqz v42, :cond_31

    .line 482
    move-object/from16 v0, v53

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move v11, v0

    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x4e

    if-ne v11, v12, :cond_15

    .line 484
    move-object/from16 v0, v53

    check-cast v0, Lgnu/expr/TypeValue;

    move-object/from16 v54, v0

    invoke-interface/range {v54 .. v54}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v26

    .line 485
    .local v26, constructor:Lgnu/mapping/Procedure;
    if-eqz v26, :cond_15

    .line 487
    const/4 v11, 0x1

    sub-int v11, v43, v11

    move v0, v11

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v55, v0

    .line 488
    .local v55, xargs:[Lgnu/expr/Expression;
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    sub-int v13, v43, v13

    move-object v0, v7

    move v1, v11

    move-object/from16 v2, v55

    move v3, v12

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    new-instance v11, Lgnu/expr/ApplyExp;

    move-object v0, v11

    move-object/from16 v1, v26

    move-object/from16 v2, v55

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v11

    goto/16 :goto_0

    .line 495
    .end local v26           #constructor:Lgnu/mapping/Procedure;
    .end local v55           #xargs:[Lgnu/expr/Expression;
    :cond_15
    if-nez v25, :cond_17

    const/4 v11, 0x0

    move-object/from16 v24, v11

    .line 498
    .local v24, caller:Lgnu/bytecode/ClassType;
    :goto_5
    move-object/from16 v6, v53

    .line 501
    .local v6, ctype:Lgnu/bytecode/ObjectType;
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v42

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/reflect/Invoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)[Lgnu/expr/PrimProcedure;

    move-result-object v5

    .line 502
    .local v5, methods:[Lgnu/expr/PrimProcedure;
    invoke-static/range {v5 .. v10}, Lgnu/kawa/reflect/Invoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v45

    .line 504
    .local v45, num:J
    const/16 v11, 0x20

    shr-long v11, v45, v11

    move-wide v0, v11

    long-to-int v0, v0

    move/from16 v47, v0

    .line 505
    .local v47, okCount:I
    move-wide/from16 v0, v45

    long-to-int v0, v0

    move/from16 v40, v0

    .line 512
    .local v40, maybeCount:I
    const/16 v34, -0x1

    .line 514
    .restart local v34       #index:I
    add-int v11, v47, v40

    if-nez v11, :cond_1d

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x4e

    if-ne v11, v12, :cond_1d

    const/4 v11, 0x1

    new-array v11, v11, [Lgnu/bytecode/Type;

    const/4 v12, 0x0

    sget-object v13, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v11

    const/16 v13, 0x20

    shr-long/2addr v11, v13

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_1d

    const/4 v11, 0x1

    move-object/from16 v0, v53

    move-object v1, v7

    move v2, v11

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/Invoke;->checkKeywords(Lgnu/bytecode/Type;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;

    move-result-object v51

    .local v51, slots:[Ljava/lang/Object;
    if-eqz v51, :cond_1d

    .line 521
    const/16 v31, 0x0

    .line 522
    .local v31, errbuf:Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    .restart local v33       #i:I
    :goto_6
    move-object/from16 v0, v51

    array-length v0, v0

    move v11, v0

    move/from16 v0, v33

    move v1, v11

    if-ge v0, v1, :cond_1a

    .line 524
    aget-object v11, v51, v33

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_16

    .line 526
    if-nez v31, :cond_19

    .line 528
    new-instance v31, Ljava/lang/StringBuffer;

    .end local v31           #errbuf:Ljava/lang/StringBuffer;
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 529
    .restart local v31       #errbuf:Ljava/lang/StringBuffer;
    const-string v11, "no field or setter "

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    :goto_7
    const/16 v11, 0x60

    move-object/from16 v0, v31

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 534
    aget-object v11, v51, v33

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 535
    const/16 v11, 0x27

    move-object/from16 v0, v31

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 522
    :cond_16
    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    .line 495
    .end local v5           #methods:[Lgnu/expr/PrimProcedure;
    .end local v6           #ctype:Lgnu/bytecode/ObjectType;
    .end local v24           #caller:Lgnu/bytecode/ClassType;
    .end local v31           #errbuf:Ljava/lang/StringBuffer;
    .end local v33           #i:I
    .end local v34           #index:I
    .end local v40           #maybeCount:I
    .end local v45           #num:J
    .end local v47           #okCount:I
    .end local v51           #slots:[Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v11, v0

    if-eqz v11, :cond_18

    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v11, v0

    move-object/from16 v24, v11

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v11, v0

    move-object/from16 v24, v11

    goto/16 :goto_5

    .line 507
    .restart local v6       #ctype:Lgnu/bytecode/ObjectType;
    .restart local v24       #caller:Lgnu/bytecode/ClassType;
    :catch_1
    move-exception v11

    move-object/from16 v32, v11

    .line 509
    .local v32, ex:Ljava/lang/Exception;
    const/16 v11, 0x77

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v53 .. v53}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v25

    move v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object/from16 v11, p1

    .line 510
    goto/16 :goto_0

    .line 532
    .end local v32           #ex:Ljava/lang/Exception;
    .restart local v5       #methods:[Lgnu/expr/PrimProcedure;
    .restart local v31       #errbuf:Ljava/lang/StringBuffer;
    .restart local v33       #i:I
    .restart local v34       #index:I
    .restart local v40       #maybeCount:I
    .restart local v45       #num:J
    .restart local v47       #okCount:I
    .restart local v51       #slots:[Ljava/lang/Object;
    :cond_19
    const-string v11, ", "

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 538
    :cond_1a
    if-eqz v31, :cond_1b

    .line 540
    const-string v11, " in class "

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    invoke-virtual/range {v53 .. v53}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const/16 v11, 0x77

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v25

    move v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object/from16 v11, p1

    .line 543
    goto/16 :goto_0

    .line 547
    :cond_1b
    new-instance v29, Lgnu/expr/ApplyExp;

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x1

    new-array v12, v12, [Lgnu/expr/Expression;

    const/4 v13, 0x0

    aput-object v20, v12, v13

    move-object/from16 v0, v29

    move-object v1, v11

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 549
    .local v29, e:Lgnu/expr/ApplyExp;
    const/16 v33, 0x0

    :goto_8
    move-object/from16 v0, v51

    array-length v0, v0

    move v11, v0

    move/from16 v0, v33

    move v1, v11

    if-ge v0, v1, :cond_1c

    .line 551
    const/4 v11, 0x3

    move v0, v11

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v48, v0

    const/4 v11, 0x0

    aput-object v29, v48, v11

    const/4 v11, 0x1

    new-instance v12, Lgnu/expr/QuoteExp;

    aget-object v13, v51, v33

    invoke-direct {v12, v13}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v48, v11

    const/4 v11, 0x2

    mul-int/lit8 v12, v33, 0x2

    add-int/lit8 v12, v12, 0x2

    aget-object v12, v7, v12

    aput-object v12, v48, v11

    .line 553
    .local v48, sargs:[Lgnu/expr/Expression;
    new-instance v29, Lgnu/expr/ApplyExp;

    .end local v29           #e:Lgnu/expr/ApplyExp;
    sget-object v11, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    move-object/from16 v0, v29

    move-object v1, v11

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 549
    .restart local v29       #e:Lgnu/expr/ApplyExp;
    add-int/lit8 v33, v33, 0x1

    goto :goto_8

    .line 555
    .end local v48           #sargs:[Lgnu/expr/Expression;
    :cond_1c
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v11

    goto/16 :goto_0

    .line 558
    .end local v29           #e:Lgnu/expr/ApplyExp;
    .end local v31           #errbuf:Ljava/lang/StringBuffer;
    .end local v33           #i:I
    .end local v51           #slots:[Ljava/lang/Object;
    :cond_1d
    move-object v0, v5

    array-length v0, v0

    move/from16 v44, v0

    .line 559
    .local v44, nmethods:I
    add-int v11, v47, v40

    if-nez v11, :cond_1e

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x4e

    if-ne v11, v12, :cond_1e

    .line 561
    sget-object v11, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    const-string v12, "valueOf"

    move-object v0, v11

    move-object v1, v6

    move-object v2, v12

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/reflect/Invoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)[Lgnu/expr/PrimProcedure;

    move-result-object v5

    .line 562
    const/4 v9, 0x1

    .line 563
    const/4 v11, 0x1

    sub-int v8, v43, v11

    .line 564
    const/16 v16, -0x1

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move v14, v8

    move v15, v9

    invoke-static/range {v11 .. v16}, Lgnu/kawa/reflect/Invoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v45

    .line 566
    const/16 v11, 0x20

    shr-long v11, v45, v11

    move-wide v0, v11

    long-to-int v0, v0

    move/from16 v47, v0

    .line 567
    move-wide/from16 v0, v45

    long-to-int v0, v0

    move/from16 v40, v0

    .line 569
    :cond_1e
    add-int v11, v47, v40

    if-nez v11, :cond_25

    .line 571
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x50

    if-eq v11, v12, :cond_1f

    const-string v11, "warn-invoke-unknown-method"

    const/4 v12, 0x1

    move-object/from16 v0, v25

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 574
    :cond_1f
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x4e

    if-ne v11, v12, :cond_20

    .line 575
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v11

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/valueOf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 576
    :cond_20
    array-length v11, v5

    add-int v11, v11, v44

    if-nez v11, :cond_23

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "no accessible method \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v53 .. v53}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v41, v11

    .line 581
    .local v41, message:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x50

    if-ne v11, v12, :cond_24

    const/16 v11, 0x65

    :goto_a
    move-object/from16 v0, v25

    move v1, v11

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 635
    .end local v41           #message:Ljava/lang/String;
    :cond_21
    :goto_b
    if-ltz v34, :cond_31

    .line 637
    move v0, v8

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v39, v0

    .line 638
    .local v39, margs:[Lgnu/expr/Expression;
    const/16 v27, 0x0

    .line 639
    .local v27, dst:I
    if-ltz v10, :cond_22

    .line 640
    add-int/lit8 v28, v27, 0x1

    .end local v27           #dst:I
    .local v28, dst:I
    aget-object v11, v7, v10

    aput-object v11, v39, v27

    move/from16 v27, v28

    .line 641
    .end local v28           #dst:I
    .restart local v27       #dst:I
    :cond_22
    move/from16 v52, v9

    .line 642
    .local v52, src:I
    :goto_c
    array-length v11, v7

    move/from16 v0, v52

    move v1, v11

    if-ge v0, v1, :cond_30

    move-object/from16 v0, v39

    array-length v0, v0

    move v11, v0

    move/from16 v0, v27

    move v1, v11

    if-ge v0, v1, :cond_30

    .line 644
    aget-object v11, v7, v52

    aput-object v11, v39, v27

    .line 643
    add-int/lit8 v52, v52, 0x1

    add-int/lit8 v27, v27, 0x1

    goto :goto_c

    .line 576
    .end local v27           #dst:I
    .end local v39           #margs:[Lgnu/expr/Expression;
    .end local v52           #src:I
    :cond_23
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "no possibly applicable method \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v53 .. v53}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v41, v11

    goto :goto_9

    .line 581
    .restart local v41       #message:Ljava/lang/String;
    :cond_24
    const/16 v11, 0x77

    goto :goto_a

    .line 584
    .end local v41           #message:Ljava/lang/String;
    :cond_25
    const/4 v11, 0x1

    move/from16 v0, v47

    move v1, v11

    if-eq v0, v1, :cond_26

    if-nez v47, :cond_27

    const/4 v11, 0x1

    move/from16 v0, v40

    move v1, v11

    if-ne v0, v1, :cond_27

    .line 585
    :cond_26
    const/16 v34, 0x0

    goto :goto_b

    .line 586
    :cond_27
    if-lez v47, :cond_2d

    .line 588
    move-object v0, v5

    move/from16 v1, v47

    invoke-static {v0, v1}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v34

    .line 589
    if-gez v34, :cond_28

    .line 591
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x53

    if-ne v11, v12, :cond_28

    .line 596
    const/16 v33, 0x0

    .restart local v33       #i:I
    :goto_d
    move/from16 v0, v33

    move/from16 v1, v47

    if-ge v0, v1, :cond_28

    .line 598
    aget-object v11, v5, v33

    invoke-virtual {v11}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 600
    if-ltz v34, :cond_2a

    .line 602
    const/16 v34, -0x1

    .line 611
    .end local v33           #i:I
    :cond_28
    if-gez v34, :cond_21

    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x50

    if-eq v11, v12, :cond_29

    const-string v11, "warn-invoke-unknown-method"

    const/4 v12, 0x1

    move-object/from16 v0, v25

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 615
    :cond_29
    new-instance v49, Ljava/lang/StringBuffer;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuffer;-><init>()V

    .line 616
    .local v49, sbuf:Ljava/lang/StringBuffer;
    const-string v11, "more than one definitely applicable method `"

    move-object/from16 v0, v49

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    move-object/from16 v0, v49

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    const-string v11, "\' in "

    move-object/from16 v0, v49

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    invoke-virtual/range {v53 .. v53}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v49

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v47

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/reflect/Invoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 621
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x50

    if-ne v11, v12, :cond_2c

    const/16 v11, 0x65

    :goto_e
    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v25

    move v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 606
    .end local v49           #sbuf:Ljava/lang/StringBuffer;
    .restart local v33       #i:I
    :cond_2a
    move/from16 v34, v33

    .line 596
    :cond_2b
    add-int/lit8 v33, v33, 0x1

    goto :goto_d

    .line 621
    .end local v33           #i:I
    .restart local v49       #sbuf:Ljava/lang/StringBuffer;
    :cond_2c
    const/16 v11, 0x77

    goto :goto_e

    .line 624
    .end local v49           #sbuf:Ljava/lang/StringBuffer;
    :cond_2d
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x50

    if-eq v11, v12, :cond_2e

    const-string v11, "warn-invoke-unknown-method"

    const/4 v12, 0x1

    move-object/from16 v0, v25

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 627
    :cond_2e
    new-instance v49, Ljava/lang/StringBuffer;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuffer;-><init>()V

    .line 628
    .restart local v49       #sbuf:Ljava/lang/StringBuffer;
    const-string v11, "more than one possibly applicable method \'"

    move-object/from16 v0, v49

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    move-object/from16 v0, v49

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    const-string v11, "\' in "

    move-object/from16 v0, v49

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    invoke-virtual/range {v53 .. v53}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v49

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v40

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/reflect/Invoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 633
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move v11, v0

    const/16 v12, 0x50

    if-ne v11, v12, :cond_2f

    const/16 v11, 0x65

    :goto_f
    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v25

    move v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    :cond_2f
    const/16 v11, 0x77

    goto :goto_f

    .line 645
    .end local v49           #sbuf:Ljava/lang/StringBuffer;
    .restart local v27       #dst:I
    .restart local v39       #margs:[Lgnu/expr/Expression;
    .restart local v52       #src:I
    :cond_30
    new-instance v11, Lgnu/expr/ApplyExp;

    aget-object v12, v5, v34

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v11

    goto/16 :goto_0

    .end local v5           #methods:[Lgnu/expr/PrimProcedure;
    .end local v6           #ctype:Lgnu/bytecode/ObjectType;
    .end local v24           #caller:Lgnu/bytecode/ClassType;
    .end local v27           #dst:I
    .end local v34           #index:I
    .end local v39           #margs:[Lgnu/expr/Expression;
    .end local v40           #maybeCount:I
    .end local v44           #nmethods:I
    .end local v45           #num:J
    .end local v47           #okCount:I
    .end local v52           #src:I
    :cond_31
    move-object/from16 v11, p1

    .line 648
    goto/16 :goto_0
.end method

.method protected lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .locals 6
    .parameter "dtype"
    .parameter "name"

    .prologue
    const/16 v5, 0x56

    const/16 v4, 0x50

    .line 246
    iget-char v2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    .line 247
    const-string v0, "<init>"

    .line 258
    .end local p2
    .local v0, mname:Ljava/lang/String;
    :goto_0
    iget-char v2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-ne v2, v4, :cond_4

    move v2, v4

    :goto_1
    iget-object v3, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {p1, v0, v2, v3}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v1

    .line 263
    .local v1, proc:Lgnu/mapping/MethodProc;
    if-nez v1, :cond_7

    .line 264
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": no method named `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    .end local v0           #mname:Ljava/lang/String;
    .end local v1           #proc:Lgnu/mapping/MethodProc;
    .restart local p2
    :cond_0
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p2, Lgnu/lists/FString;

    if-eqz v2, :cond_2

    .line 251
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .end local p2
    .restart local v0       #mname:Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    .end local v0           #mname:Ljava/lang/String;
    .restart local p2
    :cond_2
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_3

    .line 253
    check-cast p2, Lgnu/mapping/Symbol;

    .end local p2
    invoke-virtual {p2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mname:Ljava/lang/String;
    goto :goto_2

    .line 255
    .end local v0           #mname:Ljava/lang/String;
    .restart local p2
    :cond_3
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v2

    .line 258
    .end local p2
    .restart local v0       #mname:Ljava/lang/String;
    :cond_4
    iget-char v2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_5

    iget-char v2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-ne v2, v5, :cond_6

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 266
    .restart local v1       #proc:Lgnu/mapping/MethodProc;
    :cond_7
    return-object v1
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 240
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/lit16 v0, v0, -0x1000

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
