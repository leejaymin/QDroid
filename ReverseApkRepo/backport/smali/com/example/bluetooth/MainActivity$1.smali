.class Lcom/example/bluetooth/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/bluetooth/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/bluetooth/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/bluetooth/MainActivity$1;->this$0:Lcom/example/bluetooth/MainActivity;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/example/bluetooth/MainActivity$1;->this$0:Lcom/example/bluetooth/MainActivity;

    invoke-virtual {v0, p1}, Lcom/example/bluetooth/MainActivity;->onBluetoothChatButtonClick(Landroid/view/View;)V

    .line 29
    return-void
.end method
