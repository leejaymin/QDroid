.class Lcom/dakkhin/android/bhadram/App$1;
.super Landroid/os/Handler;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dakkhin/android/bhadram/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/App;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/App;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/App$1;->this$0:Lcom/dakkhin/android/bhadram/App;

    .line 25
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 31
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/App$1;->this$0:Lcom/dakkhin/android/bhadram/App;

    const-string v2, "dakkhin_bhadram_auth"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/dakkhin/android/bhadram/App;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 34
    if-eqz v0, :cond_0

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 37
    :catch_1
    move-exception v1

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    if-eqz v0, :cond_1

    .line 36
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 40
    :cond_1
    :goto_1
    throw v1

    .line 37
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method
