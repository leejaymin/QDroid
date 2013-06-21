.class Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;
.super Ljava/io/Reader;
.source "InputStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jibx/runtime/impl/InputStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedStreamISO88591Reader"
.end annotation


# instance fields
.field private final this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;


# direct methods
.method private constructor <init>(Lorg/jibx/runtime/impl/InputStreamWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    return-void
.end method

.method constructor <init>(Lorg/jibx/runtime/impl/InputStreamWrapper;Lorg/jibx/runtime/impl/InputStreamWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;-><init>(Lorg/jibx/runtime/impl/InputStreamWrapper;)V

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
    .line 572
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-virtual {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->close()V

    .line 573
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
    .line 626
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$700(Lorg/jibx/runtime/impl/InputStreamWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const/4 v0, -0x1

    .line 629
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$308(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
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
    .line 619
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->read([CII)I

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
    .line 581
    add-int v5, p2, p3

    .line 582
    .local v5, end:I
    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    .line 583
    .local v3, empty:I
    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B

    move-result-object v2

    .line 584
    .local v2, buff:[B
    :goto_0
    if-ge p2, v5, :cond_5

    .line 587
    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v9

    sub-int v1, v9, v3

    .line 588
    .local v1, avail:I
    if-nez v1, :cond_0

    .line 589
    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9, v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$302(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    .line 590
    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$700(Lorg/jibx/runtime/impl/InputStreamWrapper;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 591
    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v3

    .line 592
    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v9

    sub-int v1, v9, v3

    .line 600
    :cond_0
    sub-int v8, v5, p2

    .line 601
    .local v8, use:I
    if-le v8, v1, :cond_1

    .line 602
    move v8, v1

    .line 606
    :cond_1
    add-int v6, v3, v8

    .local v6, limit:I
    move v4, v3

    .end local v3           #empty:I
    .local v4, empty:I
    move v7, p2

    .line 607
    .end local p2
    .local v7, off:I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 608
    add-int/lit8 p2, v7, 0x1

    .end local v7           #off:I
    .restart local p2
    add-int/lit8 v3, v4, 0x1

    .end local v4           #empty:I
    .restart local v3       #empty:I
    aget-byte v9, v2, v4

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    aput-char v9, p1, v7

    move v4, v3

    .end local v3           #empty:I
    .restart local v4       #empty:I
    move v7, p2

    .end local p2
    .restart local v7       #off:I
    goto :goto_1

    .line 594
    .end local v4           #empty:I
    .end local v6           #limit:I
    .end local v7           #off:I
    .end local v8           #use:I
    .restart local v3       #empty:I
    .restart local p2
    :cond_2
    add-int v9, p3, p2

    sub-int v0, v9, v5

    .line 595
    .local v0, actual:I
    if-lez v0, :cond_3

    .line 612
    .end local v0           #actual:I
    .end local v1           #avail:I
    :goto_2
    return v0

    .line 595
    .restart local v0       #actual:I
    .restart local v1       #avail:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .end local v0           #actual:I
    .end local v3           #empty:I
    .end local p2
    .restart local v4       #empty:I
    .restart local v6       #limit:I
    .restart local v7       #off:I
    .restart local v8       #use:I
    :cond_4
    move v3, v4

    .end local v4           #empty:I
    .restart local v3       #empty:I
    move p2, v7

    .line 610
    .end local v7           #off:I
    .restart local p2
    goto :goto_0

    .line 611
    .end local v1           #avail:I
    .end local v6           #limit:I
    .end local v8           #use:I
    :cond_5
    iget-object v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v9, v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$302(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I

    move v0, p3

    .line 612
    goto :goto_2
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-static {v0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I

    move-result v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;->this$0:Lorg/jibx/runtime/impl/InputStreamWrapper;

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
