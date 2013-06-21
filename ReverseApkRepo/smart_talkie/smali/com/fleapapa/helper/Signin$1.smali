.class Lcom/fleapapa/helper/Signin$1;
.super Ljava/lang/Object;
.source "Signin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Signin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Signin;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Signin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eUser:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eUser:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 106
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->ePswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->ePswd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v1, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v1, v1, Lcom/fleapapa/helper/Signin;->eMail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->goodEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eMail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[unknown]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 104
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->sign(Z)V

    goto :goto_0

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$1;->this$0:Lcom/fleapapa/helper/Signin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->sign(Z)V

    goto/16 :goto_0
.end method
