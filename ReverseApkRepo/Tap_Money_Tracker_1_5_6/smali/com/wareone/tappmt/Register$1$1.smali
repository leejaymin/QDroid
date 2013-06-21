.class Lcom/wareone/tappmt/Register$1$1;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Register$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Register$1;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Register$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Register$1$1;->this$1:Lcom/wareone/tappmt/Register$1;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    iget-object v2, p0, Lcom/wareone/tappmt/Register$1$1;->this$1:Lcom/wareone/tappmt/Register$1;

    #getter for: Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;
    invoke-static {v2}, Lcom/wareone/tappmt/Register$1;->access$0(Lcom/wareone/tappmt/Register$1;)Lcom/wareone/tappmt/Register;

    move-result-object v2

    const-string v3, "TapPMTPrefs"

    invoke-virtual {v2, v3, v4}, Lcom/wareone/tappmt/Register;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "authorized"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    .local v0, is_authorized:Z
    iget-object v2, p0, Lcom/wareone/tappmt/Register$1$1;->this$1:Lcom/wareone/tappmt/Register$1;

    #getter for: Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;
    invoke-static {v2}, Lcom/wareone/tappmt/Register$1;->access$0(Lcom/wareone/tappmt/Register$1;)Lcom/wareone/tappmt/Register;

    move-result-object v2

    #calls: Lcom/wareone/tappmt/Register;->_setControls(Z)V
    invoke-static {v2, v0}, Lcom/wareone/tappmt/Register;->access$3(Lcom/wareone/tappmt/Register;Z)V

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v2, p0, Lcom/wareone/tappmt/Register$1$1;->this$1:Lcom/wareone/tappmt/Register$1;

    #getter for: Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;
    invoke-static {v2}, Lcom/wareone/tappmt/Register$1;->access$0(Lcom/wareone/tappmt/Register$1;)Lcom/wareone/tappmt/Register;

    move-result-object v2

    const v3, 0x7f0900a7

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/wareone/tappmt/Register$1$1;->this$1:Lcom/wareone/tappmt/Register$1;

    #getter for: Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;
    invoke-static {v2}, Lcom/wareone/tappmt/Register$1;->access$0(Lcom/wareone/tappmt/Register$1;)Lcom/wareone/tappmt/Register;

    move-result-object v2

    const v3, 0x7f0900a8

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
