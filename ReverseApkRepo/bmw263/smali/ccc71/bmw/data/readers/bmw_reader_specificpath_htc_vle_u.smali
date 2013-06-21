.class public Lccc71/bmw/data/readers/bmw_reader_specificpath_htc_vle_u;
.super Lccc71/bmw/data/readers/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lccc71/bmw/data/readers/a;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lccc71/bmw/data/readers/bmw_reader_specificpath_htc_vle_u;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    neg-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 20
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 21
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
