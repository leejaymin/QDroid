.class Lbackport/android/bluetooth/BluetoothAdapter$1;
.super Landroid/os/Handler;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbackport/android/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/BluetoothAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/BluetoothAdapter$1;->this$0:Lbackport/android/bluetooth/BluetoothAdapter;

    .line 254
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-string v5, "BluetoothAdapter"

    .line 257
    iget v1, p1, Landroid/os/Message;->what:I

    .line 259
    .local v1, handle:I
    :try_start_0
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing service record "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Landroid/bluetooth/Database;->getInstance()Landroid/bluetooth/Database;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/Database;->removeServiceRecord(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 264
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
