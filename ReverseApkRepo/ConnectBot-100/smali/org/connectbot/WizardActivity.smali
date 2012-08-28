.class public Lorg/connectbot/WizardActivity;
.super Landroid/app/Activity;
.source "WizardActivity.java"


# static fields
.field public static final ACTION_NEXT:I = 0x1

.field public static final ACTION_PREV:I = -0x1


# instance fields
.field protected actionHandler:Landroid/os/Handler;

.field protected animCross:Landroid/view/animation/Animation;

.field protected animFinger:Landroid/view/animation/Animation;

.field protected cross:Landroid/widget/ImageView;

.field protected finger:Landroid/widget/ImageView;

.field protected flipper:Landroid/widget/ViewFlipper;

.field protected next:Landroid/widget/Button;

.field protected prev:Landroid/widget/Button;

.field protected scroll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-instance v0, Lorg/connectbot/WizardActivity$1;

    invoke-direct {v0, p0}, Lorg/connectbot/WizardActivity$1;-><init>(Lorg/connectbot/WizardActivity;)V

    iput-object v0, p0, Lorg/connectbot/WizardActivity;->actionHandler:Landroid/os/Handler;

    .line 63
    iput-object v1, p0, Lorg/connectbot/WizardActivity;->scroll:Landroid/widget/ScrollView;

    .line 64
    iput-object v1, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 67
    iput-object v1, p0, Lorg/connectbot/WizardActivity;->finger:Landroid/widget/ImageView;

    .line 68
    iput-object v1, p0, Lorg/connectbot/WizardActivity;->cross:Landroid/widget/ImageView;

    .line 70
    iput-object v1, p0, Lorg/connectbot/WizardActivity;->animFinger:Landroid/view/animation/Animation;

    .line 71
    iput-object v1, p0, Lorg/connectbot/WizardActivity;->animCross:Landroid/view/animation/Animation;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->setContentView(I)V

    .line 81
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 83
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lorg/connectbot/WizardActivity;->scroll:Landroid/widget/ScrollView;

    .line 84
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 86
    iget-object v1, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    const v2, 0x7f03000f

    iget-object v3, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    const v2, 0x7f030010

    iget-object v3, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 89
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/connectbot/WizardActivity;->next:Landroid/widget/Button;

    .line 90
    iget-object v1, p0, Lorg/connectbot/WizardActivity;->next:Landroid/widget/Button;

    new-instance v2, Lorg/connectbot/WizardActivity$2;

    invoke-direct {v2, p0}, Lorg/connectbot/WizardActivity$2;-><init>(Lorg/connectbot/WizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lorg/connectbot/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/connectbot/WizardActivity;->prev:Landroid/widget/Button;

    .line 97
    iget-object v1, p0, Lorg/connectbot/WizardActivity;->prev:Landroid/widget/Button;

    new-instance v2, Lorg/connectbot/WizardActivity$3;

    invoke-direct {v2, p0}, Lorg/connectbot/WizardActivity$3;-><init>(Lorg/connectbot/WizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lorg/connectbot/WizardActivity;->setButtons()V

    .line 106
    return-void
.end method

.method protected setButtons()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 58
    .local v0, eula:Z
    :goto_0
    iget-object v1, p0, Lorg/connectbot/WizardActivity;->next:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const-string v2, "Agree"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lorg/connectbot/WizardActivity;->prev:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const-string v2, "Cancel"

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void

    .line 56
    .end local v0           #eula:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 58
    .restart local v0       #eula:Z
    :cond_1
    const-string v2, "Next"

    goto :goto_1

    .line 59
    :cond_2
    const-string v2, "Back"

    goto :goto_2
.end method
