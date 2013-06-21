.class public Lcom/addthis/core/sharer/ATOExchangeSharer;
.super Lcom/addthis/core/sharer/ATSharer;
.source "ATOExchangeSharer.java"


# instance fields
.field private mOExchangeShareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V
    .locals 1
    .parameter "service"
    .parameter "item"
    .parameter "shareActivity"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/addthis/core/sharer/ATSharer;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/core/sharer/ATOExchangeSharer;->mOExchangeShareUrl:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addthis/core/sharer/ATOExchangeSharer;->isOExchange:Z

    .line 32
    return-void
.end method


# virtual methods
.method public logoutSharer()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public oExchangeShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOExchangeSharer;->mOExchangeShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public share()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOExchangeSharer;->mItem:Lcom/addthis/models/ATShareItem;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATOExchangeSharer;->mService:Lcom/addthis/models/ATService;

    invoke-virtual {v1}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/addthis/utils/ATUtil;->buildUrl(Lcom/addthis/models/ATShareItem;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/core/sharer/ATOExchangeSharer;->mOExchangeShareUrl:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOExchangeSharer;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATOExchangeSharer;->mOExchangeShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->showOExchangeWebView(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public shareMessage(Landroid/os/Bundle;)V
    .locals 0
    .parameter "messageValues"

    .prologue
    .line 48
    return-void
.end method
