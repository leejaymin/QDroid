.class public Lgnu/kawa/slib/genwrite$frame2;
.super Lgnu/expr/ModuleBody;
.source "genwrite.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/genwrite$frame0;->lambda13ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame2"
.end annotation


# instance fields
.field extra:Ljava/lang/Object;

.field pp$Mn1:Ljava/lang/Object;

.field pp$Mn2:Ljava/lang/Object;

.field pp$Mn3:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/genwrite$frame0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda24tail1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "rest"
    .parameter "col1"
    .parameter "col2"
    .parameter "col3"

    .prologue
    .line 134
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame2;->pp$Mn1:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    :cond_0
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, val1:Ljava/lang/Object;
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 137
    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame2;->extra:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    check-cast v2, Lgnu/math/IntNum;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .local v0, extra:Lgnu/math/IntNum;
    :goto_0
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame2;->staticLink:Lgnu/kawa/slib/genwrite$frame0;

    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame2;->staticLink:Lgnu/kawa/slib/genwrite$frame0;

    invoke-virtual {v3, p4, p3}, Lgnu/kawa/slib/genwrite$frame0;->lambda7indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/slib/genwrite$frame2;->pp$Mn1:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v0, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda8pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2, p4}, Lgnu/kawa/slib/genwrite$frame2;->lambda25tail2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v0           #extra:Lgnu/math/IntNum;
    .end local v1           #val1:Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 134
    :cond_1
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame2;->pp$Mn1:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    .line 136
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame2;->lambda25tail2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .restart local v1       #val1:Ljava/lang/Object;
    :cond_3
    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const/4 v5, 0x0

    const/4 v6, -0x4

    invoke-direct {v4, v3, v5, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public lambda25tail2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "rest"
    .parameter "col1"
    .parameter "col2"
    .parameter "col3"

    .prologue
    .line 142
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame2;->pp$Mn2:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    :cond_0
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, val1:Ljava/lang/Object;
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 145
    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame2;->extra:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    check-cast v2, Lgnu/math/IntNum;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .local v0, extra:Lgnu/math/IntNum;
    :goto_0
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame2;->staticLink:Lgnu/kawa/slib/genwrite$frame0;

    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame2;->staticLink:Lgnu/kawa/slib/genwrite$frame0;

    invoke-virtual {v3, p4, p3}, Lgnu/kawa/slib/genwrite$frame0;->lambda7indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/slib/genwrite$frame2;->pp$Mn2:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v0, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda8pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lgnu/kawa/slib/genwrite$frame2;->lambda26tail3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v0           #extra:Lgnu/math/IntNum;
    .end local v1           #val1:Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 142
    :cond_1
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame2;->pp$Mn2:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    .line 144
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/slib/genwrite$frame2;->lambda26tail3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .restart local v1       #val1:Ljava/lang/Object;
    :cond_3
    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const/4 v5, 0x0

    const/4 v6, -0x4

    invoke-direct {v4, v3, v5, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public lambda26tail3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "rest"
    .parameter "col1"
    .parameter "col2"

    .prologue
    .line 150
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame2;->staticLink:Lgnu/kawa/slib/genwrite$frame0;

    iget-object v4, p0, Lgnu/kawa/slib/genwrite$frame2;->extra:Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame2;->pp$Mn3:Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
