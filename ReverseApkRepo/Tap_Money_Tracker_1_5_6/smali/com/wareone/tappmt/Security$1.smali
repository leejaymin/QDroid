.class Lcom/wareone/tappmt/Security$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Security;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Security;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Security;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Security$1;->this$0:Lcom/wareone/tappmt/Security;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 34
    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    move-object v1, v0

    .line 35
    .local v1, btn:Landroid/widget/ToggleButton;
    iget-object v4, p0, Lcom/wareone/tappmt/Security$1;->this$0:Lcom/wareone/tappmt/Security;

    const v5, 0x7f0c0046

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 36
    .local v3, edtPasswd:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/wareone/tappmt/Security$1;->this$0:Lcom/wareone/tappmt/Security;

    const v5, 0x7f0c0048

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 38
    .local v2, edtConfirm:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 40
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 43
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method
