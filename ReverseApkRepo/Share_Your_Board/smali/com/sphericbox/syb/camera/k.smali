.class Lcom/sphericbox/syb/camera/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bo:[B

.field final synthetic bp:Lcom/sphericbox/syb/camera/a;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/camera/a;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sphericbox/syb/camera/k;->bp:Lcom/sphericbox/syb/camera/a;

    iput-object p2, p0, Lcom/sphericbox/syb/camera/k;->bo:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sphericbox/syb/camera/k;->bp:Lcom/sphericbox/syb/camera/a;

    iget-object v2, v2, Lcom/sphericbox/syb/camera/a;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sphericbox/syb/camera/CaptureActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    iget-object v2, p0, Lcom/sphericbox/syb/camera/k;->bo:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 191
    iget-object v1, p0, Lcom/sphericbox/syb/camera/k;->bp:Lcom/sphericbox/syb/camera/a;

    iget-object v1, v1, Lcom/sphericbox/syb/camera/a;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-virtual {v1}, Lcom/sphericbox/syb/camera/CaptureActivity;->finish()V

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sphericbox/syb/processing/IProcessingService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v2, "FILENAME_EXTRA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/sphericbox/syb/camera/k;->bp:Lcom/sphericbox/syb/camera/a;

    iget-object v0, v0, Lcom/sphericbox/syb/camera/a;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/camera/CaptureActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 200
    :goto_0
    return-void

    .line 188
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "CaptureActivity"

    const-string v2, "Failed to save bitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
