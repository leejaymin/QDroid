.class public Lgnu/kawa/functions/GetNamedInstancePart;
.super Lgnu/mapping/ProcedureN;
.source "GetNamedInstancePart.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/CanInline;
.implements Lgnu/mapping/HasSetter;


# instance fields
.field isField:Z

.field pname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/GetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static makeExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6
    .parameter "member"

    .prologue
    .line 28
    instance-of v3, p0, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 31
    .local v2, val:Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/SimpleSymbol;

    if-eqz v3, :cond_0

    .line 32
    new-instance v3, Lgnu/kawa/functions/GetNamedInstancePart;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/kawa/functions/GetNamedInstancePart;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    .line 37
    .end local v2           #val:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 34
    :cond_0
    const/4 v3, 0x2

    new-array v1, v3, [Lgnu/expr/Expression;

    .line 35
    .local v1, args:[Lgnu/expr/Expression;
    const/4 v3, 0x0

    new-instance v4, Lgnu/expr/QuoteExp;

    const-string v5, "gnu.kawa.functions.GetNamedInstancePart"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v1, v3

    .line 36
    const/4 v3, 0x1

    aput-object p0, v1, v3

    .line 37
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v3, v4, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    array-length v1, p1

    invoke-static {p0, v1}, Lgnu/kawa/functions/GetNamedInstancePart;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 94
    iget-boolean v1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v1, :cond_0

    .line 95
    aget-object v1, p1, v2

    iget-object v2, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-static {v1, v2}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 98
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 99
    .local v0, xargs:[Ljava/lang/Object;
    aget-object v1, p1, v2

    aput-object v1, v0, v2

    .line 100
    iget-object v1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 101
    const/4 v1, 0x2

    array-length v2, p1

    sub-int/2addr v2, v3

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    sget-object v1, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v1, v0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no setter for instance method call"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Lgnu/kawa/functions/SetNamedInstancePart;

    iget-object v1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgnu/kawa/functions/SetNamedInstancePart;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 8
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 70
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 73
    .local v0, args:[Lgnu/expr/Expression;
    iget-boolean v4, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v4, :cond_0

    .line 75
    new-array v3, v7, [Lgnu/expr/Expression;

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    new-instance v4, Lgnu/expr/QuoteExp;

    iget-object v5, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v6

    .line 76
    .local v3, xargs:[Lgnu/expr/Expression;
    sget-object v2, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 87
    .local v2, proc:Lgnu/mapping/Procedure;
    :goto_0
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v4}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 80
    .end local v2           #proc:Lgnu/mapping/Procedure;
    .end local v3           #xargs:[Lgnu/expr/Expression;
    :cond_0
    array-length v1, v0

    .line 81
    .local v1, nargs:I
    add-int/lit8 v4, v1, 0x1

    new-array v3, v4, [Lgnu/expr/Expression;

    .line 82
    .restart local v3       #xargs:[Lgnu/expr/Expression;
    aget-object v4, v0, v5

    aput-object v4, v3, v5

    .line 83
    new-instance v4, Lgnu/expr/QuoteExp;

    iget-object v5, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v6

    .line 84
    sub-int v4, v1, v6

    invoke-static {v0, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    sget-object v2, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    .restart local v2       #proc:Lgnu/mapping/Procedure;
    goto :goto_0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1001

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xfff

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/kawa/functions/GetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setPartName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get-instance-part:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/functions/GetNamedInstancePart;->setName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 54
    iput-boolean v2, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean v3, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    .line 60
    iput-object p1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 116
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    goto :goto_0
.end method
