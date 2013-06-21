.class public abstract Lgnu/kawa/util/AbstractWeakHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "AbstractWeakHashTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable",
        "<",
        "Lgnu/kawa/util/WeakHashNode",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 12
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 23
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 12
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 24
    return-void
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/WeakHashNode;
    .locals 0
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    new-array p0, p1, [Lgnu/kawa/util/WeakHashNode;

    .end local p0           #this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p0, [Lgnu/kawa/util/WeakHashNode;

    return-object p0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->allocEntries(I)[Lgnu/kawa/util/WeakHashNode;

    move-result-object v0

    return-object v0
.end method

.method cleanup()V
    .locals 7

    .prologue
    .line 112
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    :goto_0
    iget-object v5, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    check-cast v3, Lgnu/kawa/util/WeakHashNode;

    .line 113
    .local v3, oldref:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<**>;"
    if-nez v3, :cond_0

    .line 135
    return-void

    .line 115
    :cond_0
    iget v5, v3, Lgnu/kawa/util/WeakHashNode;->hash:I

    invoke-virtual {p0, v5}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v0

    .line 116
    .local v0, index:I
    const/4 v4, 0x0

    .line 117
    .local v4, prev:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iget-object v5, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/lang/Object;

    check-cast v5, [Lgnu/kawa/util/WeakHashNode;

    aget-object v2, v5, v0

    .line 118
    .local v2, node:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_1

    .line 120
    iget-object v1, v2, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    .line 121
    .local v1, next:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    if-ne v2, v3, :cond_3

    .line 123
    if-nez v4, :cond_2

    .line 124
    iget-object v5, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/lang/Object;

    check-cast v5, [Lgnu/kawa/util/WeakHashNode;

    aput-object v1, v5, v0

    .line 132
    .end local v1           #next:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    :cond_1
    :goto_2
    iget v5, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    goto :goto_0

    .line 126
    .restart local v1       #next:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    :cond_2
    iput-object v1, v4, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    goto :goto_2

    .line 129
    :cond_3
    move-object v4, v2

    .line 130
    move-object v2, v1

    .line 131
    goto :goto_1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, defaultValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 47
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 48
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v1

    .line 49
    .local v1, index:I
    iget-object v4, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/lang/Object;

    check-cast v4, [Lgnu/kawa/util/WeakHashNode;

    aget-object v2, v4, v1

    .line 50
    .local v2, node:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {p0, v2, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getValueIfMatching(Lgnu/kawa/util/WeakHashNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    .local v3, val:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 56
    .end local v3           #val:Ljava/lang/Object;,"TV;"
    :goto_1
    return-object v4

    .line 50
    .restart local v3       #val:Ljava/lang/Object;,"TV;"
    :cond_0
    iget-object v2, v2, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    goto :goto_0

    .end local v3           #val:Ljava/lang/Object;,"TV;"
    :cond_1
    move-object v4, p2

    .line 56
    goto :goto_1
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/WeakHashNode;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iget v0, p1, Lgnu/kawa/util/WeakHashNode;->hash:I

    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryHashCode(Lgnu/kawa/util/WeakHashNode;)I

    move-result v0

    return v0
.end method

.method protected getEntryKey(Lgnu/kawa/util/WeakHashNode;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryValue(Lgnu/kawa/util/WeakHashNode;)Ljava/lang/Object;

    move-result-object v0

    .local v0, t:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic getEntryKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryKey(Lgnu/kawa/util/WeakHashNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/WeakHashNode;)Lgnu/kawa/util/WeakHashNode;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryNext(Lgnu/kawa/util/WeakHashNode;)Lgnu/kawa/util/WeakHashNode;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryValue(Lgnu/kawa/util/WeakHashNode;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    invoke-virtual {p1}, Lgnu/kawa/util/WeakHashNode;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getEntryValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryValue(Lgnu/kawa/util/WeakHashNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation
.end method

.method protected getValueIfMatching(Lgnu/kawa/util/WeakHashNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;TK;)TV;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, node:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryValue(Lgnu/kawa/util/WeakHashNode;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, val:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 67
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 68
    .local v1, hash:I
    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v2

    .line 69
    .local v2, index:I
    iget-object v7, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/lang/Object;

    check-cast v7, [Lgnu/kawa/util/WeakHashNode;

    aget-object v0, v7, v2

    .line 70
    .local v0, first:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v4, v0

    .line 71
    .local v4, node:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    const/4 v6, 0x0

    .line 74
    .local v6, prev:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    :goto_0
    if-nez v4, :cond_2

    .line 76
    iget v7, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    iget-object v7, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/lang/Object;

    check-cast v7, [Lgnu/kawa/util/WeakHashNode;

    array-length v7, v7

    if-lt v8, v7, :cond_0

    .line 78
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->rehash()V

    .line 79
    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v2

    .line 80
    iget-object v7, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/lang/Object;

    check-cast v7, [Lgnu/kawa/util/WeakHashNode;

    aget-object v0, v7, v2

    .line 83
    :cond_0
    new-instance v4, Lgnu/kawa/util/WeakHashNode;

    .end local v4           #node:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iget-object v7, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, p2, v7, v1, v0}, Lgnu/kawa/util/WeakHashNode;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILgnu/kawa/util/WeakHashNode;)V

    .line 87
    .restart local v4       #node:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iget-object p0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/lang/Object;

    .end local p0           #this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p0, [Lgnu/kawa/util/WeakHashNode;

    aput-object v4, p0, v2

    .line 92
    :cond_1
    return-void

    .line 90
    .restart local p0       #this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    :cond_2
    invoke-virtual {p0, v4}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryValue(Lgnu/kawa/util/WeakHashNode;)Ljava/lang/Object;

    move-result-object v5

    .line 91
    .local v5, oldValue:Ljava/lang/Object;,"TV;"
    if-eq v5, p2, :cond_1

    .line 93
    iget-object v3, v4, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    .line 94
    .local v3, next:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    if-eqz v5, :cond_4

    invoke-virtual {p0, v5, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 96
    if-nez v6, :cond_3

    .line 97
    iget-object v7, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/lang/Object;

    check-cast v7, [Lgnu/kawa/util/WeakHashNode;

    aput-object v3, v7, v2

    .line 103
    :goto_1
    move-object v4, v3

    .line 104
    goto :goto_0

    .line 99
    :cond_3
    iput-object v3, v6, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    goto :goto_1

    .line 102
    :cond_4
    move-object v6, v4

    goto :goto_1
.end method

.method protected setEntryNext(Lgnu/kawa/util/WeakHashNode;Lgnu/kawa/util/WeakHashNode;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    .local p2, next:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iput-object p2, p1, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    .end local p1
    check-cast p2, Lgnu/kawa/util/WeakHashNode;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->setEntryNext(Lgnu/kawa/util/WeakHashNode;Lgnu/kawa/util/WeakHashNode;)V

    return-void
.end method

.method protected setEntryValue(Lgnu/kawa/util/WeakHashNode;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic setEntryValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/WeakHashNode;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->setEntryValue(Lgnu/kawa/util/WeakHashNode;Ljava/lang/Object;)V

    return-void
.end method

.method protected valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, oldValue:Ljava/lang/Object;,"TV;"
    .local p2, newValue:Ljava/lang/Object;,"TV;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
