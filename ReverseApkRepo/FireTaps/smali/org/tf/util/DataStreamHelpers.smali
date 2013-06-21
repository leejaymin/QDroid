.class public Lorg/tf/util/DataStreamHelpers;
.super Ljava/lang/Object;
.source "DataStreamHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTag(Ljava/io/DataInput;I)V
    .locals 6
    .parameter "input"
    .parameter "expectedTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 27
    .local v0, tag:I
    if-eq v0, p1, :cond_0

    .line 28
    new-instance v1, Ljava/io/IOException;

    .line 29
    const-string v2, "Invalid tag %08X (expecting %08X)."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 28
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_0
    return-void
.end method

.method public static inconsistentStateException()Ljava/io/IOException;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Inconsistent state."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
