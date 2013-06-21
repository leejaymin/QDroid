.class Lcom/qiip/arm/activity/ArmLoginAuthActivity$2;
.super Ljava/lang/Object;
.source "ArmLoginAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$2;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$2;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    iget-object v1, v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->aData:Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;

    invoke-virtual {v1, v3}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->cancel(Z)Z

    .line 133
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    const-string v1, "VIEW_CODE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v1, "TEXT_ID"

    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity$2;->this$0:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v2}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getmID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method
