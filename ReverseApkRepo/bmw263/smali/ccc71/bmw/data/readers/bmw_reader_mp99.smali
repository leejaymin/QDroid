.class public Lccc71/bmw/data/readers/bmw_reader_mp99;
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
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lccc71/bmw/data/readers/bmw_reader_mp99;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 23
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    .line 24
    neg-int v0, v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 28
    :goto_0
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-nez v0, :cond_0

    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    const/16 v1, -0x64

    if-ge v0, v1, :cond_0

    .line 29
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    div-int/lit8 v0, v0, 0x64

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 30
    :cond_0
    return-void

    .line 26
    :cond_1
    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
