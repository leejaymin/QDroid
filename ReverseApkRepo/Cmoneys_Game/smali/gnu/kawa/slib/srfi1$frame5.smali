.class public Lgnu/kawa/slib/srfi1$frame5;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1$frame4;->lambda15lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation


# instance fields
.field ans:Ljava/lang/Object;

.field final lambda$Fn16:Lgnu/expr/ModuleMethod;

.field final lambda$Fn9:Lgnu/expr/ModuleMethod;

.field lists:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi1$frame4;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame5;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x10

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "srfi1.scm:859"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame5;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi1$frame5;->lambda16()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 859
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame5;->lambda17(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda16()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 859
    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame5;->lists:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi1$frame5;->ans:Ljava/lang/Object;

    .line 778
    .local v2, lists:Ljava/lang/Object;
    new-instance v4, Lgnu/kawa/slib/srfi1$frame6;

    invoke-direct {v4}, Lgnu/kawa/slib/srfi1$frame6;-><init>()V

    iput-object v3, v4, Lgnu/kawa/slib/srfi1$frame6;->cars$Mnfinal:Ljava/lang/Object;

    new-instance v1, Lkawa/lang/Continuation;

    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .local v0, $ctx:Lgnu/mapping/CallContext;
    invoke-direct {v1, v0}, Lkawa/lang/Continuation;-><init>(Lgnu/mapping/CallContext;)V

    .line 780
    .local v1, abort:Lkawa/lang/Continuation;
    :try_start_0
    new-instance v3, Lgnu/kawa/slib/srfi1$frame7;

    invoke-direct {v3}, Lgnu/kawa/slib/srfi1$frame7;-><init>()V

    iput-object v4, v3, Lgnu/kawa/slib/srfi1$frame7;->staticLink:Lgnu/kawa/slib/srfi1$frame6;

    iput-object v1, v3, Lgnu/kawa/slib/srfi1$frame7;->abort:Lkawa/lang/Continuation;

    .line 781
    invoke-virtual {v3, v2}, Lgnu/kawa/slib/srfi1$frame7;->lambda18recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v1, Lkawa/lang/Continuation;->invoked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v3, v1}, Lkawa/lang/Continuation;->handleException(Ljava/lang/Throwable;Lkawa/lang/Continuation;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method lambda17(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "cars$Plans"
    .parameter "cdrs"

    .prologue
    .line 859
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame5;->ans:Ljava/lang/Object;

    .line 861
    :goto_0
    return-object v0

    .line 859
    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame5;->staticLink:Lgnu/kawa/slib/srfi1$frame4;

    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 861
    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame5;->staticLink:Lgnu/kawa/slib/srfi1$frame4;

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame4;->kons:Lgnu/mapping/Procedure;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lgnu/kawa/slib/srfi1$frame4;->lambda15lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

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

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 859
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
