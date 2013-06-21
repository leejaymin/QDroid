.class public Lexam/Widget/ReadResource;
.super Landroid/app/Activity;
.source "ReadResource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v5, 0x7f03007e

    invoke-virtual {p0, v5}, Lexam/Widget/ReadResource;->setContentView(I)V

    .line 14
    invoke-virtual {p0}, Lexam/Widget/ReadResource;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 16
    .local v0, res:Landroid/content/res/Resources;
    const v5, 0x7f0c0008

    invoke-virtual {p0, v5}, Lexam/Widget/ReadResource;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 17
    .local v2, text:Landroid/widget/TextView;
    const v5, 0x7f090004

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    const/high16 v5, 0x7f07

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 21
    .local v3, textcolor:I
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    const/high16 v5, 0x7f08

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 24
    .local v4, textsize:F
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 26
    return-void
.end method
