.class Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;
.super Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
.source "MarketListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocialMarketListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 42
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;->this$0:Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;

    .line 43
    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v1, 0x7f0802d2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v2, v1}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;->add(Ljava/lang/Object;)V

    .line 45
    #getter for: Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_newGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;)Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;->add(Ljava/lang/Object;)V

    .line 46
    #getter for: Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_popularGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;)Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;->add(Ljava/lang/Object;)V

    .line 47
    #getter for: Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_buddiesGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->access$200(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;)Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;->add(Ljava/lang/Object;)V

    .line 48
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v1, 0x7f0802f5

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v2, v1}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;->add(Ljava/lang/Object;)V

    .line 49
    #getter for: Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_myGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->access$300(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;)Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;->add(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
