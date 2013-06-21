.class public Lorg/hk/sticky/StickyMainActivity;
.super Landroid/app/ListActivity;
.source "StickyMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private showAlertDialog(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lorg/hk/sticky/StickyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lorg/hk/sticky/StickyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lorg/hk/sticky/StickyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Lorg/hk/sticky/StickyMainActivity$1;

    invoke-direct {v2, p0, p1}, Lorg/hk/sticky/StickyMainActivity$1;-><init>(Lorg/hk/sticky/StickyMainActivity;Landroid/app/Activity;)V

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 64
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID =>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/hk/common/Common;->LOG(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 33
    invoke-direct {p0, p0}, Lorg/hk/sticky/StickyMainActivity;->showAlertDialog(Landroid/app/Activity;)V

    .line 34
    return-void
.end method
