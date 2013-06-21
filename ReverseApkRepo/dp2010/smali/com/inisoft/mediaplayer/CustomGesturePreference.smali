.class public Lcom/inisoft/mediaplayer/CustomGesturePreference;
.super Landroid/preference/DialogPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CustomGesturePreference;->setDialogLayoutResource(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/CustomGesturePreference;->setDialogLayoutResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/b/f;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CustomGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inisoft/mediaplayer/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/b/f;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    const v0, 0x7f0a0069

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
