.class Lcom/qiip/arm/activity/ArmLoginMainActivity$2;
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
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$2;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 87
    const/4 v1, 0x2

    sput v1, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    .line 88
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$2;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v0, v1, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 89
    .local v0, a:Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 91
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 92
    return-void
.end method
