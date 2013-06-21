.class Lcom/jaynux/app/measureActivity$1;
.super Ljava/lang/Object;
.source "measureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/measureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/measureActivity;


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mNum:I
    invoke-static {v2, v4}, Lcom/jaynux/app/measureActivity;->access$0(Lcom/jaynux/app/measureActivity;I)V

    .line 177
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mMeasureTime:I
    invoke-static {v2, v5}, Lcom/jaynux/app/measureActivity;->access$1(Lcom/jaynux/app/measureActivity;I)V

    .line 180
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mShakeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$2(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mPowerButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$3(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerTouchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$4(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerDistanceButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$5(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mApplyButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$6(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 188
    .local v1, msg:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 189
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 195
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_1
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v2, v4}, Lcom/jaynux/app/measureActivity;->access$7(Lcom/jaynux/app/measureActivity;I)V

    .line 198
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mMeasureTime:I
    invoke-static {v2, v6}, Lcom/jaynux/app/measureActivity;->access$1(Lcom/jaynux/app/measureActivity;I)V

    .line 201
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mShakeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$2(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mPowerButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$3(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerTouchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$4(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerDistanceButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$5(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mApplyButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$6(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 209
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 210
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 216
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I
    invoke-static {v2, v4}, Lcom/jaynux/app/measureActivity;->access$8(Lcom/jaynux/app/measureActivity;I)V

    .line 219
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mMeasureTime:I
    invoke-static {v2, v5}, Lcom/jaynux/app/measureActivity;->access$1(Lcom/jaynux/app/measureActivity;I)V

    .line 222
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mShakeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$2(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mPowerButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$3(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerTouchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$4(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerDistanceButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$5(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mApplyButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$6(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 230
    .restart local v1       #msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 231
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 235
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I
    invoke-static {v2, v4}, Lcom/jaynux/app/measureActivity;->access$9(Lcom/jaynux/app/measureActivity;I)V

    .line 237
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mMeasureTime:I
    invoke-static {v2, v5}, Lcom/jaynux/app/measureActivity;->access$1(Lcom/jaynux/app/measureActivity;I)V

    .line 240
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mShakeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$2(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mPowerButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$3(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerTouchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$4(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerDistanceButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$5(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mApplyButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$6(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 248
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 249
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v2, v2, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 252
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_4
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/jaynux/app/measureActivity;->saveProgress(I)V

    .line 253
    new-instance v0, Lcom/jaynux/app/measureActivity$processResultThread;

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$1;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-direct {v0, v2}, Lcom/jaynux/app/measureActivity$processResultThread;-><init>(Lcom/jaynux/app/measureActivity;)V

    .line 254
    .local v0, mProcessResultThread:Lcom/jaynux/app/measureActivity$processResultThread;
    invoke-virtual {v0}, Lcom/jaynux/app/measureActivity$processResultThread;->start()V

    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x7f090008
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
