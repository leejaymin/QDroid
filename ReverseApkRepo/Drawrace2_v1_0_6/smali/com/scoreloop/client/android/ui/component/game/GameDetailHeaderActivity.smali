.class public Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "GameDetailHeaderActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 40
    const v0, 0x7f03001a

    invoke-super {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 41
    return-void
.end method

.method public onRefresh(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 51
    const v2, 0x7f0c0047

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, controlButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    .line 53
    .local v1, game:Lcom/scoreloop/client/android/core/model/Game;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getPublisherName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getPackageNames()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    invoke-static {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->isGameInstalled(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Game;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const v2, 0x7f0802c9

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v2, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;Lcom/scoreloop/client/android/core/model/Game;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    :goto_1
    return-void

    .line 68
    :cond_0
    const v2, 0x7f0802c5

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v2, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$2;-><init>(Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;Lcom/scoreloop/client/android/core/model/Game;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 79
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->setNeedsRefresh()V

    .line 47
    return-void
.end method
