.class final Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;
.super Ljava/lang/Object;
.source "IdScriptableObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/IdScriptableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrototypeValues"
.end annotation


# static fields
.field private static final NAME_SLOT:I = 0x1

.field private static final SLOT_SPAN:I = 0x2

.field private static final VALUE_SLOT:I = 0x0

.field static final serialVersionUID:J = 0x2a2b6fc82e6217a3L


# instance fields
.field private volatile attributeArray:[S

.field private constructor:Lorg/mozilla/javascript/IdFunctionObject;

.field private constructorAttrs:S

.field constructorId:I

.field private volatile lastFoundId:I

.field private maxId:I

.field private obj:Lorg/mozilla/javascript/IdScriptableObject;

.field private volatile valueArray:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/IdScriptableObject;I)V
    .locals 1
    .parameter "obj"
    .parameter "maxId"

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->lastFoundId:I

    .line 89
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_0
    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    .line 92
    iput p2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    .line 93
    return-void
.end method

.method private ensureId(I)Ljava/lang/Object;
    .locals 7
    .parameter "id"

    .prologue
    .line 301
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    .line 302
    .local v0, array:[Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    .line 305
    if-nez v0, :cond_0

    .line 306
    iget v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    .line 307
    iput-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    .line 308
    iget v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    new-array v3, v3, [S

    iput-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    .line 310
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_1
    const/4 v3, 0x1

    sub-int v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, 0x0

    .line 313
    .local v2, valueSlot:I
    aget-object v1, v0, v2

    .line 314
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 315
    iget v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-ne p1, v3, :cond_2

    .line 316
    iget v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    const-string v4, "constructor"

    iget-object v5, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    iget-short v6, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorAttrs:S

    invoke-direct {p0, v3, v4, v5, v6}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->initSlot(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 318
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    .line 322
    :goto_0
    aget-object v1, v0, v2

    .line 323
    if-nez v1, :cond_3

    .line 324
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".initPrototypeId(int id) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "did not initialize id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    .end local v1           #value:Ljava/lang/Object;
    .end local v2           #valueSlot:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 320
    .restart local v1       #value:Ljava/lang/Object;
    .restart local v2       #valueSlot:I
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeId(I)V

    goto :goto_0

    .line 329
    :cond_3
    return-object v1
.end method

.method private initSlot(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 6
    .parameter "id"
    .parameter "name"
    .parameter "value"
    .parameter "attributes"

    .prologue
    const/4 v4, 0x1

    .line 127
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    .line 128
    .local v0, array:[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 129
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 131
    :cond_0
    if-nez p3, :cond_1

    .line 132
    sget-object p3, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    .line 134
    .end local p3
    :cond_1
    sub-int v3, p1, v4

    mul-int/lit8 v1, v3, 0x2

    .line 135
    .local v1, index:I
    monitor-enter p0

    .line 136
    add-int/lit8 v3, v1, 0x0

    :try_start_0
    aget-object v2, v0, v3

    .line 137
    .local v2, value2:Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 138
    add-int/lit8 v3, v1, 0x0

    aput-object p3, v0, v3

    .line 139
    add-int/lit8 v3, v1, 0x1

    aput-object p2, v0, v3

    .line 140
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    sub-int v4, p1, v4

    int-to-short v5, p4

    aput-short v5, v3, v4

    .line 145
    :cond_2
    monitor-exit p0

    .line 146
    return-void

    .line 142
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 143
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 145
    .end local v2           #value2:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method final createPrecachedConstructor()Lorg/mozilla/javascript/IdFunctionObject;
    .locals 3

    .prologue
    .line 150
    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    .line 152
    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No id for constructor property"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    iget v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeId(I)V

    .line 157
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".initPrototypeId() did not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "initialize id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v1}, Lorg/mozilla/javascript/IdScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->initFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V

    .line 164
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    .line 165
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    return-object v0
.end method

.method final delete(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 238
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->ensureId(I)Ljava/lang/Object;

    .line 239
    iget-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    sub-int v3, p1, v4

    aget-short v0, v2, v3

    .line 240
    .local v0, attr:I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    .line 241
    sub-int v2, p1, v4

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x0

    .line 242
    .local v1, valueSlot:I
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 244
    iget-object v2, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    sub-int v3, p1, v4

    const/4 v4, 0x0

    aput-short v4, v2, v3

    .line 245
    monitor-exit p0

    .line 247
    .end local v1           #valueSlot:I
    :cond_0
    return-void

    .line 245
    .restart local v1       #valueSlot:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method final findId(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 170
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    .line 171
    .local v0, array:[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 172
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Ljava/lang/String;)I

    move-result v3

    .line 185
    :goto_0
    return v3

    .line 174
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->lastFoundId:I

    .line 175
    .local v1, id:I
    sub-int v3, v1, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v3, v0, v3

    if-ne p1, v3, :cond_1

    move v3, v1

    .line 176
    goto :goto_0

    .line 178
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Ljava/lang/String;)I

    move-result v1

    .line 179
    if-eqz v1, :cond_2

    .line 180
    sub-int v3, v1, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, 0x1

    .line 182
    .local v2, nameSlot:I
    aput-object p1, v0, v2

    .line 183
    iput v1, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->lastFoundId:I

    .end local v2           #nameSlot:I
    :cond_2
    move v3, v1

    .line 185
    goto :goto_0
.end method

.method final get(I)Ljava/lang/Object;
    .locals 2
    .parameter "id"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->ensureId(I)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, value:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method final getAttributes(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->ensureId(I)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aget-short v0, v0, v1

    return v0
.end method

.method final getMaxId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    return v0
.end method

.method final getNames(Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 13
    .parameter "getAll"
    .parameter "extraEntries"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 266
    const/4 v6, 0x0

    .line 267
    .local v6, names:[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 268
    .local v0, count:I
    const/4 v3, 0x1

    .local v3, id:I
    :goto_0
    iget v9, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    if-gt v3, v9, :cond_3

    .line 269
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->ensureId(I)Ljava/lang/Object;

    move-result-object v8

    .line 270
    .local v8, value:Ljava/lang/Object;
    if-nez p1, :cond_0

    iget-object v9, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    sub-int v10, v3, v12

    aget-short v9, v9, v10

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    .line 271
    :cond_0
    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v8, v9, :cond_2

    .line 272
    sub-int v9, v3, v12

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v5, v9, 0x1

    .line 273
    .local v5, nameSlot:I
    iget-object v9, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    aget-object v4, v9, v5

    check-cast v4, Ljava/lang/String;

    .line 274
    .local v4, name:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 275
    iget v9, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    new-array v6, v9, [Ljava/lang/Object;

    .line 277
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aput-object v4, v6, v0

    move v0, v1

    .line 268
    .end local v1           #count:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameSlot:I
    .restart local v0       #count:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v8           #value:Ljava/lang/Object;
    :cond_3
    if-nez v0, :cond_4

    move-object v9, p2

    .line 295
    :goto_1
    return-object v9

    .line 283
    :cond_4
    if-eqz p2, :cond_5

    array-length v9, p2

    if-nez v9, :cond_7

    .line 284
    :cond_5
    array-length v9, v6

    if-eq v0, v9, :cond_6

    .line 285
    new-array v7, v0, [Ljava/lang/Object;

    .line 286
    .local v7, tmp:[Ljava/lang/Object;
    invoke-static {v6, v11, v7, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    move-object v6, v7

    .end local v7           #tmp:[Ljava/lang/Object;
    :cond_6
    move-object v9, v6

    .line 289
    goto :goto_1

    .line 291
    :cond_7
    array-length v2, p2

    .line 292
    .local v2, extra:I
    add-int v9, v2, v0

    new-array v7, v9, [Ljava/lang/Object;

    .line 293
    .restart local v7       #tmp:[Ljava/lang/Object;
    invoke-static {p2, v11, v7, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-static {v6, v11, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v7

    .line 295
    goto :goto_1
.end method

.method final has(I)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 190
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    .line 191
    .local v0, array:[Ljava/lang/Object;
    if-nez v0, :cond_0

    move v3, v4

    .line 201
    :goto_0
    return v3

    .line 195
    :cond_0
    sub-int v3, p1, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, 0x0

    .line 196
    .local v2, valueSlot:I
    aget-object v1, v0, v2

    .line 197
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_1

    move v3, v4

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final initValue(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "value"
    .parameter "attributes"

    .prologue
    .line 102
    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->maxId:I

    if-le p1, v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_1
    if-nez p2, :cond_2

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p3, v0, :cond_3

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :cond_3
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    .line 109
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->findPrototypeId(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_4

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_4
    iget v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    if-ne p1, v0, :cond_6

    .line 113
    instance-of v0, p3, Lorg/mozilla/javascript/IdFunctionObject;

    if-nez v0, :cond_5

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consructor should be initialized with IdFunctionObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_5
    check-cast p3, Lorg/mozilla/javascript/IdFunctionObject;

    .end local p3
    iput-object p3, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructor:Lorg/mozilla/javascript/IdFunctionObject;

    .line 117
    int-to-short v0, p4

    iput-short v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorAttrs:S

    .line 122
    :goto_0
    return-void

    .line 121
    .restart local p3
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->initSlot(ILjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method final set(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 7
    .parameter "id"
    .parameter "start"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 215
    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p3, v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->ensureId(I)Ljava/lang/Object;

    .line 217
    iget-object v4, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    sub-int v5, p1, v6

    aget-short v0, v4, v5

    .line 218
    .local v0, attr:I
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_2

    .line 219
    iget-object v4, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->obj:Lorg/mozilla/javascript/IdScriptableObject;

    if-ne p2, v4, :cond_3

    .line 220
    if-nez p3, :cond_1

    .line 221
    sget-object p3, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    .line 223
    .end local p3
    :cond_1
    sub-int v4, p1, v6

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x0

    .line 224
    .local v3, valueSlot:I
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v4, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 226
    monitor-exit p0

    .line 234
    .end local v3           #valueSlot:I
    :cond_2
    :goto_0
    return-void

    .line 226
    .restart local v3       #valueSlot:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 229
    .end local v3           #valueSlot:I
    .restart local p3
    :cond_3
    sub-int v4, p1, v6

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x1

    .line 230
    .local v2, nameSlot:I
    iget-object v4, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->valueArray:[Ljava/lang/Object;

    aget-object v1, v4, v2

    check-cast v1, Ljava/lang/String;

    .line 231
    .local v1, name:Ljava/lang/String;
    invoke-interface {p2, v1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final setAttributes(II)V
    .locals 3
    .parameter "id"
    .parameter "attributes"

    .prologue
    .line 257
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    .line 258
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->ensureId(I)Ljava/lang/Object;

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->attributeArray:[S

    const/4 v1, 0x1

    sub-int v1, p1, v1

    int-to-short v2, p2

    aput-short v2, v0, v1

    .line 261
    monitor-exit p0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
