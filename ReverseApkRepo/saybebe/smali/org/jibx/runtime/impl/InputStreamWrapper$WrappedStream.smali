.class Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;
.super Ljava/io/InputStream;
.source "InputStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jibx/runtime/impl/InputStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedStream"
.end annotation


# instance fields
.field private final this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;


# direct methods
.method private constructor <init>(Lorg/jibx/runtime/impl/InputStreamWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    return-void
.end method

.method constructor <init>(Lorg/jibx/runtime/impl/InputStreamWrapper;Lorg/jibx/runtime/impl/InputStreamWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;-><init>(Lorg/jibx/runtime/impl/InputStreamWrapper;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$500(Lorg/jibx/runtime/impl/InputStreamWrapper;)Lorg/jibx/runtime/impl/IInByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jibx/runtime/impl/IInByteBuffer;->require(I)Z

    .line 352
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$500(Lorg/jibx/runtime/impl/InputStreamWrapper;)Lorg/jibx/runtime/impl/IInByteBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getBuffer()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$602(Lorg/jibx/runtime/impl/InputStreamWrapper;[B)[B

    .line 353
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$500(Lorg/jibx/runtime/impl/InputStreamWrapper;)Lorg/jibx/runtime/impl/IInByteBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getOffset()I

    move-result v1

    invoke-static {v0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$302(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    .line 354
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$500(Lorg/jibx/runtime/impl/InputStreamWrapper;)Lorg/jibx/runtime/impl/IInByteBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getLimit()I

    move-result v1

    invoke-static {v0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$402(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-virtual {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->close()V

    .line 364
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$700(Lorg/jibx/runtime/impl/InputStreamWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const/4 v0, -0x1

    .line 418
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$308(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v1

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, actual:I
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    sub-int v1, v2, v3

    .local v1, avail:I
    if-le p3, v1, :cond_2

    .line 373
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    add-int/2addr p2, v1

    .line 375
    sub-int/2addr p3, v1

    .line 376
    add-int/2addr v0, v1

    .line 377
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$302(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    .line 378
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$700(Lorg/jibx/runtime/impl/InputStreamWrapper;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    if-nez v0, :cond_1

    const/4 v2, -0x1

    .line 384
    :goto_0
    return v2

    :cond_1
    move v2, v0

    .line 379
    goto :goto_0

    .line 382
    :cond_2
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v2, p3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$312(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    .line 384
    add-int v2, v0, p3

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    move-wide v1, p1

    .line 400
    .local v1, remain:J
    :cond_0
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    iget-object v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v4}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v4

    sub-int v0, v3, v4

    .local v0, avail:I
    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 401
    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 402
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    iget-object v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v4}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$302(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    .line 403
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$700(Lorg/jibx/runtime/impl/InputStreamWrapper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    sub-long/2addr p1, v1

    .line 408
    .end local p1
    :goto_0
    return-wide p1

    .line 407
    .restart local p1
    :cond_1
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v3, v1, v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$314(Lorg/jibx/runtime/impl/InputStreamWrapper;J)I

    goto :goto_0
.end method
