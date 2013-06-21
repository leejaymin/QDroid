.class public final Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;
.super Lcom/rookiestudio/perfectviewer/LongRunning;
.source "LongRunningActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rookiestudio/perfectviewer/LongRunning",
        "<TResultType;>;"
    }
.end annotation


# instance fields
.field private DialogMode:I

.field private callback:Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rookiestudio/perfectviewer/LongRunningActionCallback",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/rookiestudio/perfectviewer/LongRunningActionCallback",
            "<TResultType;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;,"Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher<TResultType;>;"
    .local p2, callback:Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;,"Lcom/rookiestudio/perfectviewer/LongRunningActionCallback<TResultType;>;"
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/LongRunning;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->DialogMode:I

    .line 35
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->callback:Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->DialogMode:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;I)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "DM"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/rookiestudio/perfectviewer/LongRunningActionCallback",
            "<TResultType;>;I)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;,"Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher<TResultType;>;"
    .local p2, callback:Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;,"Lcom/rookiestudio/perfectviewer/LongRunningActionCallback<TResultType;>;"
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/LongRunning;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->DialogMode:I

    .line 41
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->callback:Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;

    .line 43
    iput p3, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->DialogMode:I

    .line 44
    return-void
.end method


# virtual methods
.method protected onLongRunningActionFinished(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;,"Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher<TResultType;>;"
    .local p1, result:Ljava/lang/Object;,"TResultType;"
    invoke-super {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/LongRunning;->onLongRunningActionFinished(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 80
    iget v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->DialogMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 90
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->callback:Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;

    invoke-interface {v0, p1, p2}, Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;->onLongRunningActionFinished(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    return-void

    .line 84
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->DialogMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-boolean v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "progressDialogTitle"
    .parameter "progressDialogMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TResultType;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;,"Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher<TResultType;>;"
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResultType;>;"
    const/4 v2, 0x1

    .line 61
    iget v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->DialogMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->context:Landroid/content/Context;

    .line 63
    const/4 v1, 0x0

    .line 62
    invoke-static {v0, p2, p3, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    .line 68
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/rookiestudio/perfectviewer/LongRunning;->startLongRunningAction(Ljava/util/concurrent/Callable;)V

    .line 69
    return-void

    .line 65
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->DialogMode:I

    if-ne v0, v2, :cond_0

    .line 66
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0, p3}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
