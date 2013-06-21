.class public Lelectrum2/drums/changesdpath;
.super Landroid/app/Activity;
.source "changesdpath.java"


# instance fields
.field okbutton:Landroid/widget/Button;

.field okclick:Landroid/view/View$OnClickListener;

.field sdtext:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lelectrum2/drums/changesdpath$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/changesdpath$1;-><init>(Lelectrum2/drums/changesdpath;)V

    iput-object v0, p0, Lelectrum2/drums/changesdpath;->okclick:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lelectrum2/drums/changesdpath;->setContentView(I)V

    .line 31
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lelectrum2/drums/changesdpath;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lelectrum2/drums/changesdpath;->sdtext:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lelectrum2/drums/changesdpath;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/changesdpath;->okbutton:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lelectrum2/drums/changesdpath;->sdtext:Landroid/widget/TextView;

    sget-object v1, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lelectrum2/drums/changesdpath;->okbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/changesdpath;->okclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
