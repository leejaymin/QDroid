.class public final Lccc71/pmw/a/as;
.super Lccc71/pmw/a/ad;
.source "SourceFile"


# static fields
.field private static c:Ljava/lang/String;

.field private static d:[Ljava/lang/String;


# instance fields
.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const-string v0, "/system/etc/init.d/99pmwsdcache"

    sput-object v0, Lccc71/pmw/a/as;->c:Ljava/lang/String;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    const-string v2, "/sys/block/mmcblk0/queue/read_ahead_kb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 18
    const-string v2, "/sys/block/mmcblk1/queue/read_ahead_kb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 19
    const-string v2, "/sys/devices/virtual/bdi/179:0/read_ahead_kb"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 23
    const-string v2, "/sys/devices/virtual/bdi/179:9/read_ahead_kb"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 24
    const-string v2, "/sys/devices/virtual/bdi/8:1/read_ahead_kb"

    aput-object v2, v0, v1

    .line 15
    sput-object v0, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lccc71/pmw/a/ad;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/a/as;->b:Z

    .line 35
    iget-boolean v0, p0, Lccc71/pmw/a/as;->b:Z

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lccc71/pmw/a/as;->h()V

    .line 37
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    array-length v1, v0

    .line 42
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 52
    :goto_1
    iget-boolean v0, p0, Lccc71/pmw/a/as;->b:Z

    if-nez v0, :cond_0

    .line 54
    const-string v0, "process_monitor_widget"

    const-string v1, "Cache file NOT supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void

    .line 44
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/a/as;->b:Z

    goto :goto_1

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lccc71/pmw/a/as;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 105
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    sget-object v1, Lccc71/pmw/a/as;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    sget-object v1, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    array-length v5, v1

    move v3, v2

    .line 108
    :goto_0
    if-lt v3, v5, :cond_0

    .line 118
    :goto_1
    if-lt v2, v5, :cond_2

    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_2
    return-object v1

    .line 110
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v6, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "echo \""

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\" > "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 120
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v3, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    if-nez v2, :cond_3

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "if [ ! -e "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "then\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "sleep 60\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "fi\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chmod 777 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "echo \""

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 137
    :catch_0
    move-exception v1

    .line 139
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read source script: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public final f()I
    .locals 8

    .prologue
    const v4, 0x7fffffff

    const/4 v2, 0x0

    .line 60
    iget-boolean v0, p0, Lccc71/pmw/a/as;->b:Z

    if-eqz v0, :cond_2

    .line 64
    sget-object v0, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    array-length v5, v0

    move v3, v2

    move v1, v4

    .line 65
    :goto_0
    if-lt v3, v5, :cond_0

    .line 87
    if-eq v1, v4, :cond_2

    .line 91
    :goto_1
    return v1

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v6, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v0, 0xa

    invoke-direct {v6, v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 73
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    if-ge v0, v1, :cond_1

    .line 65
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t read or parse cache file : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lccc71/pmw/a/as;->d:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v1, v2

    .line 91
    goto :goto_1
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lccc71/pmw/a/as;->h()V

    .line 97
    iget-boolean v0, p0, Lccc71/pmw/a/as;->b:Z

    return v0
.end method
