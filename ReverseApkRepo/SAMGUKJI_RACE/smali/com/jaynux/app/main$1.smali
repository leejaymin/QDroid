.class Lcom/jaynux/app/main$1;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/main;


# direct methods
.method constructor <init>(Lcom/jaynux/app/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 150
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$0(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    const-class v2, Lcom/jaynux/app/RaceStartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    invoke-virtual {v1, v0}, Lcom/jaynux/app/main;->startActivity(Landroid/content/Intent;)V

    .line 153
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    invoke-virtual {v1}, Lcom/jaynux/app/main;->finish()V

    .line 156
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$1(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$1(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$2(Lcom/jaynux/app/main;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mMeterView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$3(Lcom/jaynux/app/main;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mTimerView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$4(Lcom/jaynux/app/main;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$0(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$5(Lcom/jaynux/app/main;)Lcom/jaynux/app/RandomRun$ImgThread;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/jaynux/app/RandomRun$ImgThread;->setGameState(I)V

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$5(Lcom/jaynux/app/main;)Lcom/jaynux/app/RandomRun$ImgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jaynux/app/RandomRun$ImgThread;->getGameState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$6(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$5(Lcom/jaynux/app/main;)Lcom/jaynux/app/RandomRun$ImgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jaynux/app/RandomRun$ImgThread;->DoResume()V

    .line 168
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$2(Lcom/jaynux/app/main;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$6(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$0(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mMeterView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$3(Lcom/jaynux/app/main;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mTimerView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$4(Lcom/jaynux/app/main;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$6(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "RETRY"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    return-void

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$6(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$2(Lcom/jaynux/app/main;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$1(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "PLAY!"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonRetry:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$6(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButtonMain:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$0(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$2(Lcom/jaynux/app/main;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$1(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "PLAY!"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$1(Lcom/jaynux/app/main;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;
    invoke-static {v1}, Lcom/jaynux/app/main;->access$5(Lcom/jaynux/app/main;)Lcom/jaynux/app/RandomRun$ImgThread;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jaynux/app/RandomRun$ImgThread;->setGameState(I)V

    goto :goto_0

    .line 193
    :cond_3
    const-string v1, "JB VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown click "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v1, "JB VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state is  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jaynux/app/main$1;->this$0:Lcom/jaynux/app/main;

    #getter for: Lcom/jaynux/app/main;->mImgThread:Lcom/jaynux/app/RandomRun$ImgThread;
    invoke-static {v3}, Lcom/jaynux/app/main;->access$5(Lcom/jaynux/app/main;)Lcom/jaynux/app/RandomRun$ImgThread;

    move-result-object v3

    iget v3, v3, Lcom/jaynux/app/RandomRun$ImgThread;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
