.class final Lccc71/pmw/b/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final synthetic a:Ljava/io/File;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/b/i;->a:Ljava/io/File;

    iput-boolean p2, p0, Lccc71/pmw/b/i;->b:Z

    iput-object p3, p0, Lccc71/pmw/b/i;->c:Landroid/content/Context;

    iput-object p4, p0, Lccc71/pmw/b/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lccc71/pmw/b/i;->e:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 74
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 75
    iget-object v0, p0, Lccc71/pmw/b/i;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccc71/pmw/b/i;->b:Z

    if-eqz v0, :cond_4

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/b/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/b/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 82
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lccc71/pmw/b/i;->e:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 84
    const/16 v0, 0x5000

    :try_start_2
    new-array v0, v0, [B

    .line 85
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 88
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 92
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/b/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    .line 96
    :goto_1
    const-string v3, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to install "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lccc71/pmw/b/i;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v2, :cond_2

    .line 102
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 109
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 113
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 122
    :cond_3
    :goto_3
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/b/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lccc71/pmw/b/h;->c:Z

    move-object v2, v8

    move-object v4, v8

    move v5, v10

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto :goto_0

    .line 129
    :cond_4
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/b/i;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lccc71/utils/android/y;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/b/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lccc71/pmw/b/h;->c:Z

    move-object v2, v8

    move-object v4, v8

    move v5, v10

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    .line 94
    :catch_3
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v1, v7

    move-object v2, v9

    goto :goto_1
.end method
