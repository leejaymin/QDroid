.class public Lcom/superdroid/sqd/util/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final showInfoDialog(Landroid/content/Context;II)V
    .locals 6
    .parameter "ctx"
    .parameter "titleResId"
    .parameter "contentResId"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 16
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    .local v1, scroll:Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    .local v2, tv:Landroid/widget/TextView;
    const/high16 v3, 0x4190

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 21
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 22
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 23
    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 27
    const v3, 0x7f040003

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 28
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 29
    return-void
.end method
