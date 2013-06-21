.class public abstract Lgnu/kawa/xml/TreeScanner;
.super Lgnu/mapping/MethodProc;
.source "TreeScanner.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/CanInline;


# instance fields
.field public type:Lgnu/lists/NodePredicate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v3, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v3, Lgnu/lists/PositionConsumer;

    .line 34
    .local v3, out:Lgnu/lists/PositionConsumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    .line 35
    .local v2, node:Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 39
    :try_start_0
    move-object v0, v2

    check-cast v0, Lgnu/kawa/xml/KNode;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v4, spos:Lgnu/kawa/xml/KNode;
    iget-object v5, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v4}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v6

    invoke-virtual {p0, v5, v6, v3}, Lgnu/kawa/xml/TreeScanner;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 46
    return-void

    .line 41
    .end local v4           #spos:Lgnu/kawa/xml/KNode;
    :catch_0
    move-exception v1

    .line 43
    .local v1, ex:Ljava/lang/ClassCastException;
    new-instance v5, Lgnu/mapping/WrongType;

    invoke-virtual {p0}, Lgnu/kawa/xml/TreeScanner;->getDesc()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x4

    const-string v8, "node()"

    invoke-direct {v5, v6, v7, v2, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v5
.end method

.method public getDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, thisName:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 63
    .local v0, dot:I
    if-lez v0, :cond_0

    .line 64
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNodePredicate()Lgnu/lists/NodePredicate;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 76
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 77
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    instance-of v0, v0, Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    .end local p0
    check-cast p0, Lgnu/bytecode/Type;

    invoke-static {p0}, Lgnu/kawa/xml/NodeSetType;->getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 79
    :cond_0
    return-object p1
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x1001

    return v0
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
    .line 56
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/NodePredicate;

    iput-object v0, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    .line 57
    return-void
.end method

.method public abstract scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
