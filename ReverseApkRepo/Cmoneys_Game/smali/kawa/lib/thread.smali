.class public Lkawa/lib/thread;
.super Lgnu/expr/ModuleBody;
.source "thread.scm"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final $Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/thread;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field public static final exit:Lgnu/expr/ModuleMethod;

.field public static final future:Lkawa/lang/Macro;

.field public static final runnable:Lgnu/expr/ModuleMethod;

.field public static final sleep:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcMakeFuture(Lgnu/mapping/Procedure;)Lgnu/mapping/Future;
    .locals 1
    .parameter "p"

    .prologue
    .line 17
    new-instance v0, Lgnu/mapping/Future;

    invoke-direct {v0, p0}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;)V

    .line 19
    .local v0, f:Lgnu/mapping/Future;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 12

    const/16 v11, 0x1001

    const/4 v5, 0x0

    const/4 v10, 0x1

    const-string v0, "runnable"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/thread;->Lit5:Lgnu/mapping/SimpleSymbol;

    const-string v0, "%make-future"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/thread;->Lit4:Lgnu/mapping/SimpleSymbol;

    const-string v0, "sleep"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    const-string v0, "exit"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/thread;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    new-array v7, v10, [Ljava/lang/Object;

    const-string v0, "future"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/thread;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v5

    new-array v8, v10, [Lkawa/lang/SyntaxRule;

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u0008"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001"

    const-string v3, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\t\u0010\u0008\u0003"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v9, Lkawa/lib/thread;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v4, v5

    const-string v9, "lambda"

    invoke-static {v9}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v9

    aput-object v9, v4, v10

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v5

    invoke-direct {v6, v7, v8, v10}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/thread;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lib/thread;

    invoke-direct {v0}, Lkawa/lib/thread;-><init>()V

    sput-object v0, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    sget-object v0, Lkawa/lib/thread;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/thread;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/thread;->future:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    sget-object v2, Lkawa/lib/thread;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1000

    invoke-direct {v0, v1, v10, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/thread;->exit:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/thread;->sleep:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lkawa/lib/thread;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/thread;->$Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/thread;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/thread;->runnable:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static exit()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkawa/lib/thread;->exit(I)V

    return-void
.end method

.method public static exit(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 4
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static runnable(Lgnu/mapping/Procedure;)Lgnu/mapping/RunnableClosure;
    .locals 1
    .parameter "p"

    .prologue
    .line 22
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p0}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0
.end method

.method public static sleep(Lgnu/math/Quantity;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 8
    invoke-static {p0}, Lkawa/standard/sleep;->sleep(Lgnu/math/Quantity;)V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lkawa/lib/thread;->exit()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    .line 22
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 4
    :pswitch_1
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-static {v1}, Lkawa/lib/thread;->exit(I)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 8
    :pswitch_2
    :try_start_1
    check-cast p2, Lgnu/math/Quantity;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lkawa/lib/thread;->sleep(Lgnu/math/Quantity;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 17
    :pswitch_3
    :try_start_2
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lkawa/lib/thread;->$PcMakeFuture(Lgnu/mapping/Procedure;)Lgnu/mapping/Future;

    move-result-object v1

    goto :goto_0

    .line 22
    :pswitch_4
    :try_start_3
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lkawa/lib/thread;->runnable(Lgnu/mapping/Procedure;)Lgnu/mapping/RunnableClosure;

    move-result-object v1

    goto :goto_0

    .line 4
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "exit"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 8
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "sleep"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 17
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%make-future"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 22
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "runnable"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, -0xbffff

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 4
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 22
    :goto_0
    return v0

    :pswitch_1
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 17
    :pswitch_2
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 8
    :pswitch_3
    instance-of v0, p2, Lgnu/math/Quantity;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    .line 4
    :pswitch_4
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "$ctx"

    .prologue
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 1
    .local v0, $result:Lgnu/lists/Consumer;
    sget-object v1, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object v1, Lkawa/lib/std_syntax;->$instance:Lkawa/lib/std_syntax;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4
    sget-object v1, Lkawa/lib/thread;->$Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

    sput-object v1, Lkawa/lib/thread;->$Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

    .line 22
    return-void
.end method
