.class public Lorg/tf/util/DataOutputBA;
.super Ljava/io/DataOutputStream;
.source "DataOutputBA.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lorg/tf/util/DataOutputBA;-><init>(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/tf/util/DataOutputBA;->flush()V

    .line 36
    iget-object p0, p0, Lorg/tf/util/DataOutputBA;->out:Ljava/io/OutputStream;

    .end local p0
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
