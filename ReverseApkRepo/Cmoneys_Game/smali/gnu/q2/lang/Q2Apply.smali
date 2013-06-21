.class public Lgnu/q2/lang/Q2Apply;
.super Lgnu/mapping/MethodProc;
.source "Q2Apply.java"


# static fields
.field public static q2Apply:Lgnu/q2/lang/Q2Apply;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lgnu/q2/lang/Q2Apply;

    invoke-direct {v0}, Lgnu/q2/lang/Q2Apply;-><init>()V

    sput-object v0, Lgnu/q2/lang/Q2Apply;->q2Apply:Lgnu/q2/lang/Q2Apply;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
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
    .line 13
    sget-object v2, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 14
    .local v2, endMarker:Lgnu/expr/Special;
    invoke-virtual {p1, v2}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    .local v1, arg:Ljava/lang/Object;
    instance-of v7, v1, Lgnu/mapping/Procedure;

    if-eqz v7, :cond_5

    .line 17
    move-object v0, v1

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v4, v0

    .line 18
    .local v4, proc:Lgnu/mapping/Procedure;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 21
    .local v6, vec:Ljava/util/Vector;
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    if-ne v1, v2, :cond_1

    .line 33
    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    instance-of v7, v1, Lgnu/lists/Consumable;

    if-eqz v7, :cond_3

    .line 35
    move-object v0, v1

    check-cast v0, Lgnu/lists/Consumable;

    move-object v7, v0

    iget-object v8, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v7, v8}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 50
    .end local v4           #proc:Lgnu/mapping/Procedure;
    .end local v6           #vec:Ljava/util/Vector;
    :goto_1
    return-void

    .line 24
    .restart local v4       #proc:Lgnu/mapping/Procedure;
    .restart local v6       #vec:Ljava/util/Vector;
    :cond_1
    instance-of v7, v1, Lgnu/mapping/Values;

    if-eqz v7, :cond_2

    .line 26
    move-object v0, v1

    check-cast v0, Lgnu/mapping/Values;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v5

    .line 27
    .local v5, vals:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 28
    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 31
    .end local v3           #i:I
    .end local v5           #vals:[Ljava/lang/Object;
    :cond_2
    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 44
    .end local v4           #proc:Lgnu/mapping/Procedure;
    .end local v6           #vec:Ljava/util/Vector;
    :cond_4
    instance-of v7, v1, Lgnu/lists/Consumable;

    if-eqz v7, :cond_6

    .line 45
    check-cast v1, Lgnu/lists/Consumable;

    .end local v1           #arg:Ljava/lang/Object;
    iget-object v7, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v1, v7}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 48
    :goto_3
    invoke-virtual {p1, v2}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .restart local v1       #arg:Ljava/lang/Object;
    :cond_5
    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 47
    :cond_6
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_3
.end method
