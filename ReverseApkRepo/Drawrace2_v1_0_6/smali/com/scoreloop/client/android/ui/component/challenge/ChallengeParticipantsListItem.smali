.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "ChallengeParticipantsListItem.java"


# instance fields
.field private final _contender:Lcom/scoreloop/client/android/core/model/User;

.field private _contenderStats:Ljava/lang/String;

.field private final _contestant:Lcom/scoreloop/client/android/core/model/User;

.field private _contestantStats:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter "context"
    .parameter "contender"
    .parameter "contestant"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contender:Lcom/scoreloop/client/android/core/model/User;

    .line 47
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    .line 48
    return-void
.end method

.method private getDrawableLoading()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x7

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->prepareView(Landroid/view/View;)V

    .line 61
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x0

    .line 70
    const v10, 0x7f0c005f

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, contenderIconView:Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contender:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v10}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, contenderImageUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->getDrawableLoading()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 74
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v9, v0, v11}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 77
    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const v10, 0x7f0c0060

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, contenderNameView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contender:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v10}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v10, 0x7f0c0061

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, contenderStatsView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contenderStats:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v10, 0x7f0c0062

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 84
    .local v4, contestantIconView:Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v10, :cond_2

    .line 85
    iget-object v10, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v10}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, contestantImageUrl:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->getDrawableLoading()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 88
    .restart local v9       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5, v9, v4, v11}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 94
    .end local v5           #contestantImageUrl:Ljava/lang/String;
    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    const v10, 0x7f0c0063

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 95
    .local v7, contestantNameView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v10}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, contestantName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v10, 0x7f0c0064

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 100
    .local v8, contestantStatsView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contestantStats:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void

    .line 91
    .end local v6           #contestantName:Ljava/lang/String;
    .end local v7           #contestantNameView:Landroid/widget/TextView;
    .end local v8           #contestantStatsView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020047

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 95
    .restart local v7       #contestantNameView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080275

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public setContenderStats(Ljava/lang/String;)V
    .locals 0
    .parameter "contenderStats"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contenderStats:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setContestantStats(Ljava/lang/String;)V
    .locals 0
    .parameter "contestantStats"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->_contestantStats:Ljava/lang/String;

    .line 113
    return-void
.end method
