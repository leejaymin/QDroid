.class public Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "ScoreSubmitLocalListItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private prepareView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 60
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    const v1, 0x7f0c0076

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, button:Landroid/widget/Button;
    new-instance v1, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem$1;

    invoke-direct {v1, p0, p1}, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem$1;-><init>(Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x16

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;->prepareView(Landroid/view/View;)V

    .line 51
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
