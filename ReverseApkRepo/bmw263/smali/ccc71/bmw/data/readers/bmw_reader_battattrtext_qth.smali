.class public Lccc71/bmw/data/readers/bmw_reader_battattrtext_qth;
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
    .line 19
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_qth;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 49
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 50
    return-void

    .line 24
    :cond_2
    const-string v2, "batt_current: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0

    .line 28
    :cond_3
    const-string v2, "batt_discharge_current: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    sget v2, Lccc71/bmw/lib/bmw_watcher;->f:I

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v2, v1

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 31
    sget-boolean v1, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-nez v1, :cond_1

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-ltz v1, :cond_0

    goto :goto_1

    .line 34
    :cond_4
    const-string v2, "Qth: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    const/16 v2, 0x64

    if-ge v1, v2, :cond_5

    .line 41
    sget v2, Lccc71/bmw/lib/bmw_watcher;->f:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_1

    .line 43
    :cond_5
    sget v2, Lccc71/bmw/lib/bmw_watcher;->f:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
