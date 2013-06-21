.class Lcom/qiip/arm/activity/ArmLogin5ErrorActivity$1;
.super Ljava/lang/Object;
.source "ArmLogin5ErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getBodyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;


# direct methods
.method constructor <init>(Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 56
    sget-object v0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 57
    .local v0, a:Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 59
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 60
    return-void
.end method
