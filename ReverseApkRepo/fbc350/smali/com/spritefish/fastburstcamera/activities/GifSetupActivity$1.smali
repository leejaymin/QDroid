.class Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;
.super Ljava/lang/Object;
.source "GifSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

.field private final synthetic val$fpsSpinner:Landroid/widget/Spinner;

.field private final synthetic val$qualitySpinner:Landroid/widget/Spinner;

.field private final synthetic val$sizeSpinner:Landroid/widget/Spinner;

.field private final synthetic val$timestretchSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->val$timestretchSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->val$sizeSpinner:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->val$qualitySpinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->val$fpsSpinner:Landroid/widget/Spinner;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->val$timestretchSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v1, v2, v3

    .line 108
    .local v1, timeStretchVal:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    const-class v3, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, gifanim:Landroid/content/Intent;
    const-string v2, "burstid"

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->burstId:J
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    const-string v2, "size"

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->val$sizeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v2, "quality"

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->val$qualitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "framerate"

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->val$fpsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "min"

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMin:J
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    const-string v2, "max"

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMax:J
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 115
    const-string v2, "timestretch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    invoke-virtual {v2, v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method
