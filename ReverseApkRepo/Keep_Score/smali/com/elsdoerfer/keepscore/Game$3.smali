.class Lcom/elsdoerfer/keepscore/Game$3;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Game;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Game;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Game;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 261
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v1, v1, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v4, v4, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3, v4}, Lcom/elsdoerfer/keepscore/DbAdapter;->addSessionScores(J[Ljava/lang/Integer;)V

    .line 262
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/elsdoerfer/keepscore/Game;->insertScoreRow([Ljava/lang/Integer;)V

    .line 265
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v1, v1, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v1, v1, Lcom/elsdoerfer/keepscore/Game;->mGameScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Game;->mGameScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 277
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v1, v1, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 278
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    invoke-virtual {v1}, Lcom/elsdoerfer/keepscore/Game;->updateUI()V

    .line 279
    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v1, v1, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    aput-object v6, v1, v0

    .line 267
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v1, v1, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game$3;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iput-object v6, v1, Lcom/elsdoerfer/keepscore/Game;->mLastEnteredValue:Ljava/lang/CharSequence;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
