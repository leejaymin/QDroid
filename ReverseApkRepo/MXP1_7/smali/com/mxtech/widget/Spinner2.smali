.class public Lcom/mxtech/widget/Spinner2;
.super Landroid/widget/Spinner;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private 癤욱븳援:Lri;

.field private 궗:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->癤욱븳援:Lri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->癤욱븳援:Lri;

    invoke-interface {v0}, Lri;->덉쓣()Lfm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public performClick()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lrj;

    invoke-virtual {p0}, Lcom/mxtech/widget/Spinner2;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lrj;-><init>(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mxtech/widget/Spinner2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mxtech/widget/Spinner2;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/mxtech/widget/Spinner2;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->癤욱븳援:Lri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->癤욱븳援:Lri;

    invoke-interface {v0}, Lri;->덉쓣()Lfm;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->癤욱븳援:Lri;

    invoke-interface {v0}, Lri;->留먰븷()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lee;->癤욱븳援(Landroid/view/Window;)V

    :cond_2
    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/mxtech/widget/Spinner2;->궗:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setClient(Lri;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/widget/Spinner2;->癤욱븳援:Lri;

    return-void
.end method
