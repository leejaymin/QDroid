.class Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$1;
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


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    const-string v2, "Unable to accept a connection from a bluetooth device."

    invoke-virtual {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
