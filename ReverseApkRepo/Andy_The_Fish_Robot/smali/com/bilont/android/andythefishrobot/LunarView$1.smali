.class Lcom/bilont/android/andythefishrobot/LunarView$1;
.super Landroid/os/Handler;
.source "LunarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilont/android/andythefishrobot/LunarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstTime:Z

.field final synthetic this$0:Lcom/bilont/android/andythefishrobot/LunarView;


# direct methods
.method constructor <init>(Lcom/bilont/android/andythefishrobot/LunarView;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bilont/android/andythefishrobot/LunarView$1;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    .line 1388
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilont/android/andythefishrobot/LunarView$1;->firstTime:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 1393
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "viz"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1394
    .local v0, vis:I
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$1;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilont/android/andythefishrobot/LunarView;->access$9(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1395
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$1;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilont/android/andythefishrobot/LunarView;->access$9(Lcom/bilont/android/andythefishrobot/LunarView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    iget-boolean v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$1;->firstTime:Z

    if-nez v1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$1;->this$0:Lcom/bilont/android/andythefishrobot/LunarView;

    #getter for: Lcom/bilont/android/andythefishrobot/LunarView;->mAd:Lcom/admob/android/ads/AdView;
    invoke-static {v1}, Lcom/bilont/android/andythefishrobot/LunarView;->access$10(Lcom/bilont/android/andythefishrobot/LunarView;)Lcom/admob/android/ads/AdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 1407
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bilont/android/andythefishrobot/LunarView$1;->firstTime:Z

    .line 1408
    return-void
.end method
