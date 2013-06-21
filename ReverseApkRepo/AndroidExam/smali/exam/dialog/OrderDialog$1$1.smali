.class Lexam/dialog/OrderDialog$1$1;
.super Ljava/lang/Object;
.source "OrderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/OrderDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/dialog/OrderDialog$1;

.field private final synthetic val$linear:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lexam/dialog/OrderDialog$1;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/OrderDialog$1$1;->this$1:Lexam/dialog/OrderDialog$1;

    iput-object p2, p0, Lexam/dialog/OrderDialog$1$1;->val$linear:Landroid/widget/LinearLayout;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 27
    iget-object v4, p0, Lexam/dialog/OrderDialog$1$1;->val$linear:Landroid/widget/LinearLayout;

    const v5, 0x7f0c0022

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 28
    .local v2, product:Landroid/widget/EditText;
    iget-object v4, p0, Lexam/dialog/OrderDialog$1$1;->val$linear:Landroid/widget/LinearLayout;

    const v5, 0x7f0c0023

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 29
    .local v0, number:Landroid/widget/EditText;
    iget-object v4, p0, Lexam/dialog/OrderDialog$1$1;->val$linear:Landroid/widget/LinearLayout;

    const v5, 0x7f0c0024

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 30
    .local v1, paymethod:Landroid/widget/CheckBox;
    iget-object v4, p0, Lexam/dialog/OrderDialog$1$1;->this$1:Lexam/dialog/OrderDialog$1;

    #getter for: Lexam/dialog/OrderDialog$1;->this$0:Lexam/dialog/OrderDialog;
    invoke-static {v4}, Lexam/dialog/OrderDialog$1;->access$0(Lexam/dialog/OrderDialog$1;)Lexam/dialog/OrderDialog;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Lexam/dialog/OrderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 31
    .local v3, text:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uc8fc\ubb38 \uc815\ubcf4 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \uc0c1\ud488 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 32
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uac1c."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 33
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\ucc29\ubd88\uacb0\uc81c"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void

    .line 33
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method
