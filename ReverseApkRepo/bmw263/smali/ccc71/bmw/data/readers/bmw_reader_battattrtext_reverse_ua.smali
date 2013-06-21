.class public Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;
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
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/16 v5, 0x64

    const/16 v4, 0xa

    .line 19
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 70
    return-void

    .line 24
    :cond_2
    const-string v2, "IBAT(uA): "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 27
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 30
    if-gt v1, v6, :cond_4

    .line 31
    if-le v1, v5, :cond_3

    .line 33
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x64

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 43
    :goto_1
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v1, :cond_1

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-lez v1, :cond_1

    .line 44
    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    neg-int v1, v1

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0

    .line 34
    :cond_3
    if-le v1, v4, :cond_4

    .line 35
    neg-int v1, v1

    div-int/lit8 v1, v1, 0xa

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_1

    .line 40
    :cond_4
    neg-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_1

    .line 48
    :cond_5
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    if-gt v1, v6, :cond_7

    .line 50
    if-le v1, v5, :cond_6

    .line 52
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x64

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 62
    :goto_2
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v1, :cond_1

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-lez v1, :cond_1

    .line 63
    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    neg-int v1, v1

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0

    .line 53
    :cond_6
    if-le v1, v4, :cond_7

    .line 54
    neg-int v1, v1

    div-int/lit8 v1, v1, 0xa

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_2

    .line 59
    :cond_7
    neg-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
