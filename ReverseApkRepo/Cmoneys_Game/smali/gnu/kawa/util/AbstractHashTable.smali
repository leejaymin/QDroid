.class public abstract Lgnu/kawa/util/AbstractHashTable;
.super Ljava/lang/Object;
.source "AbstractHashTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mask:I

.field protected num_bindings:I

.field protected table:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TEntry;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "capacity"

    .prologue
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    .line 34
    .local v0, log2Size:I
    :goto_0
    shl-int v1, v2, v0

    if-le p1, v1, :cond_0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    shl-int p1, v2, v0

    .line 37
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .line 38
    sub-int v1, p1, v2

    iput v1, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract allocEntries(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TEntry;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 143
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .line 144
    .local v1, t:[Ljava/lang/Object;,"[TEntry;"
    array-length v0, v1

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 145
    aget-object v2, v1, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 147
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, defaultValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, node:Ljava/lang/Object;,"TEntry;"
    if-nez v0, :cond_0

    move-object v1, p2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->getEntryValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getEntryHashCode(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)I"
        }
    .end annotation
.end method

.method protected abstract getEntryKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)TK;"
        }
    .end annotation
.end method

.method protected abstract getEntryNext(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)TEntry;"
        }
    .end annotation
.end method

.method protected abstract getEntryValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)TV;"
        }
    .end annotation
.end method

.method public getNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TEntry;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 81
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 82
    .local v1, index:I
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 83
    .local v2, node:Ljava/lang/Object;,"TEntry;"
    :goto_0
    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p0, p1, v0, v2}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 88
    :goto_1
    return-object v3

    .line 83
    :cond_0
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 88
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected hashToIndex(I)I
    .locals 1
    .parameter "hash"

    .prologue
    .line 52
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr p1, v0

    .line 53
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method protected matches(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITEntry;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, node:Ljava/lang/Object;,"TEntry;"
    invoke-virtual {p0, p3}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, p3}, Lgnu/kawa/util/AbstractHashTable;->getEntryKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, value1:Ljava/lang/Object;,"TK;"
    .local p2, value2:Ljava/lang/Object;,"TK;"
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected rehash()V
    .locals 15

    .prologue
    .line 100
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    iget-object v12, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .line 101
    .local v12, oldTable:[Ljava/lang/Object;,"[TEntry;"
    array-length v11, v12

    .line 102
    .local v11, oldCapacity:I
    mul-int/lit8 v6, v11, 0x2

    .line 103
    .local v6, newCapacity:I
    invoke-virtual {p0, v6}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/lang/Object;

    move-result-object v8

    .line 104
    .local v8, newTable:[Ljava/lang/Object;,"[TEntry;"
    const/4 v14, 0x1

    sub-int v7, v6, v14

    .line 105
    .local v7, newMask:I
    iput-object v8, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/lang/Object;

    .line 106
    iput v7, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    .line 107
    move v4, v11

    .local v4, i:I
    :cond_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 109
    aget-object v0, v12, v4

    .line 110
    .local v0, chain:Ljava/lang/Object;,"TEntry;"
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 116
    const/4 v13, 0x0

    .line 119
    :cond_1
    move-object v10, v0

    .line 120
    .local v10, node:Ljava/lang/Object;,"TEntry;"
    invoke-virtual {p0, v10}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v10, v13}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    move-object v13, v10

    .line 124
    .local v13, prev:Ljava/lang/Object;,"TEntry;"
    if-nez v0, :cond_1

    .line 125
    move-object v0, v13

    .line 128
    .end local v10           #node:Ljava/lang/Object;,"TEntry;"
    .end local v13           #prev:Ljava/lang/Object;,"TEntry;"
    :cond_2
    move-object v1, v0

    .local v1, element:Ljava/lang/Object;,"TEntry;"
    :goto_0
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 131
    .local v9, next:Ljava/lang/Object;,"TEntry;"
    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 132
    .local v2, hash:I
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v5

    .line 133
    .local v5, j:I
    aget-object v3, v8, v5

    .line 134
    .local v3, head:Ljava/lang/Object;,"TEntry;"
    invoke-virtual {p0, v1, v3}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    aput-object v1, v8, v5

    .line 136
    move-object v1, v9

    .line 137
    goto :goto_0

    .line 139
    .end local v0           #chain:Ljava/lang/Object;,"TEntry;"
    .end local v1           #element:Ljava/lang/Object;,"TEntry;"
    .end local v2           #hash:I
    .end local v3           #head:Ljava/lang/Object;,"TEntry;"
    .end local v5           #j:I
    .end local v9           #next:Ljava/lang/Object;,"TEntry;"
    :cond_3
    return-void
.end method

.method protected abstract setEntryNext(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;TEntry;)V"
        }
    .end annotation
.end method

.method protected abstract setEntryValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;TV;)V"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .prologue
    .line 151
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    return v0
.end method
