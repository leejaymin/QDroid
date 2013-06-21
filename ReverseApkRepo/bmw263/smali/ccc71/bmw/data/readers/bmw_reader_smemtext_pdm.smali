.class public Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm;
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
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 18
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 21
    sget-boolean v1, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-nez v1, :cond_0

    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v1, :cond_4

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 51
    return-void

    .line 25
    :cond_2
    const-string v2, "I_MBAT: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0

    .line 36
    :cond_3
    const-string v2, "I_MBAT: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 34
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 40
    :cond_5
    const-string v2, "Pd: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    sget v2, Lccc71/bmw/lib/bmw_watcher;->f:I

    div-int v1, v2, v1

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
