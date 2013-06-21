.class public final Lccc71/pmw/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Z

.field private static e:I

.field private static f:Ljava/lang/Object;

.field private static g:Lccc71/utils/ab;

.field private static h:Ljava/io/FileOutputStream;

.field private static i:Ljava/io/BufferedReader;

.field private static j:Ljava/io/BufferedReader;


# instance fields
.field private d:Ljava/util/ArrayList;

.field private k:Lccc71/utils/ab;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/os/Handler;

.field private s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "output"

    sput-object v0, Lccc71/pmw/b/h;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x5

    sput v0, Lccc71/pmw/b/h;->b:I

    .line 37
    const/4 v0, 0x0

    sput v0, Lccc71/pmw/b/h;->e:I

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/b/h;->f:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/b/h;->c:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lccc71/pmw/b/h;->l:Z

    .line 51
    iput-boolean v1, p0, Lccc71/pmw/b/h;->n:Z

    .line 271
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Lccc71/pmw/b/h;->d()Z

    .line 275
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lccc71/pmw/b/h;->l:Z

    .line 51
    iput-boolean v1, p0, Lccc71/pmw/b/h;->n:Z

    .line 279
    iput-object p1, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lccc71/pmw/b/h;->r:Landroid/os/Handler;

    .line 281
    iput-boolean p3, p0, Lccc71/pmw/b/h;->o:Z

    .line 282
    iput-object p4, p0, Lccc71/pmw/b/h;->s:Ljava/lang/Object;

    .line 283
    iput-boolean p5, p0, Lccc71/pmw/b/h;->p:Z

    .line 284
    iput-boolean p6, p0, Lccc71/pmw/b/h;->q:Z

    .line 286
    if-eqz p2, :cond_0

    .line 288
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 289
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/b/h;->run()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Lccc71/pmw/b/i;

    move v2, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lccc71/pmw/b/i;-><init>(Ljava/io/File;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-object v5
.end method

.method static synthetic a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-static {p0, p1, p2, p3}, Lccc71/pmw/b/h;->b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 462
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 466
    return-void

    .line 464
    :cond_0
    sget-object v2, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-static {p1}, Lccc71/pmw/b/h;->a(Ljava/lang/String;)V

    .line 471
    iget-boolean v0, p0, Lccc71/pmw/b/h;->q:Z

    .line 475
    const-string v0, "echo \"\"\n"

    invoke-static {v0}, Lccc71/pmw/b/h;->a(Ljava/lang/String;)V

    .line 476
    const-string v0, "echo \"SU_SHELL_OK\"\n"

    invoke-static {v0}, Lccc71/pmw/b/h;->a(Ljava/lang/String;)V

    .line 477
    sget-object v0, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 479
    :goto_0
    iget-boolean v0, p0, Lccc71/pmw/b/h;->n:Z

    if-eqz v0, :cond_2

    .line 498
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 501
    :cond_1
    :goto_1
    sget-object v0, Lccc71/pmw/b/h;->j:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-nez v0, :cond_4

    .line 505
    return-void

    .line 481
    :cond_2
    sget-object v0, Lccc71/pmw/b/h;->i:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    sget-object v0, Lccc71/pmw/b/h;->i:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 484
    const-string v1, "SU_SHELL_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    :cond_3
    sget-object v0, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 494
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 503
    :cond_4
    sget-object v0, Lccc71/pmw/b/h;->j:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lccc71/pmw/b/j;

    invoke-direct {v0, p0, v1, p1, p2}, Lccc71/pmw/b/j;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/app/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    :try_start_1
    invoke-static {p0, v1, p1, p2}, Lccc71/pmw/b/h;->b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "process_monitor_widget"

    const-string v2, "Failed to install jar file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 181
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/app/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 209
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 211
    const/16 v0, 0x5000

    :try_start_3
    new-array v0, v0, [B

    .line 213
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 217
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 219
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 224
    :try_start_5
    const-string v0, "cp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    const-string v2, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 777 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " -f -p "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " /system/app/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 /system/app/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Running cmd "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 239
    :goto_3
    :try_start_6
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to install "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binary to system folders"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 243
    if-eqz v7, :cond_3

    .line 247
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 252
    :cond_3
    :goto_4
    if-eqz v1, :cond_0

    .line 259
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 264
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 198
    :catch_2
    move-exception v0

    .line 200
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to check file size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 215
    :cond_4
    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 237
    :catch_3
    move-exception v0

    move-object v7, v2

    goto :goto_3

    .line 242
    :catchall_0
    move-exception v0

    move-object v2, v7

    .line 243
    :goto_5
    if-eqz v2, :cond_5

    .line 247
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 252
    :cond_5
    :goto_6
    if-eqz v7, :cond_6

    .line 259
    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 264
    :cond_6
    :goto_7
    throw v0

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    .line 242
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v7

    move-object v7, v1

    goto :goto_5

    .line 237
    :catch_7
    move-exception v0

    move-object v1, v7

    move-object v7, v2

    goto :goto_3
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    if-eqz v0, :cond_0

    .line 653
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->d()V

    .line 654
    sput-object v1, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    .line 655
    sput-object v1, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    .line 656
    sput-object v1, Lccc71/pmw/b/h;->i:Ljava/io/BufferedReader;

    .line 657
    sput-object v1, Lccc71/pmw/b/h;->j:Ljava/io/BufferedReader;

    .line 659
    :cond_0
    return-void
.end method

.method private static declared-synchronized d()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 355
    const-class v4, Lccc71/pmw/b/h;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    if-nez v0, :cond_1

    sget v0, Lccc71/pmw/b/h;->e:I

    add-int/lit8 v3, v0, 0x1

    sput v3, Lccc71/pmw/b/h;->e:I

    sget v3, Lccc71/pmw/b/h;->b:I

    if-ge v0, v3, :cond_1

    .line 357
    sget-object v5, Lccc71/pmw/b/h;->f:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/st_shell_pid"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_8

    .line 367
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v0, 0xa

    invoke-direct {v3, v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 368
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 369
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v0

    .line 379
    :goto_0
    :try_start_4
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v0, v2

    .line 380
    :goto_1
    array-length v2, v6

    if-lt v0, v2, :cond_2

    .line 391
    :goto_2
    if-eqz v1, :cond_7

    .line 393
    invoke-static {v1}, Lccc71/utils/z;->a(Ljava/lang/String;)Lccc71/utils/ab;

    move-result-object v0

    .line 394
    sput-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    .line 395
    const-string v0, "exit\n"

    invoke-static {v0}, Lccc71/pmw/b/h;->a(Ljava/lang/String;)V

    .line 396
    sget-object v0, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 398
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->e()I

    move-result v0

    .line 399
    if-eqz v0, :cond_5

    .line 401
    if-ne v0, v9, :cond_4

    .line 403
    const-string v0, "process_monitor_widget"

    const-string v1, "SU access refused!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/b/h;->c:Z

    .line 411
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->d()V

    .line 412
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    .line 413
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 357
    :cond_0
    :goto_4
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    :cond_1
    :try_start_6
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v4

    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_5
    move-object v3, v0

    goto :goto_0

    .line 382
    :cond_2
    :try_start_7
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v6, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/su"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 385
    const-string v1, "process_monitor_widget"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SU binary found in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v6, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 380
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :cond_4
    const-string v0, "process_monitor_widget"

    const-string v1, "Non-rooted device!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 444
    :catch_1
    move-exception v0

    :try_start_8
    const-string v0, "process_monitor_widget"

    const-string v1, "Issue gaining SU priviledges! Please contact developper if incorrect!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/b/h;->c:Z

    .line 447
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    if-eqz v0, :cond_0

    .line 449
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->d()V

    .line 450
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 357
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v5

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 355
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 417
    :cond_5
    const/4 v0, 0x0

    :try_start_a
    sput v0, Lccc71/pmw/b/h;->e:I

    .line 418
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/b/h;->c:Z

    .line 420
    invoke-static {v1}, Lccc71/utils/z;->a(Ljava/lang/String;)Lccc71/utils/ab;

    move-result-object v0

    .line 421
    sput-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    sput-object v0, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    .line 422
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v2}, Lccc71/utils/ab;->c()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    sput-object v0, Lccc71/pmw/b/h;->i:Ljava/io/BufferedReader;

    .line 423
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v2}, Lccc71/utils/ab;->b()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    sput-object v0, Lccc71/pmw/b/h;->j:Ljava/io/BufferedReader;

    .line 424
    const-string v0, "echo $$ > /data/system/st_shell_pid\n"

    invoke-static {v0}, Lccc71/pmw/b/h;->a(Ljava/lang/String;)V

    .line 425
    const-string v0, "chmod 777 /data/system/st_shell_pid\n"

    invoke-static {v0}, Lccc71/pmw/b/h;->a(Ljava/lang/String;)V

    .line 426
    if-eqz v3, :cond_6

    .line 428
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kill -9 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/b/h;->a(Ljava/lang/String;)V

    .line 433
    :cond_6
    const-string v0, "process_monitor_widget"

    const-string v1, "Loaded SU shell"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 438
    :cond_7
    const-string v0, "process_monitor_widget"

    const-string v1, "SU binary not found, non-rooted device!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/b/h;->c:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_4

    :catch_2
    move-exception v3

    goto/16 :goto_5

    :cond_8
    move-object v3, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/b/h;->n:Z

    .line 302
    iget-boolean v0, p0, Lccc71/pmw/b/h;->l:Z

    if-eqz v0, :cond_3

    .line 306
    iget-boolean v0, p0, Lccc71/pmw/b/h;->o:Z

    if-eqz v0, :cond_2

    .line 308
    const-string v0, "process_monitor_widget"

    const-string v1, "Destroying SU shell"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->d()V

    .line 315
    :cond_0
    sput-object v2, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    .line 316
    sput-object v2, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    .line 317
    sput-object v2, Lccc71/pmw/b/h;->i:Ljava/io/BufferedReader;

    .line 318
    sput-object v2, Lccc71/pmw/b/h;->j:Ljava/io/BufferedReader;

    .line 319
    const/4 v0, 0x0

    sput v0, Lccc71/pmw/b/h;->e:I

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    const-string v0, "process_monitor_widget"

    const-string v1, "Destroying user shell"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->d()V

    goto :goto_0

    .line 330
    :cond_3
    iget-boolean v0, p0, Lccc71/pmw/b/h;->o:Z

    if-eqz v0, :cond_4

    .line 331
    const-string v0, "process_monitor_widget"

    const-string v1, "SU shell not busy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_4
    const-string v0, "process_monitor_widget"

    const-string v1, "User shell not busy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/b/h;->l:Z

    .line 514
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 516
    iget-boolean v0, p0, Lccc71/pmw/b/h;->o:Z

    if-eqz v0, :cond_a

    .line 520
    iget-object v0, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    iget-object v3, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    .line 521
    iget-object v0, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    .line 523
    :cond_0
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    if-nez v0, :cond_1

    .line 524
    invoke-static {}, Lccc71/pmw/b/h;->d()Z

    .line 526
    :cond_1
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    if-eqz v0, :cond_2

    .line 528
    iget-boolean v0, p0, Lccc71/pmw/b/h;->q:Z

    if-eqz v0, :cond_9

    .line 530
    sget-object v3, Lccc71/pmw/b/h;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :try_start_1
    iget-object v0, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    iget-boolean v4, p0, Lccc71/pmw/b/h;->q:Z

    invoke-direct {p0, v0, v2}, Lccc71/pmw/b/h;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 530
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :cond_2
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lccc71/pmw/b/h;->n:Z

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    iget-object v3, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    :try_start_3
    iget-object v0, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 575
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 581
    :cond_3
    :try_start_4
    iget-boolean v0, p0, Lccc71/pmw/b/h;->n:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lccc71/pmw/b/h;->r:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 583
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 584
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 585
    iget-object v2, p0, Lccc71/pmw/b/h;->s:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 587
    iget-boolean v2, p0, Lccc71/pmw/b/h;->p:Z

    if-eqz v2, :cond_4

    .line 589
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 590
    sget-object v3, Lccc71/pmw/b/h;->a:Ljava/lang/String;

    iget-object v4, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 591
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 594
    :cond_4
    iget-object v2, p0, Lccc71/pmw/b/h;->r:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 646
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lccc71/pmw/b/h;->l:Z

    .line 647
    return-void

    .line 530
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 597
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_f

    .line 602
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to run cmd: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v2, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to run: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :goto_2
    iget-boolean v0, p0, Lccc71/pmw/b/h;->o:Z

    if-eqz v0, :cond_10

    .line 613
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    if-eqz v0, :cond_6

    .line 615
    sget-object v0, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->d()V

    .line 616
    sput-object v7, Lccc71/pmw/b/h;->g:Lccc71/utils/ab;

    .line 618
    :cond_6
    sput-object v7, Lccc71/pmw/b/h;->h:Ljava/io/FileOutputStream;

    .line 619
    sput-object v7, Lccc71/pmw/b/h;->i:Ljava/io/BufferedReader;

    .line 620
    sput-object v7, Lccc71/pmw/b/h;->j:Ljava/io/BufferedReader;

    .line 631
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lccc71/pmw/b/h;->n:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lccc71/pmw/b/h;->r:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 633
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 634
    const/4 v2, -0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 635
    iget-object v2, p0, Lccc71/pmw/b/h;->s:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 636
    iget-boolean v2, p0, Lccc71/pmw/b/h;->p:Z

    if-eqz v2, :cond_8

    .line 638
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 639
    sget-object v3, Lccc71/pmw/b/h;->a:Ljava/lang/String;

    iget-object v4, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 640
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 642
    :cond_8
    iget-object v2, p0, Lccc71/pmw/b/h;->r:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 537
    :cond_9
    :try_start_6
    iget-object v0, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    iget-boolean v3, p0, Lccc71/pmw/b/h;->q:Z

    invoke-direct {p0, v0, v2}, Lccc71/pmw/b/h;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 545
    :cond_a
    iget-object v0, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 546
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 548
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 549
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 551
    invoke-static {v4}, Lccc71/utils/z;->a(Ljava/lang/String;)Lccc71/utils/ab;

    move-result-object v4

    iput-object v4, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    .line 552
    iget-object v4, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    invoke-virtual {v4}, Lccc71/utils/ab;->a()Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 554
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    invoke-virtual {v6}, Lccc71/utils/ab;->c()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x80

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 556
    :goto_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-boolean v6, p0, Lccc71/pmw/b/h;->n:Z

    if-eqz v6, :cond_d

    .line 561
    :cond_b
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    invoke-virtual {v6}, Lccc71/utils/ab;->b()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x80

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 562
    :goto_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-nez v5, :cond_e

    .line 568
    iget-object v4, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    invoke-virtual {v4}, Lccc71/utils/ab;->e()I

    .line 546
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 558
    :cond_d
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 564
    :cond_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 565
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 575
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 607
    :cond_f
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to run cmd "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/pmw/b/h;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lccc71/pmw/b/h;->d:Ljava/util/ArrayList;

    const-string v2, "Failed to run command"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 624
    :cond_10
    iget-object v0, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    if-eqz v0, :cond_7

    .line 626
    iget-object v0, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    invoke-virtual {v0}, Lccc71/utils/ab;->d()V

    .line 627
    iput-object v7, p0, Lccc71/pmw/b/h;->k:Lccc71/utils/ab;

    goto/16 :goto_3
.end method
