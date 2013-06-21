.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

.field private final synthetic val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;Lcom/spritefish/fastburstcamera/controls/QuickAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;->val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    move-result-object v1

    const-class v2, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v0, gifanim:Landroid/content/Intent;
    const-string v1, "burstid"

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$3;->val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->dismiss()V

    .line 338
    return-void
.end method
