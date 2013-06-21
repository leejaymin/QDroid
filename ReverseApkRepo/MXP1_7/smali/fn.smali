.class public final Lfn;
.super Ljava/lang/Object;


# direct methods
.method public static 癤욱븳援(Landroid/app/Activity;Lfm;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    new-instance v1, Lfo;

    invoke-direct {v1, p1}, Lfo;-><init>(Lfm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;Lfm;I)Landroid/app/AlertDialog;
    .locals 2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;Lfm;II)Landroid/app/AlertDialog;
    .locals 2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;Lfm;ILjava/lang/CharSequence;Z)Landroid/app/AlertDialog;
    .locals 1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p4}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/AlertDialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x4100

    invoke-static {v1}, Lee;->먯꽌(F)F

    move-result v1

    float-to-int v2, v1

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const v3, 0x1020003

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {v0, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/AlertDialog;
    .locals 3

    const/4 v2, 0x0

    sget v0, Lha;->simple_text_display:I

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lgz;->content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method

.method public static 癤욱븳援(Lcom/mxtech/app/ActivityBase;I)Landroid/app/AlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/mxtech/app/ActivityBase;->癤욱븳援:Lfm;

    invoke-virtual {p0, p1}, Lcom/mxtech/app/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
