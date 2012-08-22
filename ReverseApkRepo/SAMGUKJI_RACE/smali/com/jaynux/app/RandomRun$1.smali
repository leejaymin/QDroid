.class Lcom/jaynux/app/RandomRun$1;
.super Landroid/os/Handler;
.source "RandomRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/RandomRun;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/RandomRun;


# direct methods
.method constructor <init>(Lcom/jaynux/app/RandomRun;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    .line 688
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "m"

    .prologue
    const/4 v4, 0x0

    .line 693
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mMeterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$0(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "nowmeterinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 694
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "endmeterinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mTimerView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$6(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "timeinfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "STATE_LOSE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mButtonRetry:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$7(Lcom/jaynux/app/RandomRun;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mButtonMain:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$8(Lcom/jaynux/app/RandomRun;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mMeterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$0(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$9(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    const-string v0, "SAMGUKJI RACE"

    const-string v1, "the total was "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$9(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 710
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$9(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mMeterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$0(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "endmeterinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 715
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "endmeterinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mMeterView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$0(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "meter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$1;->this$0:Lcom/jaynux/app/RandomRun;

    #getter for: Lcom/jaynux/app/RandomRun;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/RandomRun;->access$9(Lcom/jaynux/app/RandomRun;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 722
    :cond_0
    return-void
.end method
