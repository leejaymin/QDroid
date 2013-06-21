.class public Lcom/scoreloop/client/android/ui/component/game/GameDetailListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "GameDetailListItem.java"


# instance fields
.field private final _game:Lcom/scoreloop/client/android/core/model/Game;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 1
    .parameter "context"
    .parameter "drawable"
    .parameter "game"

    .prologue
    .line 40
    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/Game;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 41
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListItem;->_game:Lcom/scoreloop/client/android/core/model/Game;

    .line 42
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xd

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030026

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 54
    :cond_0
    const v2, 0x7f0c006a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, detail:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListItem;->_game:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 57
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListItem;->_game:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getPublisherName()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_1
    if-eqz v0, :cond_2

    .line 60
    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_2
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
