.class final Lccc71/pmw/lib/nx;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Lccc71/utils/t;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Lccc71/pmw/b/z;

.field private final synthetic g:Lccc71/pmw/a/ah;

.field private final synthetic h:Lccc71/pmw/a/ar;

.field private final synthetic i:Lccc71/pmw/a/as;

.field private final synthetic j:Lccc71/pmw/a/aq;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Lccc71/utils/t;Landroid/content/Context;Lccc71/pmw/b/z;Lccc71/pmw/a/ah;Lccc71/pmw/a/ar;Lccc71/pmw/a/as;Lccc71/pmw/a/aq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/nx;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    iput-object p3, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    iput-object p4, p0, Lccc71/pmw/lib/nx;->d:Lccc71/pmw/b/z;

    iput-object p5, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    iput-object p6, p0, Lccc71/pmw/lib/nx;->h:Lccc71/pmw/a/ar;

    iput-object p7, p0, Lccc71/pmw/lib/nx;->i:Lccc71/pmw/a/as;

    iput-object p8, p0, Lccc71/pmw/lib/nx;->j:Lccc71/pmw/a/aq;

    .line 4180
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 4185
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v3

    iget-object v4, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/cpu_info.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccc71/utils/t;->a(Ljava/lang/String;)Ljava/io/BufferedWriter;

    move-result-object v3

    .line 4186
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v4

    iget-object v5, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/app_info.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccc71/utils/t;->a(Ljava/lang/String;)Ljava/io/BufferedWriter;

    move-result-object v4

    .line 4187
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v5

    iget-object v6, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/process_info.txt"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccc71/utils/t;->a(Ljava/lang/String;)Ljava/io/BufferedWriter;

    move-result-object v5

    .line 4188
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v6

    iget-object v7, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/mount_info.txt"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccc71/utils/t;->a(Ljava/lang/String;)Ljava/io/BufferedWriter;

    move-result-object v6

    .line 4190
    iget-object v0, p0, Lccc71/pmw/lib/nx;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_settings;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4191
    iget-object v2, p0, Lccc71/pmw/lib/nx;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4194
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 4195
    iget-object v7, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "App Package: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\r\n\r\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4202
    :goto_0
    iget-object v2, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    iget-object v2, v2, Lccc71/utils/t;->a:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could you please help me with the following issue(s) ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "):\r\n\r\n Thanks.\r\n\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\n"

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 4205
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Rooted Phone: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lccc71/pmw/b/h;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_3
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 4207
    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\n"

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 4208
    :goto_3
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Up-time: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->d:Lccc71/pmw/b/z;

    invoke-virtual {v2}, Lccc71/pmw/b/z;->b()J

    move-result-wide v7

    div-long/2addr v7, v10

    invoke-static {v7, v8}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/nx;->d:Lccc71/pmw/b/z;

    invoke-virtual {v2}, Lccc71/pmw/b/z;->a()J

    move-result-wide v7

    div-long/2addr v7, v10

    invoke-static {v7, v8}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_5
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 4209
    :goto_4
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Start-time: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-object v7, p0, Lccc71/pmw/lib/nx;->d:Lccc71/pmw/b/z;

    invoke-virtual {v7}, Lccc71/pmw/b/z;->d()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-object v7, p0, Lccc71/pmw/lib/nx;->d:Lccc71/pmw/b/z;

    invoke-virtual {v7}, Lccc71/pmw/b/z;->c()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 4211
    :goto_5
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CPU information ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\r\n\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_7
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 4213
    :goto_6
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Number of CPUs:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/pmw/a/ah;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (online:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    iget v2, v2, Lccc71/pmw/a/ah;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_8
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 4214
    :goto_7
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Frequency supported: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    invoke-virtual {v2}, Lccc71/pmw/a/ah;->u()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_9
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 4215
    :goto_8
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Temperature supported: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    invoke-virtual {v2}, Lccc71/pmw/a/ah;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_a
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 4216
    :goto_9
    iget-object v0, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4218
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " Temp file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    invoke-virtual {v2}, Lccc71/pmw/a/ah;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_b
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 4220
    :goto_a
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    invoke-virtual {v2}, Lccc71/pmw/a/ah;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v9}, Lccc71/utils/t;->a(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 4223
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TimeInStates supported: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_c
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 4224
    :goto_b
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Voltage supported: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    invoke-virtual {v2}, Lccc71/pmw/a/ah;->p()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_d
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 4226
    :goto_c
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\nOC Deamon:\r\n"

    :try_start_e
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    .line 4227
    :goto_d
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Available:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lccc71/pmw/a/ah;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_f
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    .line 4228
    :goto_e
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Enabled:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lccc71/pmw/a/ah;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_10
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    .line 4230
    :goto_f
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\nBoot Settings:\r\n"

    :try_start_11
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    .line 4231
    :goto_10
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "All CPU online: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->O(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " (boot-script)"

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_12
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_13

    .line 4232
    :goto_12
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CPU settings: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->R(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lccc71/pmw/lib/nx;->g:Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " (boot-script)"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_13
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    .line 4234
    :goto_14
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Memory-tweaks: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->T(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lccc71/pmw/lib/nx;->h:Lccc71/pmw/a/ar;

    invoke-virtual {v0}, Lccc71/pmw/a/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " (boot-script)"

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_14
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    .line 4236
    :goto_16
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SD-tweaks: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->S(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lccc71/pmw/lib/nx;->i:Lccc71/pmw/a/as;

    invoke-virtual {v0}, Lccc71/pmw/a/as;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " (boot-script)"

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_15
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16

    .line 4237
    :goto_18
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IO-tweaks: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->S(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lccc71/pmw/lib/nx;->j:Lccc71/pmw/a/aq;

    invoke-virtual {v0}, Lccc71/pmw/a/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " (boot-script)"

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_16
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17

    .line 4239
    :goto_1a
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\n"

    :try_start_17
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18

    .line 4241
    :goto_1b
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/stats"

    invoke-static {v3, v0, v9}, Lccc71/utils/t;->a(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 4242
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\n"

    :try_start_18
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_19

    .line 4244
    :goto_1c
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "/sys/devices/system/cpu/cpu0"

    invoke-static {v3, v0, v1}, Lccc71/utils/t;->a(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 4245
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\n"

    :try_start_19
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1a

    .line 4246
    :goto_1d
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "/sys/devices/system/cpu/cpu1"

    invoke-static {v3, v0, v1}, Lccc71/utils/t;->a(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 4247
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\n"

    :try_start_1a
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1b

    .line 4249
    :goto_1e
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "/system/etc/virtuous_oc"

    invoke-static {v3, v0, v9}, Lccc71/utils/t;->a(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 4250
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v0, "\r\n"

    :try_start_1b
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1c

    .line 4252
    :goto_1f
    new-instance v7, Lccc71/pmw/b/q;

    iget-object v0, p0, Lccc71/pmw/lib/nx;->c:Landroid/content/Context;

    invoke-direct {v7, v0}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    .line 4253
    invoke-virtual {v7, v1, v9}, Lccc71/pmw/b/q;->a(ZZ)V

    .line 4254
    invoke-virtual {v7}, Lccc71/pmw/b/q;->size()I

    move-result v8

    move v2, v1

    .line 4255
    :goto_20
    if-lt v2, v8, :cond_6

    .line 4261
    new-instance v0, Lccc71/pmw/b/l;

    invoke-direct {v0}, Lccc71/pmw/b/l;-><init>()V

    .line 4262
    invoke-virtual {v0}, Lccc71/pmw/b/l;->a()[Ljava/lang/String;

    move-result-object v2

    .line 4263
    array-length v7, v2

    move v0, v1

    .line 4264
    :goto_21
    if-lt v0, v7, :cond_7

    .line 4269
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1f

    .line 4270
    :goto_22
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    :try_start_1d
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_20

    .line 4271
    :goto_23
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    :try_start_1e
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_21

    .line 4272
    :goto_24
    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    :try_start_1f
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_22

    .line 4274
    :goto_25
    const/4 v0, 0x0

    return-object v0

    .line 4199
    :catch_0
    move-exception v2

    iget-object v2, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "App Package: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", version: unknown\r\n\r\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_20
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 4231
    :cond_1
    const-string v0, ""

    goto/16 :goto_11

    .line 4232
    :cond_2
    const-string v0, ""

    goto/16 :goto_13

    .line 4234
    :cond_3
    const-string v0, ""

    goto/16 :goto_15

    .line 4236
    :cond_4
    const-string v0, ""

    goto/16 :goto_17

    .line 4237
    :cond_5
    const-string v0, ""

    goto/16 :goto_19

    .line 4257
    :cond_6
    invoke-virtual {v7, v2}, Lccc71/pmw/b/q;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    .line 4258
    iget-object v9, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v0, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ")\r\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_21
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1d

    .line 4255
    :goto_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_20

    .line 4266
    :cond_7
    iget-object v1, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "mnt: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v2, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\r\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_22
    invoke-virtual {v6, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1e

    .line 4264
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_21

    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_6

    :catch_9
    move-exception v0

    goto/16 :goto_7

    :catch_a
    move-exception v0

    goto/16 :goto_8

    :catch_b
    move-exception v0

    goto/16 :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_a

    :catch_d
    move-exception v0

    goto/16 :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_c

    :catch_f
    move-exception v0

    goto/16 :goto_d

    :catch_10
    move-exception v0

    goto/16 :goto_e

    :catch_11
    move-exception v0

    goto/16 :goto_f

    :catch_12
    move-exception v0

    goto/16 :goto_10

    :catch_13
    move-exception v0

    goto/16 :goto_12

    :catch_14
    move-exception v0

    goto/16 :goto_14

    :catch_15
    move-exception v0

    goto/16 :goto_16

    :catch_16
    move-exception v0

    goto/16 :goto_18

    :catch_17
    move-exception v0

    goto/16 :goto_1a

    :catch_18
    move-exception v0

    goto/16 :goto_1b

    :catch_19
    move-exception v0

    goto/16 :goto_1c

    :catch_1a
    move-exception v0

    goto/16 :goto_1d

    :catch_1b
    move-exception v0

    goto/16 :goto_1e

    :catch_1c
    move-exception v0

    goto/16 :goto_1f

    :catch_1d
    move-exception v0

    goto :goto_26

    :catch_1e
    move-exception v1

    goto :goto_27

    :catch_1f
    move-exception v0

    goto/16 :goto_22

    :catch_20
    move-exception v0

    goto/16 :goto_23

    :catch_21
    move-exception v0

    goto/16 :goto_24

    :catch_22
    move-exception v0

    goto/16 :goto_25
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/nx;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Support Request - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/utils/t;->c:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    const-string v1, "system.support@3c71.com"

    iput-object v1, v0, Lccc71/utils/t;->b:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/nx;->b:Lccc71/utils/t;

    invoke-virtual {v0}, Lccc71/utils/t;->a()V

    return-void
.end method
