.class Lcom/example/bluetooth/BluetoothChat$1;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/bluetooth/BluetoothChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/bluetooth/BluetoothChat;


# direct methods
.method constructor <init>(Lcom/example/bluetooth/BluetoothChat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/bluetooth/BluetoothChat$1;->this$0:Lcom/example/bluetooth/BluetoothChat;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 231
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChat$1;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #calls: Lcom/example/bluetooth/BluetoothChat;->sendMessage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/example/bluetooth/BluetoothChat;->access$0(Lcom/example/bluetooth/BluetoothChat;Ljava/lang/String;)V

    .line 235
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    const-string v1, "BluetoothChat"

    const-string v2, "END onEditorAction"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v3
.end method
