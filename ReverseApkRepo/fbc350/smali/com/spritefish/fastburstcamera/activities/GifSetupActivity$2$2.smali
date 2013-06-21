.class Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;
.super Ljava/lang/Object;
.source "GifSetupActivity.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZJJ)V
    .locals 1
    .parameter "ok"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    move-result-object v0

    #calls: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->updateSelectionText()V
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)V

    .line 146
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->finish()V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    move-result-object v0

    #setter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMin:J
    invoke-static {v0, p2, p3}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->access$4(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;J)V

    .line 151
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    move-result-object v0

    #setter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->selectedMax:J
    invoke-static {v0, p4, p5}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->access$5(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;J)V

    .line 152
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2$2;->this$1:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;->access$0(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity$2;)Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;

    move-result-object v0

    #calls: Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->updateSelectionText()V
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/GifSetupActivity;)V

    goto :goto_0
.end method
