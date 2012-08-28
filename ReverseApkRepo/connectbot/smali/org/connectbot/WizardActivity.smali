.class public Lorg/connectbot/WizardActivity;
.super Landroid/app/Activity;
.source "WizardActivity.java"


# instance fields
.field protected flipper:Landroid/widget/ViewFlipper;

.field private next:Landroid/widget/Button;

.field private prev:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 37
    return-void
.end method


# virtual methods
.method protected isFirstDisplayed()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLastDisplayed()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lorg/connectbot/WizardActivity;->setContentView(I)V

    .line 46
    const v3, 0x7f0b001f

    invoke-virtual {p0, v3}, Lorg/connectbot/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    const v5, 0x7f030012

    iget-object v6, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lorg/connectbot/WizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070010

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, topics:[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 58
    const v3, 0x7f0b0021

    invoke-virtual {p0, v3}, Lorg/connectbot/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/connectbot/WizardActivity;->next:Landroid/widget/Button;

    .line 59
    iget-object v3, p0, Lorg/connectbot/WizardActivity;->next:Landroid/widget/Button;

    new-instance v4, Lorg/connectbot/WizardActivity$1;

    invoke-direct {v4, p0}, Lorg/connectbot/WizardActivity$1;-><init>(Lorg/connectbot/WizardActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lorg/connectbot/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/connectbot/WizardActivity;->prev:Landroid/widget/Button;

    .line 74
    iget-object v3, p0, Lorg/connectbot/WizardActivity;->prev:Landroid/widget/Button;

    new-instance v4, Lorg/connectbot/WizardActivity$2;

    invoke-direct {v4, p0}, Lorg/connectbot/WizardActivity$2;-><init>(Lorg/connectbot/WizardActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lorg/connectbot/WizardActivity;->updateButtons()V

    .line 89
    return-void

    .line 54
    :cond_0
    aget-object v1, v2, v3

    .line 55
    .local v1, topic:Ljava/lang/String;
    iget-object v4, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    new-instance v6, Lorg/connectbot/util/HelpTopicView;

    invoke-direct {v6, p0}, Lorg/connectbot/util/HelpTopicView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Lorg/connectbot/util/HelpTopicView;->setTopic(Ljava/lang/String;)Lorg/connectbot/util/HelpTopicView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected updateButtons()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 102
    .local v0, eula:Z
    :goto_0
    iget-object v2, p0, Lorg/connectbot/WizardActivity;->next:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const v1, 0x7f0800b4

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lorg/connectbot/WizardActivity;->prev:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 100
    .end local v0           #eula:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    .restart local v0       #eula:Z
    :cond_1
    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 103
    :cond_2
    const v1, 0x7f0800b6

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
