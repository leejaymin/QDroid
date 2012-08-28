.class final Lorg/connectbot/WizardActivity$1;
.super Landroid/os/Handler;
.source "WizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/WizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/WizardActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/WizardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    iget-object v0, v0, Lorg/connectbot/WizardActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 50
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    invoke-virtual {v0}, Lorg/connectbot/WizardActivity;->setButtons()V

    .line 52
    return-void

    .line 29
    :pswitch_1
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    iget-object v0, v0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    iget-object v1, v1, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/connectbot/WizardActivity;->setResult(I)V

    .line 31
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    invoke-virtual {v0}, Lorg/connectbot/WizardActivity;->finish()V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    iget-object v0, v0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    iget-object v0, v0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    invoke-virtual {v0, v3}, Lorg/connectbot/WizardActivity;->setResult(I)V

    .line 39
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    invoke-virtual {v0}, Lorg/connectbot/WizardActivity;->finish()V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lorg/connectbot/WizardActivity$1;->this$0:Lorg/connectbot/WizardActivity;

    iget-object v0, v0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
