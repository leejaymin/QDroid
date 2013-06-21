.class Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;
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


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 128
    new-instance v0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;

    invoke-direct {v0}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;-><init>()V

    .line 129
    .local v0, rdh:Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->burstId:J
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    const v5, 0x7f0700cc

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$1;

    invoke-direct {v5, p0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$1;-><init>(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)V

    .line 137
    new-instance v6, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;

    invoke-direct {v6, p0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;-><init>(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)V

    .line 129
    invoke-virtual/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->createRangeDialog(Landroid/content/Context;JLjava/lang/String;Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;)V

    .line 157
    return-void
.end method
