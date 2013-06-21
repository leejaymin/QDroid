.class Lexam/thread/LongTime5$AccumulateTask;
.super Landroid/os/AsyncTask;
.source "LongTime5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/LongTime5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime5;


# direct methods
.method constructor <init>(Lexam/thread/LongTime5;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 46
    :goto_0
    invoke-virtual {p0}, Lexam/thread/LongTime5$AccumulateTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget v0, v0, Lexam/thread/LongTime5;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget v1, v0, Lexam/thread/LongTime5;->mValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lexam/thread/LongTime5;->mValue:I

    .line 48
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget v0, v0, Lexam/thread/LongTime5;->mValue:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget-object v2, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget v2, v2, Lexam/thread/LongTime5;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lexam/thread/LongTime5$AccumulateTask;->publishProgress([Ljava/lang/Object;)V

    .line 53
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lexam/thread/LongTime5$AccumulateTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 69
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 64
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 65
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lexam/thread/LongTime5$AccumulateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iput v3, v0, Lexam/thread/LongTime5;->mValue:I

    .line 31
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    .line 32
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 33
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, "Updating"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, "Wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 36
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 37
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, "Cancel"

    new-instance v2, Lexam/thread/LongTime5$AccumulateTask$1;

    invoke-direct {v2, p0}, Lexam/thread/LongTime5$AccumulateTask$1;-><init>(Lexam/thread/LongTime5$AccumulateTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 43
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mProgress:Landroid/app/ProgressDialog;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 60
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask;->this$0:Lexam/thread/LongTime5;

    iget-object v0, v0, Lexam/thread/LongTime5;->mText:Landroid/widget/TextView;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lexam/thread/LongTime5$AccumulateTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
