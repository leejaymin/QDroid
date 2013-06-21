.class public abstract Lstericson/busybox/donate/jobs/AsyncJob;
.super Landroid/os/AsyncTask;
.source "AsyncJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Lstericson/busybox/donate/domain/JobResult",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field private static contextJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/jobs/AsyncJob;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected context:Landroid/app/Activity;

.field protected isDialogDismissable:Z

.field protected popupWindow:Landroid/widget/PopupWindow;

.field protected showDialog:Z

.field protected stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lstericson/busybox/donate/jobs/AsyncJob;->contextJobs:Ljava/util/Map;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "context"
    .parameter "stringId"

    .prologue
    .line 34
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 1
    .parameter "context"
    .parameter "stringId"
    .parameter "showDialog"

    .prologue
    .line 39
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZZ)V
    .locals 1
    .parameter "context"
    .parameter "stringId"
    .parameter "showDialog"
    .parameter "isDialogDismissable"

    .prologue
    .line 42
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lstericson/busybox/donate/jobs/AsyncJob;->stringId:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lstericson/busybox/donate/jobs/AsyncJob;->showDialog:Z

    .line 44
    iput-object p1, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    .line 45
    iput p2, p0, Lstericson/busybox/donate/jobs/AsyncJob;->stringId:I

    .line 46
    iput-boolean p3, p0, Lstericson/busybox/donate/jobs/AsyncJob;->showDialog:Z

    .line 47
    iput-boolean p4, p0, Lstericson/busybox/donate/jobs/AsyncJob;->isDialogDismissable:Z

    .line 48
    invoke-direct {p0, p0}, Lstericson/busybox/donate/jobs/AsyncJob;->add(Lstericson/busybox/donate/jobs/AsyncJob;)V

    .line 49
    return-void
.end method

.method private add(Lstericson/busybox/donate/jobs/AsyncJob;)V
    .locals 3
    .parameter "job"

    .prologue
    .line 121
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    sget-object v1, Lstericson/busybox/donate/jobs/AsyncJob;->contextJobs:Ljava/util/Map;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 122
    .local v0, jobs:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/jobs/AsyncJob;>;"
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #jobs:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/jobs/AsyncJob;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .restart local v0       #jobs:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/jobs/AsyncJob;>;"
    sget-object v1, Lstericson/busybox/donate/jobs/AsyncJob;->contextJobs:Ljava/util/Map;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public static cancelAllJobs(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 153
    sget-object v2, Lstericson/busybox/donate/jobs/AsyncJob;->contextJobs:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 154
    .local v1, jobs:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/jobs/AsyncJob;>;"
    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    :cond_0
    return-void

    .line 156
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/jobs/AsyncJob;

    .line 158
    .local v0, job:Lstericson/busybox/donate/jobs/AsyncJob;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lstericson/busybox/donate/jobs/AsyncJob;->cancel(Z)Z

    goto :goto_0
.end method

.method public static dismissDialog(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 198
    sget-object v3, Lstericson/busybox/donate/jobs/AsyncJob;->contextJobs:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 199
    .local v1, jobs:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/jobs/AsyncJob;>;"
    if-eqz v1, :cond_1

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 208
    :cond_1
    return-void

    .line 201
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/jobs/AsyncJob;

    .line 203
    .local v0, job:Lstericson/busybox/donate/jobs/AsyncJob;
    invoke-virtual {v0}, Lstericson/busybox/donate/jobs/AsyncJob;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v2

    .line 204
    .local v2, popupWindow:Landroid/widget/PopupWindow;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public static isDismissableDialog(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 182
    sget-object v3, Lstericson/busybox/donate/jobs/AsyncJob;->contextJobs:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    .local v1, jobs:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/jobs/AsyncJob;>;"
    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 192
    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 185
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/jobs/AsyncJob;

    .line 187
    .local v0, job:Lstericson/busybox/donate/jobs/AsyncJob;
    invoke-virtual {v0}, Lstericson/busybox/donate/jobs/AsyncJob;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v2

    .line 188
    .local v2, popupWindow:Landroid/widget/PopupWindow;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lstericson/busybox/donate/jobs/AsyncJob;->isDialogDismissable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isShowingDialog(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 166
    sget-object v3, Lstericson/busybox/donate/jobs/AsyncJob;->contextJobs:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 167
    .local v1, jobs:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/jobs/AsyncJob;>;"
    if-eqz v1, :cond_1

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 176
    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 169
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/jobs/AsyncJob;

    .line 171
    .local v0, job:Lstericson/busybox/donate/jobs/AsyncJob;
    invoke-virtual {v0}, Lstericson/busybox/donate/jobs/AsyncJob;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v2

    .line 172
    .local v2, popupWindow:Landroid/widget/PopupWindow;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private remove(Lstericson/busybox/donate/jobs/AsyncJob;)V
    .locals 3
    .parameter "job"

    .prologue
    .line 133
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    sget-object v1, Lstericson/busybox/donate/jobs/AsyncJob;->contextJobs:Ljava/util/Map;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    .local v0, jobs:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/jobs/AsyncJob;>;"
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method abstract callback(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->doInBackground([Ljava/lang/Void;)Lstericson/busybox/donate/domain/JobResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lstericson/busybox/donate/domain/JobResult;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lstericson/busybox/donate/domain/JobResult",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/AsyncJob;->handle()Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, obj:Ljava/lang/Object;,"TE;"
    new-instance v1, Lstericson/busybox/donate/domain/JobResult;

    invoke-direct {v1}, Lstericson/busybox/donate/domain/JobResult;-><init>()V

    .line 60
    .local v1, result:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    invoke-virtual {v1, v0}, Lstericson/busybox/donate/domain/JobResult;->setObj(Ljava/lang/Object;)V

    .line 61
    return-object v1
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 142
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    iget-object v0, p0, Lstericson/busybox/donate/jobs/AsyncJob;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method abstract handle()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public isDialogDismissable()Z
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    iget-boolean v0, p0, Lstericson/busybox/donate/jobs/AsyncJob;->isDialogDismissable:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lstericson/busybox/donate/domain/JobResult;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->onPostExecute(Lstericson/busybox/donate/domain/JobResult;)V

    return-void
.end method

.method protected onPostExecute(Lstericson/busybox/donate/domain/JobResult;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lstericson/busybox/donate/domain/JobResult",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    .local p1, result:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/AsyncJob;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lstericson/busybox/donate/jobs/AsyncJob;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lstericson/busybox/donate/jobs/AsyncJob$2;

    invoke-direct {v1, p0}, Lstericson/busybox/donate/jobs/AsyncJob$2;-><init>(Lstericson/busybox/donate/jobs/AsyncJob;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 113
    :cond_0
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/JobResult;->getObj()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/jobs/AsyncJob;->callback(Ljava/lang/Object;)V

    .line 115
    :cond_1
    invoke-direct {p0, p0}, Lstericson/busybox/donate/jobs/AsyncJob;->remove(Lstericson/busybox/donate/jobs/AsyncJob;)V

    .line 116
    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    const/4 v5, -0x1

    .line 68
    iget-boolean v3, p0, Lstericson/busybox/donate/jobs/AsyncJob;->showDialog:Z

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    .line 71
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, layout:Landroid/view/View;
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v3

    invoke-virtual {v3, v1}, Lstericson/busybox/donate/App;->setPopupView(Landroid/view/View;)V

    .line 76
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lstericson/busybox/donate/jobs/AsyncJob;->popupWindow:Landroid/widget/PopupWindow;

    .line 78
    iget-object v3, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    const v4, 0x7f050016

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lstericson/busybox/donate/jobs/AsyncJob$1;

    invoke-direct {v4, p0}, Lstericson/busybox/donate/jobs/AsyncJob$1;-><init>(Lstericson/busybox/donate/jobs/AsyncJob;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    const v3, 0x7f05000c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 92
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    iget v4, p0, Lstericson/busybox/donate/jobs/AsyncJob;->stringId:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 213
    .local p0, this:Lstericson/busybox/donate/jobs/AsyncJob;,"Lstericson/busybox/donate/jobs/AsyncJob<TE;>;"
    return-void
.end method
