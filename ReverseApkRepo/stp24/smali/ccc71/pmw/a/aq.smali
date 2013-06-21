.class public final Lccc71/pmw/a/aq;
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
    .line 15
    const-string v0, "/system/etc/init.d/99pmwioscheduler"

    sput-object v0, Lccc71/pmw/a/aq;->c:Ljava/lang/String;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    const-string v2, "/sys/block/mmcblk0/queue/scheduler"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 20
    const-string v2, "/sys/block/mmcblk1/queue/scheduler"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 21
    const-string v2, "/sys/block/mmcblk1/queue/scheduler"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lccc71/pmw/a/ad;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/a/aq;->b:Z

    .line 28
    iget-boolean v0, p0, Lccc71/pmw/a/aq;->b:Z

    if-nez v0, :cond_0

    .line 29
    invoke-direct {p0}, Lccc71/pmw/a/aq;->i()V

    .line 30
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 117
    sget-object v0, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    array-length v1, v0

    .line 118
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 128
    :goto_1
    iget-boolean v0, p0, Lccc71/pmw/a/aq;->b:Z

    if-nez v0, :cond_0

    .line 130
    const-string v0, "process_monitor_widget"

    const-string v1, "IO Scheduler NOT supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void

    .line 120
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/a/aq;->b:Z

    goto :goto_1

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lccc71/pmw/a/aq;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 139
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    sget-object v1, Lccc71/pmw/a/aq;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    sget-object v1, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    array-length v5, v1

    move v3, v2

    .line 142
    :goto_0
    if-lt v3, v5, :cond_0

    .line 151
    :goto_1
    if-lt v2, v5, :cond_2

    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    :goto_2
    return-object v1

    .line 144
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v6, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "echo \""

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\" > "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 153
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v3, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    if-nez v2, :cond_3

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "if [ ! -e "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "then\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "sleep 60\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "fi\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chmod 777 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "echo \""

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

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

    .line 151
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 170
    :catch_0
    move-exception v1

    .line 172
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read source script: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lccc71/pmw/a/aq;->i()V

    .line 36
    iget-boolean v0, p0, Lccc71/pmw/a/aq;->b:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-boolean v0, p0, Lccc71/pmw/a/aq;->b:Z

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    array-length v3, v0

    move v2, v1

    .line 44
    :goto_0
    if-lt v2, v3, :cond_1

    .line 70
    :cond_0
    const-string v0, "noop"

    :goto_1
    return-object v0

    .line 48
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    sget-object v5, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 52
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 53
    array-length v5, v4

    move v0, v1

    .line 54
    :goto_2
    if-lt v0, v5, :cond_2

    .line 44
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 56
    :cond_2
    aget-object v6, v4, v0

    .line 57
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 59
    const/4 v0, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 54
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 65
    const-string v0, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t read or parse scheduler file : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public final h()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-boolean v0, p0, Lccc71/pmw/a/aq;->b:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    array-length v4, v0

    move v2, v1

    .line 79
    :goto_0
    if-lt v2, v4, :cond_1

    .line 112
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 83
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 84
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 87
    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 88
    array-length v6, v5

    move v0, v1

    .line 89
    :goto_1
    if-lt v0, v6, :cond_2

    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 91
    :cond_2
    aget-object v7, v5, v0

    .line 92
    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 94
    const/4 v8, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 105
    :catch_0
    move-exception v0

    .line 107
    const-string v0, "process_monitor_widget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t read or parse scheduler file : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lccc71/pmw/a/aq;->d:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
