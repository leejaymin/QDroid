.class public Lcom/superdroid/util/AsyncProgressableTask;
.super Ljava/lang/Object;
.source "AsyncProgressableTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;
    }
.end annotation


# instance fields
.field _asyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _cancelID:I

.field private final _context:Landroid/content/Context;

.field private volatile _isCancelled:Z

.field private final _message:Ljava/lang/CharSequence;

.field private _progressDialog:Landroid/app/ProgressDialog;

.field private final _task:Lcom/superdroid/util/ProgressableRunnable;

.field private final _titleID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/superdroid/util/ProgressableRunnable;I)V
    .locals 7
    .parameter "context"
    .parameter "task"
    .parameter "messageID"

    .prologue
    const/4 v3, -0x1

    .line 28
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/superdroid/util/AsyncProgressableTask;-><init>(Landroid/content/Context;Lcom/superdroid/util/ProgressableRunnable;III[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/superdroid/util/ProgressableRunnable;III)V
    .locals 7
    .parameter "context"
    .parameter "task"
    .parameter "titleID"
    .parameter "messageID"
    .parameter "cancelID"

    .prologue
    .line 23
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/superdroid/util/AsyncProgressableTask;-><init>(Landroid/content/Context;Lcom/superdroid/util/ProgressableRunnable;III[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/superdroid/util/ProgressableRunnable;III[Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "task"
    .parameter "titleID"
    .parameter "messageID"
    .parameter "cancelID"
    .parameter "args"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_cancelID:I

    .line 33
    iput-object p1, p0, Lcom/superdroid/util/AsyncProgressableTask;->_context:Landroid/content/Context;

    .line 34
    iput p3, p0, Lcom/superdroid/util/AsyncProgressableTask;->_titleID:I

    .line 35
    if-nez p6, :cond_0

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_message:Ljava/lang/CharSequence;

    .line 37
    iput p5, p0, Lcom/superdroid/util/AsyncProgressableTask;->_cancelID:I

    .line 38
    iput-object p2, p0, Lcom/superdroid/util/AsyncProgressableTask;->_task:Lcom/superdroid/util/ProgressableRunnable;

    .line 39
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1, p4, p6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/superdroid/util/AsyncProgressableTask;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/superdroid/util/AsyncProgressableTask;->dismiss()V

    return-void
.end method

.method static synthetic access$1(Lcom/superdroid/util/AsyncProgressableTask;)Lcom/superdroid/util/ProgressableRunnable;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_task:Lcom/superdroid/util/ProgressableRunnable;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 101
    :cond_0
    return-void
.end method

.method private showProgressBar()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 67
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/superdroid/util/AsyncProgressableTask;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    .line 68
    iget v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_titleID:I

    if-eq v0, v2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/superdroid/util/AsyncProgressableTask;->_titleID:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/superdroid/util/AsyncProgressableTask;->_message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    iget v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_cancelID:I

    if-eq v0, v2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/superdroid/util/AsyncProgressableTask;->_context:Landroid/content/Context;

    iget v2, p0, Lcom/superdroid/util/AsyncProgressableTask;->_cancelID:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/superdroid/util/AsyncProgressableTask$1;

    invoke-direct {v2, p0}, Lcom/superdroid/util/AsyncProgressableTask$1;-><init>(Lcom/superdroid/util/AsyncProgressableTask;)V

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/superdroid/util/AsyncProgressableTask$2;

    invoke-direct {v1, p0}, Lcom/superdroid/util/AsyncProgressableTask$2;-><init>(Lcom/superdroid/util/AsyncProgressableTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 88
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/superdroid/util/AsyncProgressableTask;->_isCancelled:Z

    .line 92
    invoke-direct {p0}, Lcom/superdroid/util/AsyncProgressableTask;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 94
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_task:Lcom/superdroid/util/ProgressableRunnable;

    invoke-interface {v0}, Lcom/superdroid/util/ProgressableRunnable;->onCancel()V

    .line 95
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_isCancelled:Z

    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/superdroid/util/AsyncProgressableTask;->showProgressBar()V

    .line 57
    new-instance v0, Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;

    invoke-direct {v0, p0}, Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;-><init>(Lcom/superdroid/util/AsyncProgressableTask;)V

    iput-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_asyncTask:Landroid/os/AsyncTask;

    .line 58
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask;->_asyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method
