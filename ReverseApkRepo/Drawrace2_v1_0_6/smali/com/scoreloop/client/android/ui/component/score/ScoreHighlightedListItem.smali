.class public Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;
.super Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;
.source "ScoreHighlightedListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem$HighlightedViewHolder;
    }
.end annotation


# instance fields
.field private _ranking:Lcom/scoreloop/client/android/core/model/Ranking;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/Ranking;)V
    .locals 1
    .parameter "activity"
    .parameter "score"
    .parameter "ranking"

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Score;Z)V

    .line 44
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;->_ranking:Lcom/scoreloop/client/android/core/model/Ranking;

    .line 45
    return-void
.end method


# virtual methods
.method protected createViewHolder()Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem$HighlightedViewHolder;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem$HighlightedViewHolder;-><init>()V

    return-object v0
.end method

.method protected fillViewHolder(Landroid/view/View;Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V
    .locals 1
    .parameter "view"
    .parameter "holder"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;->fillViewHolder(Landroid/view/View;Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V

    .line 55
    check-cast p2, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem$HighlightedViewHolder;

    .end local p2
    const v0, 0x7f0c0075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem$HighlightedViewHolder;->percentText:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f03002e

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x15

    return v0
.end method

.method public setRanking(Lcom/scoreloop/client/android/core/model/Ranking;)V
    .locals 0
    .parameter "ranking"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;->_ranking:Lcom/scoreloop/client/android/core/model/Ranking;

    .line 70
    return-void
.end method

.method protected updateViews(Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;->updateViews(Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V

    .line 76
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;->_ranking:Lcom/scoreloop/client/android/core/model/Ranking;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatRanking(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Ranking;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, percentageString:Ljava/lang/String;
    check-cast p1, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem$HighlightedViewHolder;

    .end local p1
    iget-object v1, p1, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem$HighlightedViewHolder;->percentText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
