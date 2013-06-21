.class public Lexam/Widget/GridTest;
.super Landroid/app/Activity;
.source "GridTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v2, 0x7f030067

    invoke-virtual {p0, v2}, Lexam/Widget/GridTest;->setContentView(I)V

    .line 16
    const v2, 0x7f0c0081

    invoke-virtual {p0, v2}, Lexam/Widget/GridTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 17
    .local v1, grid:Landroid/widget/GridView;
    new-instance v0, Lexam/Widget/ImageAdapter;

    invoke-direct {v0, p0}, Lexam/Widget/ImageAdapter;-><init>(Landroid/content/Context;)V

    .line 18
    .local v0, Adapter:Lexam/Widget/ImageAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    new-instance v2, Lexam/Widget/GridTest$1;

    invoke-direct {v2, p0}, Lexam/Widget/GridTest$1;-><init>(Lexam/Widget/GridTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 26
    return-void
.end method
