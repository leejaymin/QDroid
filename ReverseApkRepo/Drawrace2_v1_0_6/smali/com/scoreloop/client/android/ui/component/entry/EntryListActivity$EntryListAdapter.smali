.class Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;
.super Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
.source "EntryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryListAdapter"
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
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 46
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;->this$0:Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;

    .line 47
    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    .line 51
    .local v0, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    new-instance v2, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v5, v3}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;->add(Ljava/lang/Object;)V

    .line 52
    new-instance v2, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    const v3, 0x7f020056

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0802ca

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->leaderboardsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$002(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    .line 54
    #getter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->leaderboardsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;->add(Ljava/lang/Object;)V

    .line 55
    sget-object v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    new-instance v2, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    const v3, 0x7f020043

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f08026b

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->achievementsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$102(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    .line 58
    #getter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->achievementsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;->add(Ljava/lang/Object;)V

    .line 60
    :cond_0
    sget-object v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    new-instance v2, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    const v3, 0x7f02004a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f080279

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->challengesItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$202(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    .line 63
    #getter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->challengesItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$200(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;->add(Ljava/lang/Object;)V

    .line 65
    :cond_1
    sget-object v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->NEWS:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    new-instance v2, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    const v3, 0x7f02005a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0802e0

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->newsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$302(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    .line 68
    #getter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->newsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$300(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;->add(Ljava/lang/Object;)V

    .line 70
    :cond_2
    sget-object v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    new-instance v2, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    const v3, 0x7f020063

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f08031c

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->shopItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$402(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    .line 73
    #getter for: Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->shopItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->access$400(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;->add(Ljava/lang/Object;)V

    .line 75
    :cond_3
    return-void
.end method
