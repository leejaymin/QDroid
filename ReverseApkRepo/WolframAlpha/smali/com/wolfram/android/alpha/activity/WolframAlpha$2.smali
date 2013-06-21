.class Lcom/wolfram/android/alpha/activity/WolframAlpha$2;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 467
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    const v4, 0x7f0e0065

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 469
    .local v2, queryResultListView:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->progressBar_Animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$600(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->progressBar_Animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$600(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 472
    :cond_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 474
    .local v0, contentView:Landroid/view/ViewGroup;
    const v3, 0x7f0e000a

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 477
    .local v1, progressView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 481
    :cond_1
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->authenticating_bar_view:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 482
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->authenticating_bar_view:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getLicenseChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 485
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/wolfram/android/alpha/QueryResultAdapter;

    iget-object v4, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    invoke-static {v4}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$700(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;Z)V

    .line 489
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 493
    :cond_3
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getLicenseChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore_license:Z
    invoke-static {v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$800(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 495
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    iget-object v4, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_query:Lcom/wolfram/alpha/WAQuery;
    invoke-static {v4}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$900(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v4

    iget-object v5, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_PodStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;
    invoke-static {v5}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1000(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/android/alpha/PodStateButtonData;

    move-result-object v5

    iget-object v6, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_isTryAgain:Z
    invoke-static {v6}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1100(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Z

    move-result v6

    #calls: Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V
    invoke-static {v3, v4, v5, v6}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1200(Lcom/wolfram/android/alpha/activity/WolframAlpha;Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V

    .line 499
    :cond_4
    return-void
.end method
