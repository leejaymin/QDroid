.class public Lorg/mozilla/javascript/ObjArray;
.super Ljava/lang/Object;
.source "ObjArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FIELDS_STORE_SIZE:I = 0x5

.field static final serialVersionUID:J = 0x39f02f75d6f74578L


# instance fields
.field private transient data:[Ljava/lang/Object;

.field private transient f0:Ljava/lang/Object;

.field private transient f1:Ljava/lang/Object;

.field private transient f2:Ljava/lang/Object;

.field private transient f3:Ljava/lang/Object;

.field private transient f4:Ljava/lang/Object;

.field private sealed:Z

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 7
    .parameter "minimalCapacity"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 310
    sub-int v1, p1, v5

    .line 311
    .local v1, required:I
    if-gtz v1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 312
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 313
    const/16 v0, 0xa

    .line 314
    .local v0, alloc:I
    if-ge v0, v1, :cond_1

    .line 315
    move v0, v1

    .line 317
    :cond_1
    new-array v3, v0, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 319
    .end local v0           #alloc:I
    :cond_3
    iget-object v3, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    array-length v0, v3

    .line 320
    .restart local v0       #alloc:I
    if-ge v0, v1, :cond_2

    .line 321
    if-gt v0, v5, :cond_6

    .line 322
    const/16 v0, 0xa

    .line 326
    :goto_1
    if-ge v0, v1, :cond_4

    .line 327
    move v0, v1

    .line 329
    :cond_4
    new-array v2, v0, [Ljava/lang/Object;

    .line 330
    .local v2, tmp:[Ljava/lang/Object;
    iget v3, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-le v3, v5, :cond_5

    .line 331
    iget-object v3, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    iget v4, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    :cond_5
    iput-object v2, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    goto :goto_0

    .line 324
    .end local v2           #tmp:[Ljava/lang/Object;
    :cond_6
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method private getImpl(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 115
    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    const/4 v1, 0x5

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_0

    .line 113
    :pswitch_4
    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static onEmptyStackTopRead()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty stack"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static onInvalidIndex(II)Ljava/lang/RuntimeException;
    .locals 3
    .parameter "index"
    .parameter "upperBound"

    .prologue
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2209 [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static onSeledMutation()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to modify sealed array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    .line 369
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 370
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 371
    .local v0, N:I
    if-le v0, v3, :cond_0

    .line 372
    sub-int v3, v0, v3

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    .line 374
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v0, :cond_1

    .line 375
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 376
    .local v2, obj:Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v2           #obj:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private setImpl(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 126
    iget-object v0, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    const/4 v1, 0x5

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    .line 129
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    goto :goto_0

    .line 122
    :pswitch_1
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_0

    .line 123
    :pswitch_2
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_0

    .line 124
    :pswitch_3
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_0

    .line 125
    :pswitch_4
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 359
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 360
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 361
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v2

    .line 362
    .local v2, obj:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v2           #obj:Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 8
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v7, 0x5

    .line 201
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 202
    .local v0, N:I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lorg/mozilla/javascript/ObjArray;->onInvalidIndex(II)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 203
    :cond_1
    iget-boolean v2, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 205
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/ObjArray;->ensureCapacity(I)V

    .line 225
    if-eq p1, v0, :cond_3

    .line 226
    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int v3, p1, v7

    iget-object v4, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int v5, p1, v7

    add-int/lit8 v5, v5, 0x1

    sub-int v6, v0, p1

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    :cond_3
    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int v3, p1, v7

    aput-object p2, v2, v3

    .line 232
    :goto_1
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 233
    return-void

    .line 207
    :pswitch_0
    if-nez v0, :cond_4

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    goto :goto_1

    .line 208
    :cond_4
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    .local v1, tmp:Ljava/lang/Object;
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    move-object p2, v1

    .line 210
    .end local v1           #tmp:Ljava/lang/Object;
    :pswitch_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_1

    .line 211
    :cond_5
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    .restart local v1       #tmp:Ljava/lang/Object;
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    move-object p2, v1

    .line 213
    .end local v1           #tmp:Ljava/lang/Object;
    :pswitch_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_1

    .line 214
    :cond_6
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    .restart local v1       #tmp:Ljava/lang/Object;
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    move-object p2, v1

    .line 216
    .end local v1           #tmp:Ljava/lang/Object;
    :pswitch_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_1

    .line 217
    :cond_7
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    .restart local v1       #tmp:Ljava/lang/Object;
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    move-object p2, v1

    .line 219
    .end local v1           #tmp:Ljava/lang/Object;
    :pswitch_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_1

    .line 220
    :cond_8
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    .restart local v1       #tmp:Ljava/lang/Object;
    iput-object p2, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    move-object p2, v1

    .line 222
    const/4 p1, 0x5

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 190
    iget-boolean v1, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 191
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 192
    .local v0, N:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 193
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ObjArray;->ensureCapacity(I)V

    .line 195
    :cond_1
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 196
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    .line 197
    return-void
.end method

.method public final clear()V
    .locals 3

    .prologue
    .line 272
    iget-boolean v2, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 273
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 274
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v0, :cond_1

    .line 275
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 278
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 95
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ObjArray;->onInvalidIndex(II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 96
    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter "obj"

    .prologue
    .line 133
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 134
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eq v2, v0, :cond_2

    .line 135
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, current:Ljava/lang/Object;
    if-eq v1, p1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v2

    .line 140
    .end local v1           #current:Ljava/lang/Object;
    :goto_1
    return v3

    .line 134
    .restart local v1       #current:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v1           #current:Ljava/lang/Object;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSealed()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    .line 145
    iget v1, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .local v1, i:I
    :cond_0
    if-eqz v1, :cond_2

    .line 146
    add-int/lit8 v1, v1, -0x1

    .line 147
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, current:Ljava/lang/Object;
    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v2, v1

    .line 152
    .end local v0           #current:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 158
    .local v0, N:I
    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onEmptyStackTopRead()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 159
    :cond_0
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ObjArray;->getImpl(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final pop()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 164
    iget-boolean v2, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 165
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 166
    .local v0, N:I
    add-int/lit8 v0, v0, -0x1

    .line 168
    packed-switch v0, :pswitch_data_0

    .line 176
    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int v3, v0, v5

    aget-object v1, v2, v3

    .line 177
    .local v1, top:Ljava/lang/Object;
    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int v3, v0, v5

    aput-object v4, v2, v3

    .line 179
    :goto_0
    iput v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 180
    return-object v1

    .line 169
    .end local v1           #top:Ljava/lang/Object;
    :pswitch_0
    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onEmptyStackTopRead()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 170
    :pswitch_1
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    .restart local v1       #top:Ljava/lang/Object;
    iput-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    goto :goto_0

    .line 171
    .end local v1           #top:Ljava/lang/Object;
    :pswitch_2
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    .restart local v1       #top:Ljava/lang/Object;
    iput-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_0

    .line 172
    .end local v1           #top:Ljava/lang/Object;
    :pswitch_3
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    .restart local v1       #top:Ljava/lang/Object;
    iput-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_0

    .line 173
    .end local v1           #top:Ljava/lang/Object;
    :pswitch_4
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    .restart local v1       #top:Ljava/lang/Object;
    iput-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v1           #top:Ljava/lang/Object;
    :pswitch_5
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    .restart local v1       #top:Ljava/lang/Object;
    iput-object v4, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final push(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public final remove(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 237
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 238
    .local v0, N:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ObjArray;->onInvalidIndex(II)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 239
    :cond_1
    iget-boolean v1, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 240
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 241
    packed-switch p1, :pswitch_data_0

    .line 260
    :goto_0
    if-eq p1, v0, :cond_3

    .line 261
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int v2, p1, v7

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int v4, p1, v7

    sub-int v5, v0, p1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    :cond_3
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    sub-int v2, v0, v7

    aput-object v6, v1, v2

    .line 267
    :goto_1
    iput v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 268
    return-void

    .line 243
    :pswitch_0
    if-nez v0, :cond_4

    iput-object v6, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    goto :goto_1

    .line 244
    :cond_4
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    .line 246
    :pswitch_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iput-object v6, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    goto :goto_1

    .line 247
    :cond_5
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    .line 249
    :pswitch_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iput-object v6, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    goto :goto_1

    .line 250
    :cond_6
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    .line 252
    :pswitch_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iput-object v6, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    goto :goto_1

    .line 253
    :cond_7
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    .line 255
    :pswitch_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    iput-object v6, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    goto :goto_1

    .line 256
    :cond_8
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    .line 258
    const/4 p1, 0x5

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final seal()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    .line 64
    return-void
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 101
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ObjArray;->onInvalidIndex(II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 102
    :cond_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 103
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public final setSize(I)V
    .locals 3
    .parameter "newSize"

    .prologue
    .line 78
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 79
    :cond_0
    iget-boolean v2, p0, Lorg/mozilla/javascript/ObjArray;->sealed:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ObjArray;->onSeledMutation()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 80
    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 81
    .local v0, N:I
    if-ge p1, v0, :cond_2

    .line 82
    move v1, p1

    .local v1, i:I
    :goto_0
    if-eq v1, v0, :cond_3

    .line 83
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/ObjArray;->setImpl(ILjava/lang/Object;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1           #i:I
    :cond_2
    if-le p1, v0, :cond_3

    .line 86
    const/4 v2, 0x5

    if-le p1, v2, :cond_3

    .line 87
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjArray;->ensureCapacity(I)V

    .line 90
    :cond_3
    iput p1, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 91
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    return v0
.end method

.method public final toArray([Ljava/lang/Object;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;I)V

    .line 290
    return-void
.end method

.method public final toArray([Ljava/lang/Object;I)V
    .locals 5
    .parameter "array"
    .parameter "offset"

    .prologue
    .line 294
    iget v0, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    .line 295
    .local v0, N:I
    packed-switch v0, :pswitch_data_0

    .line 297
    iget-object v1, p0, Lorg/mozilla/javascript/ObjArray;->data:[Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x5

    const/4 v4, 0x5

    sub-int v4, v0, v4

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    :pswitch_0
    add-int/lit8 v1, p2, 0x4

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f4:Ljava/lang/Object;

    aput-object v2, p1, v1

    .line 300
    :pswitch_1
    add-int/lit8 v1, p2, 0x3

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f3:Ljava/lang/Object;

    aput-object v2, p1, v1

    .line 301
    :pswitch_2
    add-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f2:Ljava/lang/Object;

    aput-object v2, p1, v1

    .line 302
    :pswitch_3
    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f1:Ljava/lang/Object;

    aput-object v2, p1, v1

    .line 303
    :pswitch_4
    add-int/lit8 v1, p2, 0x0

    iget-object v2, p0, Lorg/mozilla/javascript/ObjArray;->f0:Ljava/lang/Object;

    aput-object v2, p1, v1

    .line 306
    :pswitch_5
    return-void

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 282
    iget v1, p0, Lorg/mozilla/javascript/ObjArray;->size:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 283
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;I)V

    .line 284
    return-object v0
.end method
