.class public Lcom/example/bluetooth/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothChatButtonClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/bluetooth/BluetoothChat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .local v0, chatIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/bluetooth/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/example/bluetooth/MainActivity;->setContentView(I)V

    .line 24
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/example/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 25
    .local v0, button:Landroid/widget/Button;
    new-instance v1, Lcom/example/bluetooth/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/bluetooth/MainActivity$1;-><init>(Lcom/example/bluetooth/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
