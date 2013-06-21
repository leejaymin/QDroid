.class public Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "DockedPodHeaderAdapter.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private pod_docked_title_bar_view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.wolfram.android.alpha.DockedPodAdapter"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method

.method private assign_banner_view_to_barpod_docked_title_bar(Landroid/view/View;)V
    .locals 6
    .parameter "banner_view"

    .prologue
    .line 95
    iget-object v4, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->pod_docked_title_bar_view:Landroid/view/View;

    const v5, 0x7f0e006e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, pod_docked_title:Landroid/widget/TextView;
    const v4, 0x7f0e00b8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, weather_banner_title:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    iget-object v4, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->pod_docked_title_bar_view:Landroid/view/View;

    const v5, 0x7f0e006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 101
    .local v1, podstate_docked_progressbar:Landroid/widget/ProgressBar;
    const v4, 0x7f0e00b9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 102
    .local v3, weather_podstate_progressbar:Landroid/widget/ProgressBar;
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    :cond_1
    return-void
.end method

.method private assign_pod_view_to_barpod_docked_title_bar(Landroid/view/View;)V
    .locals 10
    .parameter "pod_view"

    .prologue
    .line 56
    iget-object v8, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->pod_docked_title_bar_view:Landroid/view/View;

    const v9, 0x7f0e006e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, pod_docked_title:Landroid/widget/TextView;
    const v8, 0x7f0e0069

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, pod_title:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v8, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->pod_docked_title_bar_view:Landroid/view/View;

    const v9, 0x7f0e006f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 62
    .local v6, podstate_docked_progressbar:Landroid/widget/ProgressBar;
    const v8, 0x7f0e006a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 63
    .local v7, podstate_progressbar:Landroid/widget/ProgressBar;
    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v9

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    :cond_1
    iget-object v8, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->pod_docked_title_bar_view:Landroid/view/View;

    const v9, 0x7f0e0070

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 69
    .local v1, pod_docked_togglearrows_off:Landroid/widget/ImageView;
    const v8, 0x7f0e006b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 70
    .local v4, pod_togglearrows_off:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-eq v8, v9, :cond_2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :cond_2
    new-instance v8, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter$1;

    invoke-direct {v8, p0, p1}, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter$1;-><init>(Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v8, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->pod_docked_title_bar_view:Landroid/view/View;

    const v9, 0x7f0e0071

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 81
    .local v2, pod_docked_togglearrows_on:Landroid/widget/ImageView;
    const v8, 0x7f0e006c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 82
    .local v5, pod_togglearrows_on:Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-eq v8, v9, :cond_3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_3
    new-instance v8, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter$2;

    invoke-direct {v8, p0, p1}, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter$2;-><init>(Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->pod_docked_title_bar_view:Landroid/view/View;

    .line 46
    sget-object v0, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->assign_banner_view_to_barpod_docked_title_bar(Landroid/view/View;)V

    .line 47
    :cond_0
    sget-object v0, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/PodView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/wolfram/android/alpha/view/QueryResultView;->pod_view_docked:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->assign_pod_view_to_barpod_docked_title_bar(Landroid/view/View;)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->pod_docked_title_bar_view:Landroid/view/View;

    return-object v0
.end method
