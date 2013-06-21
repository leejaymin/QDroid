.class public Lelectrum2/drums/foldercreate;
.super Landroid/app/Activity;
.source "foldercreate.java"


# instance fields
.field folderclick:Landroid/view/View$OnClickListener;

.field foldertext:Landroid/widget/EditText;

.field okbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Lelectrum2/drums/foldercreate$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/foldercreate$1;-><init>(Lelectrum2/drums/foldercreate;)V

    iput-object v0, p0, Lelectrum2/drums/foldercreate;->folderclick:Landroid/view/View$OnClickListener;

    .line 21
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lelectrum2/drums/foldercreate;->setContentView(I)V

    .line 34
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lelectrum2/drums/foldercreate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/foldercreate;->okbutton:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lelectrum2/drums/foldercreate;->okbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/foldercreate;->folderclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lelectrum2/drums/foldercreate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lelectrum2/drums/foldercreate;->foldertext:Landroid/widget/EditText;

    .line 41
    return-void
.end method
