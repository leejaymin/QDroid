.class public Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "ScoreHeaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;-><init>()V

    return-void
.end method

.method private showControlIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 72
    const v1, 0x7f0c0043

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 75
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 41
    invoke-virtual {p0, p2}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getModeForPosition(I)I

    move-result v0

    .line 42
    .local v0, mode:I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "mode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 47
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->showDialogSafe(IZ)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 52
    const v1, 0x7f030019

    invoke-super {p0, p1, v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 54
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->setCaption(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "isLocalLeadearboard"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 58
    .local v0, isLocalLeaderboard:Z
    if-eqz v0, :cond_1

    .line 59
    const v1, 0x7f0802d1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const v1, 0x7f020020

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->showControlIcon(I)V

    .line 66
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->updateUI()V

    .line 67
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "mode"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void

    .line 61
    :cond_1
    const v1, 0x7f0802ca

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->getModesNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 83
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 96
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;->updateUI()V

    .line 99
    :cond_0
    return-void
.end method
