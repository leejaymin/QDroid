.class Lcom/example/bluetooth/BluetoothChat$2;
.super Landroid/os/Handler;
.source "BluetoothChat.java"


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
    iput-object p1, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    .line 241
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 244
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 246
    :pswitch_0
    const-string v4, "BluetoothChat"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MESSAGE_STATE_CHANGE: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/example/bluetooth/BluetoothChat;->access$1(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f040009

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/example/bluetooth/BluetoothChat;->access$1(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f040008

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/example/bluetooth/BluetoothChat;->access$1(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/example/bluetooth/BluetoothChat;->access$2(Lcom/example/bluetooth/BluetoothChat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/example/bluetooth/BluetoothChat;->access$3(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_0

    .line 254
    :pswitch_3
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/example/bluetooth/BluetoothChat;->access$1(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f040007

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 263
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    .line 265
    .local v2, writeBuf:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 266
    .local v3, writeMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/example/bluetooth/BluetoothChat;->access$3(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Me:  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    .end local v2           #writeBuf:[B
    .end local v3           #writeMessage:Ljava/lang/String;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 271
    .local v0, readBuf:[B
    new-instance v1, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v7, v4}, Ljava/lang/String;-><init>([BII)V

    .line 272
    .local v1, readMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/example/bluetooth/BluetoothChat;->access$3(Lcom/example/bluetooth/BluetoothChat;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/example/bluetooth/BluetoothChat;->access$2(Lcom/example/bluetooth/BluetoothChat;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 276
    .end local v0           #readBuf:[B
    .end local v1           #readMessage:Ljava/lang/String;
    :pswitch_6
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "device_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/example/bluetooth/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/example/bluetooth/BluetoothChat;->access$4(Lcom/example/bluetooth/BluetoothChat;Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    invoke-virtual {v4}, Lcom/example/bluetooth/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connected to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object v6, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    #getter for: Lcom/example/bluetooth/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/example/bluetooth/BluetoothChat;->access$2(Lcom/example/bluetooth/BluetoothChat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 278
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 281
    :pswitch_7
    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChat$2;->this$0:Lcom/example/bluetooth/BluetoothChat;

    invoke-virtual {v4}, Lcom/example/bluetooth/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "toast"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 282
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 247
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
