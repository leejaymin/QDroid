.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$37;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->handlePicture(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$37;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 2796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2800
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$37;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2801
    .local v0, imageControl:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$37;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const v3, 0x7f0d0039

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2802
    .local v1, imageLayout:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2803
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$37;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2804
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$37;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->appearAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$32(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2809
    return-void
.end method
