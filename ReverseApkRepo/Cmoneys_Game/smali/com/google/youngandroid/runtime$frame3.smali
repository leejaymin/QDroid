.class public Lcom/google/youngandroid/runtime$frame3;
.super Lgnu/expr/ModuleBody;
.source "runtime334892613208221024.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->encode(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame3"
.end annotation


# instance fields
.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda12encodeWith(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "map"

    .prologue
    .line 1771
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame3;->s:Ljava/lang/Object;

    .line 1774
    :goto_0
    return-object v0

    .line 1771
    :cond_0
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 1774
    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/youngandroid/runtime$frame3;->lambda12encodeWith(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/youngandroid/runtime;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lkawa/lib/lists;->caar:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkawa/lib/lists;->cadar:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
