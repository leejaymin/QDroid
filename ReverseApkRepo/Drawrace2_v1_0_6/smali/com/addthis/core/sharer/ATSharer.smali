.class public abstract Lcom/addthis/core/sharer/ATSharer;
.super Ljava/lang/Object;
.source "ATSharer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;
    }
.end annotation


# instance fields
.field protected isOExchange:Z

.field protected mItem:Lcom/addthis/models/ATShareItem;

.field protected mParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/addthis/ui/activities/ATShareActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected mService:Lcom/addthis/models/ATService;


# direct methods
.method public constructor <init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V
    .locals 1
    .parameter "service"
    .parameter "item"
    .parameter "shareActivity"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/addthis/core/sharer/ATSharer;->mService:Lcom/addthis/models/ATService;

    .line 41
    iput-object v0, p0, Lcom/addthis/core/sharer/ATSharer;->mItem:Lcom/addthis/models/ATShareItem;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addthis/core/sharer/ATSharer;->isOExchange:Z

    .line 76
    iput-object p1, p0, Lcom/addthis/core/sharer/ATSharer;->mService:Lcom/addthis/models/ATService;

    .line 77
    iput-object p2, p0, Lcom/addthis/core/sharer/ATSharer;->mItem:Lcom/addthis/models/ATShareItem;

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/addthis/core/sharer/ATSharer;->mParentRef:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method


# virtual methods
.method protected didCompleteShare(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/addthis/core/sharer/ATSharer;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 111
    .local v0, parent:Lcom/addthis/ui/activities/ATShareActivity;
    invoke-virtual {v0, p1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/addthis/core/sharer/ATSharer;->didCompleteShare(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected didCompleteShare(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/addthis/core/sharer/ATSharer;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 92
    .local v0, parent:Lcom/addthis/ui/activities/ATShareActivity;
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->stopProgressDialog()V

    .line 93
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->dismiss()V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 96
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 98
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method public getItem()Lcom/addthis/models/ATShareItem;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/addthis/core/sharer/ATSharer;->mItem:Lcom/addthis/models/ATShareItem;

    return-object v0
.end method

.method public isOExchange()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/addthis/core/sharer/ATSharer;->isOExchange:Z

    return v0
.end method

.method public abstract logoutSharer()V
.end method

.method public service()Lcom/addthis/models/ATService;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/addthis/core/sharer/ATSharer;->mService:Lcom/addthis/models/ATService;

    return-object v0
.end method

.method public setItem(Lcom/addthis/models/ATShareItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/addthis/core/sharer/ATSharer;->mItem:Lcom/addthis/models/ATShareItem;

    .line 124
    return-void
.end method

.method public setService(Lcom/addthis/models/ATService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/addthis/core/sharer/ATSharer;->mService:Lcom/addthis/models/ATService;

    .line 116
    return-void
.end method

.method public abstract share()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation
.end method

.method public abstract shareMessage(Landroid/os/Bundle;)V
.end method

.method public startTrackingCall()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;

    invoke-direct {v0, p0}, Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;-><init>(Lcom/addthis/core/sharer/ATSharer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/addthis/core/sharer/ATSharer$ATTrackingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void
.end method
