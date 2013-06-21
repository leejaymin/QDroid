.class public Lgnu/lists/FVector;
.super Lgnu/lists/SimpleVector;
.source "FVector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/Consumable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[Ljava/lang/Object;


# instance fields
.field public data:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lgnu/lists/FVector;->empty:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 21
    sget-object v0, Lgnu/lists/FVector;->empty:[Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 25
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 26
    iput p1, p0, Lgnu/lists/FVector;->size:I

    .line 27
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .parameter "num"
    .parameter "o"

    .prologue
    .line 31
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 32
    new-array v0, p1, [Ljava/lang/Object;

    .line 33
    .local v0, data:[Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 35
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 36
    aput-object p2, v0, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1           #i:I
    :cond_0
    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 39
    iput p1, p0, Lgnu/lists/FVector;->size:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 51
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, p1}, Lgnu/lists/FVector;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 44
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lgnu/lists/FVector;->size:I

    .line 46
    iput-object p1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 110
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .local v0, d:[Ljava/lang/Object;
    move v1, p1

    .line 111
    .end local p1
    .local v1, start:I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 112
    add-int/lit8 p1, v1, 0x1

    .end local v1           #start:I
    .restart local p1
    const/4 v2, 0x0

    aput-object v2, v0, v1

    move v1, p1

    .end local p1
    .restart local v1       #start:I
    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 12
    .parameter "obj"

    .prologue
    .line 136
    move-object v0, p1

    check-cast v0, Lgnu/lists/FVector;

    move-object v10, v0

    .line 137
    .local v10, vec2:Lgnu/lists/FVector;
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 138
    .local v2, d1:[Ljava/lang/Object;
    iget-object v3, v10, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 139
    .local v3, d2:[Ljava/lang/Object;
    iget v6, p0, Lgnu/lists/FVector;->size:I

    .line 140
    .local v6, n1:I
    iget v7, v10, Lgnu/lists/FVector;->size:I

    .line 141
    .local v7, n2:I
    if-le v6, v7, :cond_0

    move v5, v7

    .line 142
    .local v5, n:I
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 144
    aget-object v8, v2, v4

    check-cast v8, Ljava/lang/Comparable;

    .line 145
    .local v8, v1:Ljava/lang/Comparable;
    aget-object v9, v3, v4

    check-cast v9, Ljava/lang/Comparable;

    .line 146
    .local v9, v2:Ljava/lang/Comparable;
    invoke-interface {v8, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 147
    .local v1, d:I
    if-eqz v1, :cond_1

    move v11, v1

    .line 150
    .end local v1           #d:I
    .end local v8           #v1:Ljava/lang/Comparable;
    .end local v9           #v2:Ljava/lang/Comparable;
    :goto_2
    return v11

    .end local v4           #i:I
    .end local v5           #n:I
    :cond_0
    move v5, v6

    .line 141
    goto :goto_0

    .line 142
    .restart local v1       #d:I
    .restart local v4       #i:I
    .restart local v5       #n:I
    .restart local v8       #v1:Ljava/lang/Comparable;
    .restart local v9       #v2:Ljava/lang/Comparable;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 150
    .end local v1           #d:I
    .end local v8           #v1:Ljava/lang/Comparable;
    .end local v9           #v2:Ljava/lang/Comparable;
    :cond_2
    sub-int v11, v6, v7

    goto :goto_2
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 194
    const-string v2, "#vector"

    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 195
    iget v1, p0, Lgnu/lists/FVector;->size:I

    .line 196
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 197
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {p1}, Lgnu/lists/Consumer;->endElement()V

    .line 199
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2
    .parameter "ipos"
    .parameter "out"

    .prologue
    .line 173
    ushr-int/lit8 v0, p1, 0x1

    .line 174
    .local v0, index:I
    iget v1, p0, Lgnu/lists/FVector;->size:I

    if-lt v0, v1, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 177
    :goto_0
    return v1

    .line 176
    :cond_0
    iget-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3
    .parameter "iposStart"
    .parameter "iposEnd"
    .parameter "out"

    .prologue
    .line 182
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    return-void

    .line 184
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    .line 185
    .local v1, i:I
    ushr-int/lit8 v0, p2, 0x1

    .line 186
    .local v0, end:I
    iget v2, p0, Lgnu/lists/FVector;->size:I

    if-le v0, v2, :cond_2

    .line 187
    iget v0, p0, Lgnu/lists/FVector;->size:I

    .line 188
    :cond_2
    :goto_0
    if-ge v1, v0, :cond_0

    .line 189
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "obj"

    .prologue
    const/4 v8, 0x0

    .line 117
    if-eqz p1, :cond_0

    instance-of v6, p1, Lgnu/lists/FVector;

    if-nez v6, :cond_1

    :cond_0
    move v6, v8

    .line 130
    :goto_0
    return v6

    .line 119
    :cond_1
    move-object v0, p1

    check-cast v0, Lgnu/lists/FVector;

    move-object v4, v0

    .line 120
    .local v4, obj_vec:Lgnu/lists/FVector;
    iget v2, p0, Lgnu/lists/FVector;->size:I

    .line 121
    .local v2, n:I
    iget-object v6, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget v6, v4, Lgnu/lists/FVector;->size:I

    if-eq v6, v2, :cond_3

    :cond_2
    move v6, v8

    .line 122
    goto :goto_0

    .line 123
    :cond_3
    iget-object v5, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 124
    .local v5, this_data:[Ljava/lang/Object;
    iget-object v3, v4, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 125
    .local v3, obj_data:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 127
    aget-object v6, v5, v1

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v8

    .line 128
    goto :goto_0

    .line 125
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    :cond_5
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 96
    iget v0, p0, Lgnu/lists/FVector;->size:I

    if-lt p1, v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 91
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 219
    .local v2, n:I
    new-array v0, v2, [Ljava/lang/Object;

    .line 220
    .local v0, data:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 221
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iput v2, p0, Lgnu/lists/FVector;->size:I

    .line 223
    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public final setAll(Ljava/lang/Object;)V
    .locals 2
    .parameter "new_value"

    .prologue
    .line 166
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 167
    .local v0, d:[Ljava/lang/Object;
    iget v1, p0, Lgnu/lists/FVector;->size:I

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 168
    aput-object p1, v0, v1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 103
    iget-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 104
    .local v0, old:Ljava/lang/Object;
    iget-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 105
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 5
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    array-length v0, v2

    .line 73
    .local v0, oldLength:I
    if-eq v0, p1, :cond_0

    .line 75
    new-array v1, p1, [Ljava/lang/Object;

    .line 76
    .local v1, tmp:[Ljava/lang/Object;
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-ge v0, p1, :cond_1

    move v3, v0

    :goto_0
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iput-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 80
    .end local v1           #tmp:[Ljava/lang/Object;
    :cond_0
    return-void

    .restart local v1       #tmp:[Ljava/lang/Object;
    :cond_1
    move v3, p1

    .line 76
    goto :goto_0
.end method

.method public shift(III)V
    .locals 2
    .parameter "srcStart"
    .parameter "dstStart"
    .parameter "count"

    .prologue
    .line 86
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    iget-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget v1, p0, Lgnu/lists/FVector;->size:I

    .line 210
    .local v1, n:I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 212
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method
