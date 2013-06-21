.class Lcom/qiip/arm/activity/ArmMainpageActivity$1;
.super Ljava/util/TimerTask;
.source "ArmMainpageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiip/arm/activity/ArmMainpageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/activity/ArmMainpageActivity;


# direct methods
.method constructor <init>(Lcom/qiip/arm/activity/ArmMainpageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmMainpageActivity$1;->this$0:Lcom/qiip/arm/activity/ArmMainpageActivity;

    .line 72
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity$1;->this$0:Lcom/qiip/arm/activity/ArmMainpageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qiip/arm/activity/ArmMainpageActivity;->moveTaskToBack(Z)Z

    .line 76
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity$1;->this$0:Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-virtual {v0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->finish()V

    .line 77
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 78
    return-void
.end method
