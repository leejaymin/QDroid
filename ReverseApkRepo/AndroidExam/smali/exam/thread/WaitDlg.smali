.class Lexam/thread/WaitDlg;
.super Landroid/os/HandlerThread;
.source "BackWork3.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mMsg:Ljava/lang/String;

.field mProgress:Landroid/app/ProgressDialog;

.field mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 94
    const-string v0, "waitdlg"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lexam/thread/WaitDlg;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lexam/thread/WaitDlg;->mTitle:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lexam/thread/WaitDlg;->mMsg:Ljava/lang/String;

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lexam/thread/WaitDlg;->setDaemon(Z)V

    .line 100
    return-void
.end method

.method static stop(Lexam/thread/WaitDlg;)V
    .locals 2
    .parameter "dlg"

    .prologue
    .line 113
    iget-object v0, p0, Lexam/thread/WaitDlg;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 115
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lexam/thread/WaitDlg;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 118
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lexam/thread/WaitDlg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexam/thread/WaitDlg;->mProgress:Landroid/app/ProgressDialog;

    .line 104
    iget-object v0, p0, Lexam/thread/WaitDlg;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 105
    iget-object v0, p0, Lexam/thread/WaitDlg;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lexam/thread/WaitDlg;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lexam/thread/WaitDlg;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lexam/thread/WaitDlg;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lexam/thread/WaitDlg;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 108
    iget-object v0, p0, Lexam/thread/WaitDlg;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 109
    return-void
.end method
