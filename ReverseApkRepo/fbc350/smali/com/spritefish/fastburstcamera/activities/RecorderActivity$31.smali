.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$31;
.super Lcom/spritefish/fastburstcamera/activities/EndAnimationListener;
.source "RecorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->hideFastSettingsButton()V
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$31;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1970
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/EndAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$31;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fastSettingButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$31(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->setVisibility(I)V

    .line 1977
    return-void
.end method
