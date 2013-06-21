.class Lgnu/expr/ClassToInfoMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "ModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable",
        "<",
        "Ljava/lang/Class;",
        "Lgnu/expr/ModuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 440
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>(I)V

    .line 441
    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Lgnu/expr/ModuleInfo;)Ljava/lang/Class;
    .locals 1
    .parameter "minfo"

    .prologue
    .line 445
    iget-object v0, p1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    check-cast p1, Lgnu/expr/ModuleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/expr/ClassToInfoMap;->getKeyFromValue(Lgnu/expr/ModuleInfo;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected matches(Lgnu/expr/ModuleInfo;Lgnu/expr/ModuleInfo;)Z
    .locals 2
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 450
    iget-object v0, p1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    iget-object v1, p2, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
