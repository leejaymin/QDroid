.class Lcom/fleapapa/helper/Signin$4;
.super Ljava/lang/Object;
.source "Signin.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/fleapapa/helper/Signin$4;->this$0:Lcom/fleapapa/helper/Signin;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$4;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->eUser:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/My;->loadUserAvatar(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$4;->this$0:Lcom/fleapapa/helper/Signin;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/util/MyImageButton;

    sget v0, Lcom/fleapapa/util/My;->avatar:I

    invoke-static {v0}, Lcom/fleapapa/helper/Avatar;->avatar(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 139
    :cond_0
    return-void
.end method
