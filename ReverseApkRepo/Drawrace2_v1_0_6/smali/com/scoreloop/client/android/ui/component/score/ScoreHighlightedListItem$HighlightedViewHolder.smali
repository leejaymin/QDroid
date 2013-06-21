.class Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem$HighlightedViewHolder;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;
.source "ScoreHighlightedListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HighlightedViewHolder"
.end annotation


# instance fields
.field percentText:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;-><init>()V

    return-void
.end method
