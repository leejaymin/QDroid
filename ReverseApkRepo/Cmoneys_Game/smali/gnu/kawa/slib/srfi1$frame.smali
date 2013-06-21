.class public Lgnu/kawa/slib/srfi1$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->list$Eq$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field $Eq:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda1lp1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "list$Mna"
    .parameter "others"

    .prologue
    .line 418
    invoke-static {p2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    .local v2, x:Z
    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 427
    .end local v2           #x:Z
    :goto_0
    return-object v3

    .line 418
    .restart local v2       #x:Z
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 419
    invoke-virtual {v3, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 420
    invoke-virtual {v3, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 421
    .local v1, list$Mnb:Ljava/lang/Object;
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/slib/srfi1$frame;->lambda1lp1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 427
    .end local v2           #x:Z
    .local v0, closureEnv:Lgnu/kawa/slib/srfi1$frame;
    :cond_2
    invoke-static {v1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v3, 0x1

    .restart local v2       #x:Z
    if-eqz v2, :cond_7

    .line 428
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v4, p0, Lgnu/kawa/slib/srfi1$frame;->$Eq:Ljava/lang/Object;

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 427
    .local v2, x:Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_6

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 429
    invoke-virtual {v3, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 423
    .end local v0           #closureEnv:Lgnu/kawa/slib/srfi1$frame;
    .end local v2           #x:Ljava/lang/Object;
    .restart local p1
    :cond_3
    move-object v0, p0

    .line 424
    .restart local v0       #closureEnv:Lgnu/kawa/slib/srfi1$frame;
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_2

    .line 425
    invoke-static {v1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #x:Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_4

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/slib/srfi1$frame;->lambda1lp1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    goto :goto_0

    .line 427
    .end local v2           #x:Ljava/lang/Object;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .restart local v2       #x:Ljava/lang/Object;
    :cond_6
    move-object v3, v2

    goto :goto_0

    .local v2, x:Z
    :cond_7
    if-eqz v2, :cond_8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .end local v2           #x:Z
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const/4 v6, 0x0

    const/4 v7, -0x4

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method
