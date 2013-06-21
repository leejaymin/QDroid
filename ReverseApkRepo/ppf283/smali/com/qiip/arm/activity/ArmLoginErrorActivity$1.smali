.class Lcom/qiip/arm/activity/ArmLoginErrorActivity$1;
.super Ljava/lang/Object;
.source "ArmLoginErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiip/arm/activity/ArmLoginErrorActivity;->getBodyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/activity/ArmLoginErrorActivity;


# direct methods
.method constructor <init>(Lcom/qiip/arm/activity/ArmLoginErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const-string v1, "TEXT_ID"

    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    invoke-virtual {v2}, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->getmID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "VIEW_CODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    sget-object v1, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
