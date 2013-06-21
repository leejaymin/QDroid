.class public Lccc71/bmw/data/readers/bmw_reader_ec_battery;
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
    const/16 v3, 0xa

    .line 18
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lccc71/bmw/data/readers/bmw_reader_ec_battery;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 33
    return-void

    .line 23
    :cond_2
    const-string v2, "current = "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 26
    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    const v2, 0xfa00

    if-le v1, v2, :cond_1

    .line 27
    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    const/high16 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
