.class Lcom/example/bluetooth/BluetoothChat$3;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/bluetooth/BluetoothChat;->setupChat()V
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
    iput-object p1, p0, Lcom/example/bluetooth/BluetoothChat$3;->this$0:Lcom/example/bluetooth/BluetoothChat;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChat$3;->this$0:Lcom/example/bluetooth/BluetoothChat;

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Lcom/example/bluetooth/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    .local v1, view:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChat$3;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #calls: Lcom/example/bluetooth/BluetoothChat;->sendMessage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/example/bluetooth/BluetoothChat;->access$0(Lcom/example/bluetooth/BluetoothChat;Ljava/lang/String;)V

    .line 163
    return-void
.end method
