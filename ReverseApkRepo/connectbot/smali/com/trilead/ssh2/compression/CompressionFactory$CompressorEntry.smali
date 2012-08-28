.class Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
.super Ljava/lang/Object;
.source "CompressionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/compression/CompressionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompressorEntry"
.end annotation


# instance fields
.field compressorClass:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "compressorClass"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    .line 36
    return-void
.end method
