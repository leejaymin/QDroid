.class public Lexam/Widget/GalleryTest;
.super Landroid/app/Activity;
.source "GalleryTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v1, 0x7f030066

    invoke-virtual {p0, v1}, Lexam/Widget/GalleryTest;->setContentView(I)V

    .line 15
    const v1, 0x7f0c0080

    invoke-virtual {p0, v1}, Lexam/Widget/GalleryTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 16
    .local v0, g:Landroid/widget/Gallery;
    new-instance v1, Lexam/Widget/ImageAdapter2;

    invoke-direct {v1, p0}, Lexam/Widget/ImageAdapter2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 17
    return-void
.end method
