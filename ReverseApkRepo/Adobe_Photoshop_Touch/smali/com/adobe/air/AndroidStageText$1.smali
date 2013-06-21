.class Lcom/adobe/air/AndroidStageText$1;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x57

    const/16 v5, 0x42

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 626
    packed-switch p2, :pswitch_data_0

    .line 653
    :goto_0
    :pswitch_0
    return v0

    .line 630
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v2}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v2

    #calls: Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z
    invoke-static {v1, v2, v3, v0, v6}, Lcom/adobe/air/AndroidStageText;->access$1400(Lcom/adobe/air/AndroidStageText;JII)Z

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v2}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v2

    #calls: Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z
    invoke-static {v1, v2, v3, v4, v6}, Lcom/adobe/air/AndroidStageText;->access$1400(Lcom/adobe/air/AndroidStageText;JII)Z

    goto :goto_0

    .line 640
    :pswitch_2
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    #setter for: Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z
    invoke-static {v1, v4}, Lcom/adobe/air/AndroidStageText;->access$1302(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 641
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v2}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v2

    #calls: Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z
    invoke-static {v1, v2, v3, v0, v5}, Lcom/adobe/air/AndroidStageText;->access$1400(Lcom/adobe/air/AndroidStageText;JII)Z

    move-result v0

    .line 643
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v2}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v2

    #calls: Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z
    invoke-static {v1, v2, v3, v4, v5}, Lcom/adobe/air/AndroidStageText;->access$1400(Lcom/adobe/air/AndroidStageText;JII)Z

    goto :goto_0

    .line 649
    :pswitch_3
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    goto :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
