.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;


# direct methods
.method private constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 97
    .local v0, disappearAnimation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable$1;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable$1;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 105
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void
.end method
