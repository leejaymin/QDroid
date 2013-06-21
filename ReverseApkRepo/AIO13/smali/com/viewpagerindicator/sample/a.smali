.class final Lcom/viewpagerindicator/sample/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/sample/SampleTabsDefault;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/sample/SampleTabsDefault;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/sample/a;->a:Lcom/viewpagerindicator/sample/SampleTabsDefault;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/viewpagerindicator/sample/a;->a:Lcom/viewpagerindicator/sample/SampleTabsDefault;

    #getter for: Lcom/viewpagerindicator/sample/SampleTabsDefault;->adView:Lcom/google/ads/AdView;
    invoke-static {v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->access$1(Lcom/viewpagerindicator/sample/SampleTabsDefault;)Lcom/google/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/sample/a;->a:Lcom/viewpagerindicator/sample/SampleTabsDefault;

    #getter for: Lcom/viewpagerindicator/sample/SampleTabsDefault;->adView:Lcom/google/ads/AdView;
    invoke-static {v0}, Lcom/viewpagerindicator/sample/SampleTabsDefault;->access$1(Lcom/viewpagerindicator/sample/SampleTabsDefault;)Lcom/google/ads/AdView;

    move-result-object v0

    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    :cond_0
    return-void
.end method
