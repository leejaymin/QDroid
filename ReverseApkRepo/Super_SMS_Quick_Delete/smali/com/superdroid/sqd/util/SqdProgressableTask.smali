.class public Lcom/superdroid/sqd/util/SqdProgressableTask;
.super Ljava/lang/Object;
.source "SqdProgressableTask.java"


# instance fields
.field private final _context:Landroid/content/Context;

.field private final _message:Ljava/lang/CharSequence;

.field private _progressDialog:Landroid/app/ProgressDialog;

.field private final _task:Ljava/lang/Runnable;

.field private _taskThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;I)V
    .locals 1
    .parameter "context"
    .parameter "task"
    .parameter "messageID"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/superdroid/sqd/util/SqdProgressableTask;-><init>(Landroid/content/Context;Ljava/lang/Runnable;I[Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;I[Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "task"
    .parameter "messageID"
    .parameter "args"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_context:Landroid/content/Context;

    .line 22
    if-nez p4, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_message:Ljava/lang/CharSequence;

    .line 24
    iput-object p2, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_task:Ljava/lang/Runnable;

    .line 25
    return-void

    .line 23
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/superdroid/sqd/util/SqdProgressableTask;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/superdroid/sqd/util/SqdProgressableTask;->dismiss()V

    return-void
.end method

.method static synthetic access$1(Lcom/superdroid/sqd/util/SqdProgressableTask;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_task:Ljava/lang/Runnable;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 57
    :cond_0
    return-void
.end method

.method private showProgressBar()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    .line 48
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 51
    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_taskThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_taskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/superdroid/sqd/util/SqdProgressableTask;->showProgressBar()V

    .line 29
    new-instance v0, Lcom/superdroid/sqd/util/SqdProgressableTask$1;

    const-string v1, "ProgressableTask"

    invoke-direct {v0, p0, v1}, Lcom/superdroid/sqd/util/SqdProgressableTask$1;-><init>(Lcom/superdroid/sqd/util/SqdProgressableTask;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_taskThread:Ljava/lang/Thread;

    .line 38
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask;->_taskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    return-void
.end method
