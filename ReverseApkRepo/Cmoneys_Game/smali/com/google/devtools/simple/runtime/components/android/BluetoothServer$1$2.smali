.class Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;
.super Ljava/lang/Object;
.source "BluetoothServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

.field final synthetic val$bluetoothSocket:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;->val$bluetoothSocket:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;->val$bluetoothSocket:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->setConnection(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->ConnectionAccepted()V

    .line 136
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->Disconnect()V

    .line 130
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$2;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    iget-object v2, v2, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    const-string v3, "Unable to accept a connection from a bluetooth device."

    invoke-virtual {v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
