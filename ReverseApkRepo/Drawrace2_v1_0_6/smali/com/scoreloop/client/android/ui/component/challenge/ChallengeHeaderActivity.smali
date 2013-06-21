.class public Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "ChallengeHeaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;-><init>()V

    return-void
.end method

.method private showControlIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 58
    const v1, 0x7f0c0043

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createChallengePaymentScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const v0, 0x7f030019

    invoke-super {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 48
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->setCaption(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 52
    const v0, 0x7f02001a

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->showControlIcon(I)V

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "userBalance"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onStart()V

    .line 68
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "userBalance"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setDirty(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getBalanceSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"

    .prologue
    .line 78
    const-string v0, "userBalance"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method
