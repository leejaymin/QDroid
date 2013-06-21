.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "ChallengeControlsListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;
    }
.end annotation


# instance fields
.field private final _challenge:Lcom/scoreloop/client/android/core/model/Challenge;

.field private final _onControlObserver:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;)V
    .locals 1
    .parameter "context"
    .parameter "challenge"
    .parameter "observer"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 50
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->_onControlObserver:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;)Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->_onControlObserver:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->prepareView(Landroid/view/View;)V

    .line 64
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    .line 73
    const v2, 0x7f0c0056

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    .local v0, control1:Landroid/widget/Button;
    new-instance v2, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$1;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$1;-><init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f0c0057

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 82
    .local v1, control2:Landroid/widget/Button;
    new-instance v2, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$2;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$2;-><init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080281

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080268

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Challenge;->isAssigned()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080302

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
