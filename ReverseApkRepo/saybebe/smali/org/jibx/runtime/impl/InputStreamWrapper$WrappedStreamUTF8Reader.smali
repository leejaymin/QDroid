.class Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;
.super Ljava/io/Reader;
.source "InputStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jibx/runtime/impl/InputStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedStreamUTF8Reader"
.end annotation


# instance fields
.field private final this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;


# direct methods
.method private constructor <init>(Lorg/jibx/runtime/impl/InputStreamWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    return-void
.end method

.method constructor <init>(Lorg/jibx/runtime/impl/InputStreamWrapper;Lorg/jibx/runtime/impl/InputStreamWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;-><init>(Lorg/jibx/runtime/impl/InputStreamWrapper;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-virtual {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->close()V

    .line 435
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 511
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$700(Lorg/jibx/runtime/impl/InputStreamWrapper;)Z

    .line 512
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 513
    const/4 v2, -0x1

    .line 541
    :goto_0
    return v2

    .line 518
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$308(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    aget-byte v0, v2, v3

    .line 519
    .local v0, byt:I
    if-ltz v0, :cond_1

    .line 522
    and-int/lit16 v2, v0, 0xff

    goto :goto_0

    .line 524
    :cond_1
    and-int/lit16 v2, v0, 0xe0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_3

    .line 527
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 529
    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x6

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v4}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$308(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v4

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v2, v3

    goto :goto_0

    .line 532
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "UTF-8 conversion error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 535
    :cond_3
    and-int/lit16 v2, v0, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_5

    .line 538
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 540
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$308(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    aget-byte v2, v2, v3

    and-int/lit8 v1, v2, 0x3f

    .line 541
    .local v1, byt2:I
    and-int/lit8 v2, v0, 0xf

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x6

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v4}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$308(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v4

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 544
    .end local v1           #byt2:I
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "UTF-8 conversion error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Surrogate pairs not yet supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public read([C)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 10
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    add-int v6, p2, p3

    .line 444
    .local v6, end:I
    iget-object v8, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v8}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v4

    .line 445
    .local v4, empty:I
    iget-object v8, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v8}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v1

    .local v1, buff:[B
    move v7, p2

    .line 446
    .end local p2
    .local v7, off:I
    :goto_0
    if-ge v7, v6, :cond_7

    .line 449
    add-int/lit8 v8, v4, 0x3

    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v9

    if-le v8, v9, :cond_1

    .line 450
    iget-object v8, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v8, v4}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$302(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    .line 451
    iget-object v8, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v8}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$700(Lorg/jibx/runtime/impl/InputStreamWrapper;)Z

    .line 452
    iget-object v8, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v8}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v4

    .line 453
    iget-object v8, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v8}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v8

    if-ne v4, v8, :cond_1

    .line 454
    add-int v8, p3, v7

    sub-int v0, v8, v6

    .line 455
    .local v0, actual:I
    if-lez v0, :cond_0

    .line 494
    .end local v0           #actual:I
    :goto_1
    return v0

    .line 455
    .restart local v0       #actual:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 460
    .end local v0           #actual:I
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4           #empty:I
    .local v5, empty:I
    aget-byte v2, v1, v4

    .line 461
    .local v2, byt:I
    if-ltz v2, :cond_2

    .line 464
    add-int/lit8 p2, v7, 0x1

    .end local v7           #off:I
    .restart local p2
    int-to-char v8, v2

    aput-char v8, p1, v7

    move v4, v5

    .end local v5           #empty:I
    .restart local v4       #empty:I
    :goto_2
    move v7, p2

    .line 492
    .end local p2
    .restart local v7       #off:I
    goto :goto_0

    .line 466
    .end local v4           #empty:I
    .restart local v5       #empty:I
    :cond_2
    and-int/lit16 v8, v2, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_4

    .line 469
    iget-object v8, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v8}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 471
    add-int/lit8 p2, v7, 0x1

    .end local v7           #off:I
    .restart local p2
    and-int/lit8 v8, v2, 0x1f

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v4, v5, 0x1

    .end local v5           #empty:I
    .restart local v4       #empty:I
    aget-byte v9, v1, v5

    and-int/lit8 v9, v9, 0x3f

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p1, v7

    goto :goto_2

    .line 474
    .end local v4           #empty:I
    .end local p2
    .restart local v5       #empty:I
    .restart local v7       #off:I
    :cond_3
    new-instance v8, Ljava/io/IOException;

    const-string v9, "UTF-8 conversion error"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 477
    :cond_4
    and-int/lit16 v8, v2, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_6

    .line 480
    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 482
    add-int/lit8 v4, v5, 0x1

    .end local v5           #empty:I
    .restart local v4       #empty:I
    aget-byte v8, v1, v5

    and-int/lit8 v3, v8, 0x3f

    .line 483
    .local v3, byt2:I
    add-int/lit8 p2, v7, 0x1

    .end local v7           #off:I
    .restart local p2
    and-int/lit8 v8, v2, 0xf

    shl-int/lit8 v8, v8, 0x6

    add-int/2addr v8, v3

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #empty:I
    .restart local v5       #empty:I
    aget-byte v9, v1, v4

    and-int/lit8 v9, v9, 0x3f

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p1, v7

    move v4, v5

    .line 485
    .end local v5           #empty:I
    .restart local v4       #empty:I
    goto :goto_2

    .line 486
    .end local v3           #byt2:I
    .end local v4           #empty:I
    .end local p2
    .restart local v5       #empty:I
    .restart local v7       #off:I
    :cond_5
    new-instance v8, Ljava/io/IOException;

    const-string v9, "UTF-8 conversion error"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 490
    :cond_6
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Surrogate pairs not yet supported"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 493
    .end local v2           #byt:I
    .end local v5           #empty:I
    .restart local v4       #empty:I
    :cond_7
    iget-object v8, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v8, v4}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$302(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    move v0, p3

    .line 494
    goto :goto_1
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
