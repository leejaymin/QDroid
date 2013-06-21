.class Ledu/umich/PowerTutor/ui/UMLogger$5;
.super Ljava/lang/Thread;
.source "UMLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/UMLogger;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/UMLogger;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/UMLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/UMLogger$5;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    .line 174
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 176
    new-instance v5, Ljava/io/File;

    .line 177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PowerTrace"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".log"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v5, writeFile:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    .line 181
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/UMLogger$5;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    const-string v7, "PowerTrace.log"

    invoke-virtual {v6, v7}, Ledu/umich/PowerTutor/ui/UMLogger;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 180
    invoke-direct {v3, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v3, logIn:Ljava/util/zip/InflaterInputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 183
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    .local v4, logOut:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x5000

    new-array v0, v6, [B

    .line 186
    .local v0, buffer:[B
    invoke-virtual {v3, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v2

    .local v2, ln:I
    :goto_0
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 190
    invoke-virtual {v3}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 191
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 192
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/UMLogger$5;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Wrote log to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    const/4 v8, 0x0

    .line 192
    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 194
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 205
    .end local v0           #buffer:[B
    .end local v2           #ln:I
    .end local v3           #logIn:Ljava/util/zip/InflaterInputStream;
    .end local v4           #logOut:Ljava/io/BufferedOutputStream;
    :goto_1
    return-void

    .line 188
    .restart local v0       #buffer:[B
    .restart local v2       #ln:I
    .restart local v3       #logIn:Ljava/util/zip/InflaterInputStream;
    .restart local v4       #logOut:Ljava/io/BufferedOutputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 187
    invoke-virtual {v3, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 196
    .end local v0           #buffer:[B
    .end local v2           #ln:I
    .end local v3           #logIn:Ljava/util/zip/InflaterInputStream;
    .end local v4           #logOut:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Ljava/io/EOFException;
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/UMLogger$5;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Wrote log to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 199
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 201
    .end local v1           #e:Ljava/io/EOFException;
    :catch_1
    move-exception v6

    .line 203
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/UMLogger$5;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    const-string v7, "Failed to write log to sdcard"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 204
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
