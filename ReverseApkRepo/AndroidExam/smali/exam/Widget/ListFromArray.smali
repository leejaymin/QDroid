.class public Lexam/Widget/ListFromArray;
.super Landroid/app/Activity;
.source "ListFromArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v2, 0x7f03006e

    invoke-virtual {p0, v2}, Lexam/Widget/ListFromArray;->setContentView(I)V

    .line 14
    const/high16 v2, 0x7f06

    .line 15
    const v3, 0x1090003

    .line 14
    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 17
    .local v0, Adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x7f0c001f

    invoke-virtual {p0, v2}, Lexam/Widget/ListFromArray;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 18
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    return-void
.end method
