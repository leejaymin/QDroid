.class Lgnu/bytecode/ClassToTypeMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable",
        "<",
        "Ljava/lang/Class;",
        "Lgnu/bytecode/Type;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 594
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>(I)V

    .line 595
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>(I)V

    .line 600
    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Lgnu/bytecode/Type;)Ljava/lang/Class;
    .locals 1
    .parameter "type"

    .prologue
    .line 604
    iget-object v0, p1, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 590
    check-cast p1, Lgnu/bytecode/Type;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassToTypeMap;->getKeyFromValue(Lgnu/bytecode/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected matches(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 2
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 609
    iget-object v0, p1, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    iget-object v1, p2, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
