.class public Lorg/mozilla/javascript/Kit;
.super Ljava/lang/Object;
.source "Kit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Kit$ComplexKey;
    }
.end annotation


# static fields
.field private static Throwable_initCause:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v2, 0x0

    sput-object v2, Lorg/mozilla/javascript/Kit;->Throwable_initCause:Ljava/lang/reflect/Method;

    .line 62
    :try_start_0
    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, ThrowableClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 64
    .local v1, signature:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v2, "initCause"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/mozilla/javascript/Kit;->Throwable_initCause:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0           #ThrowableClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #signature:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method

.method public static addListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "bag"
    .parameter "listener"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 229
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 230
    :cond_0
    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 232
    :cond_1
    if-nez p0, :cond_2

    .line 233
    move-object p0, p1

    .line 247
    .end local p0
    :goto_0
    return-object p0

    .line 234
    .restart local p0
    :cond_2
    instance-of v5, p0, [Ljava/lang/Object;

    if-nez v5, :cond_3

    .line 235
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v5, 0x1

    aput-object p1, v3, v5

    .local v3, bag:[Ljava/lang/Object;
    move-object p0, v3

    goto :goto_0

    .line 237
    .end local v3           #bag:[Ljava/lang/Object;
    :cond_3
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 238
    .local v2, array:[Ljava/lang/Object;
    array-length v1, v2

    .line 240
    .local v1, L:I
    if-ge v1, v7, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 241
    :cond_4
    add-int/lit8 v5, v1, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    .line 242
    .local v4, tmp:[Ljava/lang/Object;
    invoke-static {v2, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    aput-object p1, v4, v1

    .line 244
    move-object p0, v4

    .local p0, bag:[Ljava/lang/Object;
    goto :goto_0
.end method

.method public static classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "loader"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 100
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    goto :goto_1

    .line 95
    :catch_2
    move-exception v0

    goto :goto_1

    .line 96
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static classOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 82
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    goto :goto_1

    .line 77
    :catch_2
    move-exception v0

    goto :goto_1

    .line 78
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static codeBug()Ljava/lang/RuntimeException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FAILED ASSERTION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 452
    throw v0
.end method

.method public static codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED ASSERTION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 468
    throw v0
.end method

.method public static getListener(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .parameter "bag"
    .parameter "index"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    if-nez p1, :cond_3

    .line 317
    if-nez p0, :cond_0

    move-object v3, v4

    .line 340
    .end local p0
    :goto_0
    return-object v3

    .line 319
    .restart local p0
    :cond_0
    instance-of v3, p0, [Ljava/lang/Object;

    if-nez v3, :cond_1

    move-object v3, p0

    .line 320
    goto :goto_0

    .line 321
    :cond_1
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 323
    .local v2, array:[Ljava/lang/Object;
    array-length v3, v2

    if-ge v3, v6, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 324
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v2, v3

    goto :goto_0

    .line 325
    .end local v2           #array:[Ljava/lang/Object;
    .restart local p0
    :cond_3
    if-ne p1, v5, :cond_6

    .line 326
    instance-of v3, p0, [Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 327
    if-nez p0, :cond_4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_4
    move-object v3, v4

    .line 328
    goto :goto_0

    .line 330
    :cond_5
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 332
    .restart local v2       #array:[Ljava/lang/Object;
    aget-object v3, v2, v5

    goto :goto_0

    .line 335
    .end local v2           #array:[Ljava/lang/Object;
    .restart local p0
    :cond_6
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 336
    .restart local v2       #array:[Ljava/lang/Object;
    array-length v1, v2

    .line 337
    .local v1, L:I
    if-ge v1, v6, :cond_7

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 338
    :cond_7
    if-ne p1, v1, :cond_8

    move-object v3, v4

    .line 339
    goto :goto_0

    .line 340
    :cond_8
    aget-object v3, v2, p1

    goto :goto_0
.end method

.method public static initCause(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .parameter "ex"
    .parameter "cause"

    .prologue
    .line 140
    sget-object v1, Lorg/mozilla/javascript/Kit;->Throwable_initCause:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 143
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/Kit;->Throwable_initCause:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 144
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static initHash(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "key"
    .parameter "initialValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 347
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    .local v0, current:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 349
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_0
    monitor-exit p0

    .line 354
    return-object p2

    .line 351
    :cond_0
    move-object p2, v0

    goto :goto_0

    .line 353
    .end local v0           #current:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeHashKeyFromPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 390
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 391
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 392
    :cond_1
    new-instance v0, Lorg/mozilla/javascript/Kit$ComplexKey;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/Kit$ComplexKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 112
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    goto :goto_1

    .line 109
    :catch_2
    move-exception v0

    goto :goto_1

    .line 110
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static readReader(Ljava/io/Reader;)Ljava/lang/String;
    .locals 6
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 398
    const/16 v4, 0x200

    new-array v0, v4, [C

    .line 399
    .local v0, buffer:[C
    const/4 v1, 0x0

    .line 401
    .local v1, cursor:I
    :cond_0
    :goto_0
    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, v0, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 402
    .local v2, n:I
    if-gez v2, :cond_1

    .line 410
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 403
    :cond_1
    add-int/2addr v1, v2

    .line 404
    array-length v4, v0

    if-ne v1, v4, :cond_0

    .line 405
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    .line 406
    .local v3, tmp:[C
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    move-object v0, v3

    goto :goto_0
.end method

.method public static readStream(Ljava/io/InputStream;I)[B
    .locals 7
    .parameter "is"
    .parameter "initialBufferCapacity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 416
    if-gtz p1, :cond_0

    .line 417
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad initialBufferCapacity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 420
    :cond_0
    new-array v0, p1, [B

    .line 421
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 423
    .local v1, cursor:I
    :cond_1
    :goto_0
    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 424
    .local v2, n:I
    if-gez v2, :cond_3

    .line 432
    array-length v4, v0

    if-eq v1, v4, :cond_2

    .line 433
    new-array v3, v1, [B

    .line 434
    .local v3, tmp:[B
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    move-object v0, v3

    .line 437
    .end local v3           #tmp:[B
    :cond_2
    return-object v0

    .line 425
    :cond_3
    add-int/2addr v1, v2

    .line 426
    array-length v4, v0

    if-ne v1, v4, :cond_1

    .line 427
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 428
    .restart local v3       #tmp:[B
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    move-object v0, v3

    goto :goto_0
.end method

.method public static removeListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "bag"
    .parameter "listener"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 268
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 269
    :cond_0
    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 271
    :cond_1
    if-ne p0, p1, :cond_3

    .line 272
    const/4 p0, 0x0

    .line 299
    .end local p0
    :cond_2
    :goto_0
    return-object p0

    .line 273
    .restart local p0
    :cond_3
    instance-of v5, p0, [Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 274
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 275
    .local v2, array:[Ljava/lang/Object;
    array-length v1, v2

    .line 277
    .local v1, L:I
    if-ge v1, v8, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 278
    :cond_4
    if-ne v1, v8, :cond_6

    .line 279
    aget-object v5, v2, v7

    if-ne v5, p1, :cond_5

    .line 280
    aget-object p0, v2, v6

    goto :goto_0

    .line 281
    :cond_5
    aget-object v5, v2, v6

    if-ne v5, p1, :cond_2

    .line 282
    aget-object p0, v2, v7

    goto :goto_0

    .line 285
    :cond_6
    move v3, v1

    .line 287
    .local v3, i:I
    :cond_7
    add-int/lit8 v3, v3, -0x1

    .line 288
    aget-object v5, v2, v3

    if-ne v5, p1, :cond_8

    .line 289
    sub-int v5, v1, v7

    new-array v4, v5, [Ljava/lang/Object;

    .line 290
    .local v4, tmp:[Ljava/lang/Object;
    invoke-static {v2, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x1

    sub-int v6, v1, v6

    invoke-static {v2, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    move-object p0, v4

    .line 293
    .local p0, bag:[Ljava/lang/Object;
    goto :goto_0

    .line 295
    .end local v4           #tmp:[Ljava/lang/Object;
    .local p0, bag:Ljava/lang/Object;
    :cond_8
    if-nez v3, :cond_7

    goto :goto_0
.end method

.method static testIfCanLoadRhinoClasses(Ljava/lang/ClassLoader;)Z
    .locals 3
    .parameter "loader"

    .prologue
    .line 120
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    .line 121
    .local v0, testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 122
    .local v1, x:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v1, v0, :cond_0

    .line 127
    const/4 v2, 0x0

    .line 129
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static xDigitToInt(II)I
    .locals 1
    .parameter "c"
    .parameter "accumulator"

    .prologue
    .line 160
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 161
    add-int/lit8 p0, p0, -0x30

    .line 162
    if-ltz p0, :cond_2

    .line 176
    :goto_0
    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    :goto_1
    return v0

    .line 163
    :cond_0
    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 164
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    .line 165
    add-int/lit8 p0, p0, -0x37

    .line 166
    goto :goto_0

    .line 168
    :cond_1
    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 169
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    .line 170
    add-int/lit8 p0, p0, -0x57

    .line 171
    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method
