.class Lcom/qiip/arm/activity/ArmLoginAuthActivity$1;
.super Ljava/util/TimerTask;
.source "ArmLoginAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getBodyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/qiip/arm/activity/ArmLoginAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    .line 111
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget v1, v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mNetwork:I

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget-object v1, v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->aData:Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->cancel(Z)Z

    .line 118
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    const-string v1, "VIEW_CODE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    sget-object v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
