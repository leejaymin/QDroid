.class public Lgnu/kawa/util/GeneralHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "GeneralHashTable.java"


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
        "Lgnu/kawa/util/HashNode",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_SIZE:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 23
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/HashNode;
    .locals 0
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    new-array p0, p1, [Lgnu/kawa/util/HashNode;

    .end local p0           #this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p0, [Lgnu/kawa/util/HashNode;

    return-object p0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->allocEntries(I)[Lgnu/kawa/util/HashNode;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/HashNode;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget v0, p1, Lgnu/kawa/util/HashNode;->hash:I

    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getEntryHashCode(Lgnu/kawa/util/HashNode;)I

    move-result v0

    return v0
.end method

.method protected getEntryKey(Lgnu/kawa/util/HashNode;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method protected bridge synthetic getEntryKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getEntryKey(Lgnu/kawa/util/HashNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryValue(Lgnu/kawa/util/HashNode;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected bridge synthetic getEntryValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getEntryValue(Lgnu/kawa/util/HashNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-super {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p0, Lgnu/kawa/util/HashNode;

    return-object p0
.end method

.method public bridge synthetic getNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    return-object v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;
    .locals 1
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lgnu/kawa/util/HashNode;

    invoke-direct {v0}, Lgnu/kawa/util/HashNode;-><init>()V

    .line 38
    .local v0, node:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iput-object p1, v0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    .line 39
    iput p2, v0, Lgnu/kawa/util/HashNode;->hash:I

    .line 40
    iput-object p3, v0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 41
    return-object v0
.end method

.method public put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p2}, Lgnu/kawa/util/GeneralHashTable;->hashToIndex(I)I

    move-result v1

    .line 58
    .local v1, index:I
    iget-object v3, p0, Lgnu/kawa/util/GeneralHashTable;->table:[Ljava/lang/Object;

    check-cast v3, [Lgnu/kawa/util/HashNode;

    aget-object v0, v3, v1

    .line 59
    .local v0, first:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    move-object v2, v0

    .line 62
    .local v2, node:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    :goto_0
    if-nez v2, :cond_1

    .line 64
    iget v3, p0, Lgnu/kawa/util/GeneralHashTable;->num_bindings:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/kawa/util/GeneralHashTable;->num_bindings:I

    iget-object v3, p0, Lgnu/kawa/util/GeneralHashTable;->table:[Ljava/lang/Object;

    check-cast v3, [Lgnu/kawa/util/HashNode;

    array-length v3, v3

    if-lt v4, v3, :cond_0

    .line 66
    invoke-virtual {p0}, Lgnu/kawa/util/GeneralHashTable;->rehash()V

    .line 67
    invoke-virtual {p0, p2}, Lgnu/kawa/util/GeneralHashTable;->hashToIndex(I)I

    move-result v1

    .line 68
    iget-object v3, p0, Lgnu/kawa/util/GeneralHashTable;->table:[Ljava/lang/Object;

    check-cast v3, [Lgnu/kawa/util/HashNode;

    aget-object v0, v3, v1

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/GeneralHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    .line 71
    iput-object v0, v2, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 72
    iget-object p0, p0, Lgnu/kawa/util/GeneralHashTable;->table:[Ljava/lang/Object;

    .end local p0           #this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p0, [Lgnu/kawa/util/HashNode;

    aput-object v2, p0, v1

    .line 73
    const/4 v3, 0x0

    .line 77
    :goto_1
    return-object v3

    .line 75
    .restart local p0       #this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    :cond_1
    invoke-virtual {p0, p1, p2, v2}, Lgnu/kawa/util/GeneralHashTable;->matches(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {v2, p3}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 79
    :cond_2
    iget-object v2, v2, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/util/GeneralHashTable;->put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/GeneralHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 86
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lgnu/kawa/util/GeneralHashTable;->hashToIndex(I)I

    move-result v1

    .line 87
    .local v1, index:I
    const/4 v4, 0x0

    .line 88
    .local v4, prev:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v5, p0, Lgnu/kawa/util/GeneralHashTable;->table:[Ljava/lang/Object;

    check-cast v5, [Lgnu/kawa/util/HashNode;

    aget-object v3, v5, v1

    .line 89
    .local v3, node:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_2

    .line 91
    iget-object v2, v3, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 92
    .local v2, next:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    invoke-virtual {p0, p1, v0, v3}, Lgnu/kawa/util/GeneralHashTable;->matches(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    if-nez v4, :cond_0

    .line 95
    iget-object v5, p0, Lgnu/kawa/util/GeneralHashTable;->table:[Ljava/lang/Object;

    check-cast v5, [Lgnu/kawa/util/HashNode;

    aput-object v2, v5, v1

    .line 98
    :goto_1
    iget v5, p0, Lgnu/kawa/util/GeneralHashTable;->num_bindings:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lgnu/kawa/util/GeneralHashTable;->num_bindings:I

    .line 99
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 104
    .end local v2           #next:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    :goto_2
    return-object v5

    .line 97
    .restart local v2       #next:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    :cond_0
    iput-object v2, v4, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_1

    .line 101
    :cond_1
    move-object v4, v3

    .line 102
    move-object v3, v2

    .line 103
    goto :goto_0

    .line 104
    .end local v2           #next:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected setEntryNext(Lgnu/kawa/util/HashNode;Lgnu/kawa/util/HashNode;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p2, next:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iput-object p2, p1, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    check-cast p2, Lgnu/kawa/util/HashNode;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/GeneralHashTable;->setEntryNext(Lgnu/kawa/util/HashNode;Lgnu/kawa/util/HashNode;)V

    return-void
.end method

.method protected setEntryValue(Lgnu/kawa/util/HashNode;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iput-object p2, p1, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic setEntryValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    .local p0, this:Lgnu/kawa/util/GeneralHashTable;,"Lgnu/kawa/util/GeneralHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/HashNode;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/GeneralHashTable;->setEntryValue(Lgnu/kawa/util/HashNode;Ljava/lang/Object;)V

    return-void
.end method
