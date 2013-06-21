.class public Lorg/tf/util/DataInputBA;
.super Ljava/io/DataInputStream;
.source "DataInputBA.java"


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 26
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    return-void
.end method
