.class public final Lccc71/pmw/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/a;->b:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lccc71/pmw/b/b;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 244
    :goto_0
    if-lt v3, v4, :cond_2

    move v0, v2

    .line 254
    :goto_1
    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    iget-object v0, p0, Lccc71/pmw/b/a;->b:Ljava/util/ArrayList;

    if-eq p1, v0, :cond_1

    .line 261
    iget-object v0, p2, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccc71/pmw/b/a;->d(Ljava/lang/String;)Lccc71/pmw/b/b;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_4

    .line 264
    iget-object v0, v0, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p2, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iput-boolean v1, p2, Lccc71/pmw/b/b;->b:Z

    .line 274
    :cond_1
    :goto_2
    return-void

    .line 246
    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/b;

    iget-object v0, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    iget-object v5, p2, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 248
    invoke-virtual {p1, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    .line 250
    goto :goto_1

    .line 244
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 271
    :cond_4
    iput-boolean v1, p2, Lccc71/pmw/b/b;->c:Z

    goto :goto_2
.end method

.method private d(Ljava/lang/String;)Lccc71/pmw/b/b;
    .locals 4
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lccc71/pmw/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 279
    const/4 v0, 0x0

    move v1, v0

    .line 288
    :goto_0
    if-lt v1, v2, :cond_2

    .line 291
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 281
    :cond_2
    iget-object v0, p0, Lccc71/pmw/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/b;

    .line 282
    iget-object v3, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 286
    iget-object v0, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lccc71/pmw/b/b;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    .line 37
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 38
    :goto_0
    if-lt v3, v4, :cond_1

    move v0, v2

    .line 56
    :goto_1
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lccc71/pmw/b/b;

    invoke-direct {v0}, Lccc71/pmw/b/b;-><init>()V

    .line 59
    iput-object p1, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    .line 60
    iput-object p2, v0, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lccc71/pmw/b/a;->a(Ljava/util/ArrayList;Lccc71/pmw/b/b;)V

    .line 66
    :cond_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/b;

    .line 42
    iget-object v5, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    iget-object v3, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lccc71/pmw/b/a;->d(Ljava/lang/String;)Lccc71/pmw/b/b;

    move-result-object v3

    .line 47
    if-eqz v3, :cond_2

    iget-object v3, v3, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    iput-boolean v1, v0, Lccc71/pmw/b/b;->b:Z

    .line 52
    :goto_2
    iput-object p2, v0, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    move v0, v1

    .line 53
    goto :goto_1

    .line 50
    :cond_2
    iput-boolean v2, v0, Lccc71/pmw/b/b;->b:Z

    goto :goto_2

    .line 38
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 85
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".new"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 91
    :try_start_1
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 93
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 94
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 118
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 119
    const-string v0, "# \n# Added by Android Tuner\n# \n"

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v1, v8

    .line 124
    :goto_1
    if-lt v1, v5, :cond_6

    .line 132
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const-string v0, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dd if="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of=/system/build.prop\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "rm "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v7

    .line 148
    :goto_2
    monitor-exit p0

    return v0

    :cond_1
    move v3, v8

    .line 97
    :goto_3
    if-lt v3, v5, :cond_3

    :cond_2
    move-object v0, v2

    .line 115
    :goto_4
    if-eqz v0, :cond_0

    .line 116
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_2

    .line 99
    :cond_3
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/b;

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 103
    iget-boolean v3, v0, Lccc71/pmw/b/b;->b:Z

    if-eqz v3, :cond_4

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 105
    :cond_4
    iget-boolean v0, v0, Lccc71/pmw/b/b;->a:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 107
    goto :goto_4

    .line 97
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 126
    :cond_6
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/b;

    .line 127
    iget-boolean v2, v0, Lccc71/pmw/b/b;->c:Z

    if-eqz v2, :cond_7

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lccc71/pmw/b/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final b(Lccc71/pmw/b/b;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p1, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccc71/pmw/b/a;->d(Ljava/lang/String;)Lccc71/pmw/b/b;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 78
    iget-object v0, v0, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    iput-object v0, p1, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p1, Lccc71/pmw/b/b;->b:Z

    .line 81
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 162
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v0, "dd if=/system/build.prop of=/data/local/build.prop\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "chmod 777 /data/local/build.prop"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 175
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1fa0

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 193
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v4, "/data/local/build.prop"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1fa0

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 208
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 223
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v7, v5, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 234
    const-string v0, "rm /data/local/build.prop"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 237
    iget-object v0, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    return-object v0

    .line 180
    :cond_2
    const/16 v4, 0x3d

    :try_start_2
    invoke-static {v1, v4}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 182
    array-length v4, v1

    if-ne v4, v8, :cond_0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    new-instance v4, Lccc71/pmw/b/b;

    invoke-direct {v4}, Lccc71/pmw/b/b;-><init>()V

    .line 185
    const/4 v6, 0x0

    aget-object v6, v1, v6

    iput-object v6, v4, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    .line 186
    const/4 v6, 0x1

    aget-object v1, v1, v6

    iput-object v1, v4, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lccc71/pmw/b/a;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4}, Lccc71/pmw/b/a;->a(Ljava/util/ArrayList;Lccc71/pmw/b/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 210
    :cond_3
    const/16 v4, 0x3d

    :try_start_3
    invoke-static {v1, v4}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 212
    array-length v4, v1

    if-ne v4, v8, :cond_1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    new-instance v4, Lccc71/pmw/b/b;

    invoke-direct {v4}, Lccc71/pmw/b/b;-><init>()V

    .line 215
    const/4 v6, 0x0

    aget-object v6, v1, v6

    iput-object v6, v4, Lccc71/pmw/b/b;->d:Ljava/lang/String;

    .line 216
    const/4 v6, 0x1

    aget-object v1, v1, v6

    iput-object v1, v4, Lccc71/pmw/b/b;->e:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lccc71/pmw/b/a;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4}, Lccc71/pmw/b/a;->a(Ljava/util/ArrayList;Lccc71/pmw/b/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method
