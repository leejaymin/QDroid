.class Lcom/qiip/arm/activity/ArmLoginMainActivity$1;
.super Ljava/lang/Object;
.source "ArmLoginMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiip/arm/activity/ArmLoginMainActivity;->getBodyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;


# direct methods
.method constructor <init>(Lcom/qiip/arm/activity/ArmLoginMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v1, v1, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    const-string v1, "VIEW_CODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v1, "TEXT_ID"

    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v2, v2, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "TEXT_PASSWORD"

    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v2, v2, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "TEXT_AID"

    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v2, v2, Lcom/qiip/arm/activity/ArmLoginMainActivity;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "TEXT_GDID"

    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v2, v2, Lcom/qiip/arm/activity/ArmLoginMainActivity;->gdid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v1, v1, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method
