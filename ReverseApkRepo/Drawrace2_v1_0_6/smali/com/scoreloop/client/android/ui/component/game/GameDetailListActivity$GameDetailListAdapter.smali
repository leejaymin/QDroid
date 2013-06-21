.class Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity$GameDetailListAdapter;
.super Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
.source "GameDetailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameDetailListAdapter"
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
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 45
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity$GameDetailListAdapter;->this$0:Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;

    .line 46
    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v1, 0x7f080283

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v2, v1}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity$GameDetailListAdapter;->add(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListItem;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-direct {v0, p2, v2, v1}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/core/model/Game;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity$GameDetailListAdapter;->add(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
