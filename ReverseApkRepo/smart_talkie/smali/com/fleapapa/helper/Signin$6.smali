.class Lcom/fleapapa/helper/Signin$6;
.super Ljava/lang/Object;
.source "Signin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Signin;->sign(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Signin;

.field private final synthetic val$signup:Z


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Signin;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Signin$6;->this$0:Lcom/fleapapa/helper/Signin;

    iput-boolean p2, p0, Lcom/fleapapa/helper/Signin$6;->val$signup:Z

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$6;->this$0:Lcom/fleapapa/helper/Signin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 219
    iget-boolean v0, p0, Lcom/fleapapa/helper/Signin$6;->val$signup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/Signin$6;->this$0:Lcom/fleapapa/helper/Signin;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Signin;->force_signup:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$6;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v0, v0, Lcom/fleapapa/helper/Signin;->ePswd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$6;->this$0:Lcom/fleapapa/helper/Signin;

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    .line 226
    :goto_0
    return-void

    .line 225
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$6;->this$0:Lcom/fleapapa/helper/Signin;

    const v1, 0x7f0600b8

    invoke-static {v1}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
