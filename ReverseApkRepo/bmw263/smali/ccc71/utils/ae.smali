.class public final Lccc71/utils/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/FileOutputStream;

.field private b:Ljava/io/FileInputStream;

.field private c:Ljava/io/FileInputStream;

.field private d:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Ljava/lang/Process;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lccc71/utils/ae;->a:Ljava/io/FileOutputStream;

    .line 11
    iput-object v0, p0, Lccc71/utils/ae;->b:Ljava/io/FileInputStream;

    .line 12
    iput-object v0, p0, Lccc71/utils/ae;->c:Ljava/io/FileInputStream;

    .line 18
    iput-object p1, p0, Lccc71/utils/ae;->d:Ljava/lang/Process;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    iput-object v0, p0, Lccc71/utils/ae;->a:Ljava/io/FileOutputStream;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    iput-object v0, p0, Lccc71/utils/ae;->c:Ljava/io/FileInputStream;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    iput-object v0, p0, Lccc71/utils/ae;->b:Ljava/io/FileInputStream;

    .line 22
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lccc71/utils/ae;->a:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public final b()Ljava/io/FileInputStream;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lccc71/utils/ae;->b:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public final c()Ljava/io/FileInputStream;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lccc71/utils/ae;->c:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lccc71/utils/ae;->d:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 47
    :try_start_0
    iget-object v0, p0, Lccc71/utils/ae;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ae;->d:Ljava/lang/Process;

    .line 66
    :cond_1
    iget-object v0, p0, Lccc71/utils/ae;->c:Ljava/io/FileInputStream;

    invoke-static {v0}, Lccc71/utils/ae;->a(Ljava/io/Closeable;)V

    .line 67
    iget-object v0, p0, Lccc71/utils/ae;->a:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lccc71/utils/ae;->a(Ljava/io/Closeable;)V

    .line 68
    iget-object v0, p0, Lccc71/utils/ae;->b:Ljava/io/FileInputStream;

    invoke-static {v0}, Lccc71/utils/ae;->a(Ljava/io/Closeable;)V

    .line 69
    return-void

    :catch_0
    move-exception v0

    .line 53
    :try_start_1
    iget-object v0, p0, Lccc71/utils/ae;->d:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lccc71/utils/ae;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final e()I
    .locals 3

    .prologue
    .line 84
    const/16 v0, 0xff

    .line 86
    iget-object v1, p0, Lccc71/utils/ae;->d:Ljava/lang/Process;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object v1, p0, Lccc71/utils/ae;->d:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lccc71/utils/ae;->d()V

    .line 113
    return v0

    .line 97
    :catch_0
    move-exception v1

    const-string v1, "ccc71_utils"

    const-string v2, "Exception waiting for native process to end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    const-string v1, "ccc71_utils"

    const-string v2, "Error waiting for native process to end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :catch_2
    move-exception v1

    const-string v1, "ccc71_utils"

    const-string v2, "Serious error waiting for native process to end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catch_3
    move-exception v1

    goto :goto_0
.end method
