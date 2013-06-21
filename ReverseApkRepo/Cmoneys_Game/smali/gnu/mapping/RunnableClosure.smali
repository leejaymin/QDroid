.class public Lgnu/mapping/RunnableClosure;
.super Ljava/lang/Object;
.source "RunnableClosure.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static nrunnables:I


# instance fields
.field action:Lgnu/mapping/Procedure;

.field context:Lgnu/mapping/CallContext;

.field public environment:Lgnu/mapping/Environment;

.field private err:Lgnu/mapping/OutPort;

.field exception:Ljava/lang/Throwable;

.field private in:Lgnu/mapping/InPort;

.field name:Ljava/lang/String;

.field private out:Lgnu/mapping/OutPort;

.field result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lgnu/mapping/RunnableClosure;->nrunnables:I

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 84
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "action"
    .parameter "parentContext"

    .prologue
    .line 33
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;Lgnu/mapping/Environment;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;Lgnu/mapping/Environment;)V
    .locals 15
    .parameter "action"
    .parameter "parentContext"
    .parameter "penvironment"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "r"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lgnu/mapping/RunnableClosure;->nrunnables:I

    add-int/lit8 v14, v13, 0x1

    sput v14, Lgnu/mapping/RunnableClosure;->nrunnables:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lgnu/mapping/RunnableClosure;->setName(Ljava/lang/String;)V

    .line 40
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lgnu/mapping/RunnableClosure;->action:Lgnu/mapping/Procedure;

    .line 41
    invoke-virtual {p0}, Lgnu/mapping/RunnableClosure;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v2

    .line 42
    .local v2, env:Lgnu/mapping/SimpleEnvironment;
    iget v12, v2, Lgnu/mapping/SimpleEnvironment;->flags:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v2, Lgnu/mapping/SimpleEnvironment;->flags:I

    .line 43
    iget v12, v2, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v12, v12, -0x11

    iput v12, v2, Lgnu/mapping/SimpleEnvironment;->flags:I

    .line 44
    iput-object v2, p0, Lgnu/mapping/RunnableClosure;->environment:Lgnu/mapping/Environment;

    .line 45
    move-object/from16 v0, p2

    iget v0, v0, Lgnu/mapping/CallContext;->pushedFluidsCount:I

    move v6, v0

    .line 46
    .local v6, n:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 52
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/mapping/CallContext;->pushedFluids:[Lgnu/mapping/Location;

    move-object v12, v0

    aget-object v5, v12, v4

    .line 53
    .local v5, loc:Lgnu/mapping/Location;
    invoke-virtual {v5}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v7

    .line 54
    .local v7, name:Lgnu/mapping/Symbol;
    invoke-virtual {v5}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v9

    .line 55
    .local v9, property:Ljava/lang/Object;
    if-eqz v7, :cond_1

    instance-of v12, v5, Lgnu/mapping/NamedLocation;

    if-eqz v12, :cond_1

    .line 57
    move-object v0, v5

    check-cast v0, Lgnu/mapping/NamedLocation;

    move-object v8, v0

    .line 58
    .local v8, nloc:Lgnu/mapping/NamedLocation;
    iget-object v12, v8, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    if-nez v12, :cond_0

    .line 60
    new-instance v10, Lgnu/mapping/SharedLocation;

    const/4 v12, 0x0

    invoke-direct {v10, v7, v9, v12}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    .line 61
    .local v10, sloc:Lgnu/mapping/SharedLocation;
    iget-object v12, v8, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v12, v10, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 62
    iput-object v10, v8, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 63
    const/4 v12, 0x0

    iput-object v12, v8, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 64
    move-object v8, v10

    .line 66
    .end local v10           #sloc:Lgnu/mapping/SharedLocation;
    :cond_0
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v12

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    xor-int v3, v12, v13

    .line 67
    .local v3, hash:I
    invoke-virtual {v2, v7, v9, v3}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v11

    .line 68
    .local v11, xloc:Lgnu/mapping/NamedLocation;
    iput-object v8, v11, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 46
    .end local v3           #hash:I
    .end local v8           #nloc:Lgnu/mapping/NamedLocation;
    .end local v11           #xloc:Lgnu/mapping/NamedLocation;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v5           #loc:Lgnu/mapping/Location;
    .end local v7           #name:Lgnu/mapping/Symbol;
    .end local v9           #property:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    .locals 1
    .parameter "action"
    .parameter "penvironment"
    .parameter "in"
    .parameter "out"
    .parameter "err"

    .prologue
    .line 76
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;Lgnu/mapping/Environment;)V

    .line 77
    iput-object p3, p0, Lgnu/mapping/RunnableClosure;->in:Lgnu/mapping/InPort;

    .line 78
    iput-object p4, p0, Lgnu/mapping/RunnableClosure;->out:Lgnu/mapping/OutPort;

    .line 79
    iput-object p5, p0, Lgnu/mapping/RunnableClosure;->err:Lgnu/mapping/OutPort;

    .line 80
    return-void
.end method


# virtual methods
.method public final getCallContext()Lgnu/mapping/CallContext;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lgnu/mapping/RunnableClosure;->name:Ljava/lang/String;

    return-object v0
.end method

.method getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    .line 119
    .local v0, ex:Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 120
    throw v0

    .line 121
    :cond_0
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    return-object v1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    if-nez v1, :cond_3

    .line 95
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v1

    iput-object v1, p0, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    .line 98
    :goto_0
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    iget-object v2, p0, Lgnu/mapping/RunnableClosure;->environment:Lgnu/mapping/Environment;

    iput-object v2, v1, Lgnu/mapping/CallContext;->curEnvironment:Lgnu/mapping/Environment;

    .line 99
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->in:Lgnu/mapping/InPort;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->in:Lgnu/mapping/InPort;

    invoke-static {v1}, Lgnu/mapping/InPort;->setInDefault(Lgnu/mapping/InPort;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->out:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->out:Lgnu/mapping/OutPort;

    invoke-static {v1}, Lgnu/mapping/OutPort;->setOutDefault(Lgnu/mapping/OutPort;)V

    .line 103
    :cond_1
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->err:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->err:Lgnu/mapping/OutPort;

    invoke-static {v1}, Lgnu/mapping/OutPort;->setErrDefault(Lgnu/mapping/OutPort;)V

    .line 105
    :cond_2
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->action:Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    .line 111
    :goto_1
    return-void

    .line 97
    :cond_3
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    invoke-static {v1}, Lgnu/mapping/CallContext;->setInstance(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 109
    .local v0, ex:Ljava/lang/Throwable;
    iput-object v0, p0, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 28
    iput-object p1, p0, Lgnu/mapping/RunnableClosure;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "#<runnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p0}, Lgnu/mapping/RunnableClosure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
