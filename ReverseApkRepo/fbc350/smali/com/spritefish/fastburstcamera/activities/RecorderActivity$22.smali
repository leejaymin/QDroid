.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$21(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showLiteStartInfoSpecific(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$22(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Ljava/lang/String;)V

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isFocusOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashState:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;->OFF:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;->ON:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    :goto_1
    iput-object v0, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashState:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    .line 1421
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v1

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashState:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;->ON:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/spritefish/camera/controls/PreviewControl;->setFlashlight(Z)V

    .line 1422
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lightButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$16(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$22;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashState:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;->ON:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    if-ne v0, v3, :cond_4

    const v0, 0x7f020023

    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1419
    :cond_2
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;->OFF:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    goto :goto_1

    .line 1421
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1422
    :cond_4
    const v0, 0x7f020022

    goto :goto_3
.end method
