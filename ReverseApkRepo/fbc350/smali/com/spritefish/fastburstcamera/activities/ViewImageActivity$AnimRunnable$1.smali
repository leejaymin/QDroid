.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable$1;
.super Lcom/spritefish/fastburstcamera/activities/EndAnimationListener;
.source "ViewImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable$1;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    .line 97
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/EndAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x4

    .line 101
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable$1;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->access$1(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable$1;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->access$1(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method
