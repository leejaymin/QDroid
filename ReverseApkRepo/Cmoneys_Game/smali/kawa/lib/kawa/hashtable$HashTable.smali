.class public Lkawa/lib/kawa/hashtable$HashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "hashtable.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/lib/kawa/hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashTable"
.end annotation


# instance fields
.field public equivalenceFunction:Lgnu/mapping/Procedure;

.field public hashFunction:Lgnu/mapping/Procedure;

.field public mutable:Z


# direct methods
.method private $finit$()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 30
    iput-object p1, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    .line 31
    iput-object p2, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p3}, Lgnu/kawa/util/GeneralHashTable;-><init>(I)V

    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 27
    iput-object p1, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    .line 28
    iput-object p2, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 33
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lkawa/lib/kawa/hashtable;->hashtable:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    invoke-virtual {p1}, Lgnu/kawa/util/AbstractHashTable;->size()I

    move-result v4

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    sget-object v5, Lkawa/lib/kawa/hashtable;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->putAll(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 38
    sget-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    sget-object v1, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    sget-object v2, Lkawa/lib/kawa/hashtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-eqz p2, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public entriesVectorPair()Lgnu/lists/Pair;
    .locals 8

    .prologue
    .line 54
    new-instance v2, Lgnu/lists/FVector;

    invoke-direct {v2}, Lgnu/lists/FVector;-><init>()V

    .line 56
    new-instance v6, Lgnu/lists/FVector;

    invoke-direct {v6}, Lgnu/lists/FVector;-><init>()V

    .line 57
    .local v2, keys:Lgnu/lists/FVector;
    .local v6, vals:Lgnu/lists/FVector;
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .local v5, table:[Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v7, v0

    array-length v3, v7

    .local v3, length:I
    const/4 v7, 0x1

    sub-int v1, v3, v7

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 58
    invoke-static {v2, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    return-object v7

    .line 57
    :cond_0
    move-object v0, v5

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v7, v0

    aget-object v4, v7, v1

    .local v4, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-nez v4, :cond_1

    .line 58
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Lgnu/lists/SimpleVector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/lists/SimpleVector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v4

    goto :goto_1
.end method

.method public fold(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "proc"
    .parameter "acc"

    .prologue
    .line 45
    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .local v4, table:[Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v5, v0

    array-length v2, v5

    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 46
    return-object p2

    .line 45
    :cond_0
    move-object v0, v4

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v5, v0

    aget-object v3, v5, v1

    .local v3, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-nez v3, :cond_1

    .line 47
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v5, v6, p2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    goto :goto_1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 39
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public keysVector()Lgnu/lists/FVector;
    .locals 7

    .prologue
    .line 49
    new-instance v5, Lgnu/lists/FVector;

    invoke-direct {v5}, Lgnu/lists/FVector;-><init>()V

    .line 51
    .local v5, v:Lgnu/lists/FVector;
    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .local v4, table:[Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v6, v0

    array-length v2, v6

    .local v2, length:I
    const/4 v6, 0x1

    sub-int v1, v2, v6

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    return-object v5

    :cond_0
    move-object v0, v4

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v6, v0

    aget-object v3, v6, v1

    .local v3, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-nez v3, :cond_1

    .line 52
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/lists/SimpleVector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    goto :goto_1
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 41
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putAll(Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 7
    .parameter "other"

    .prologue
    .line 68
    iget-object v4, p1, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .local v4, table:[Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v5, v0

    array-length v2, v5

    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 70
    return-void

    .line 68
    :cond_0
    move-object v0, v4

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v5, v0

    aget-object v3, v5, v1

    .local v3, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-nez v3, :cond_1

    .line 70
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lgnu/kawa/util/GeneralHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    goto :goto_1
.end method

.method public toAlist()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 61
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 63
    .local v4, result:Lgnu/lists/LList;
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .local v5, table:[Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v6, v0

    array-length v2, v6

    .local v2, length:I
    const/4 v6, 0x1

    sub-int v1, v2, v6

    .local v1, i:I
    move-object v7, v4

    .end local v4           #result:Lgnu/lists/LList;
    :goto_0
    if-gez v1, :cond_0

    return-object v7

    :cond_0
    move-object v0, v5

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v6, v0

    aget-object v3, v6, v1

    .local v3, node:Lgnu/kawa/util/HashNode;
    move-object v6, v7

    :goto_1
    if-nez v3, :cond_1

    .line 64
    add-int/lit8 v1, v1, -0x1

    move-object v7, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    invoke-static {v7, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .local v4, result:Lgnu/lists/Pair;
    invoke-virtual {p0, v3}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    move-object v6, v4

    goto :goto_1
.end method

.method public walk(Lgnu/mapping/Procedure;)V
    .locals 7
    .parameter "proc"

    .prologue
    .line 43
    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .local v4, table:[Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v5, v0

    array-length v2, v5

    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    move-object v0, v4

    check-cast v0, [Lgnu/kawa/util/HashNode;

    move-object v5, v0

    aget-object v3, v5, v1

    .local v3, node:Lgnu/kawa/util/HashNode;
    :goto_1
    if-nez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    goto :goto_1
.end method
