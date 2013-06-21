.class public Lexam/Widget/ListIconText;
.super Landroid/app/Activity;
.source "ListIconText.java"


# instance fields
.field arItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Widget/MyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f020014

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v3, 0x7f03006e

    invoke-virtual {p0, v3}, Lexam/Widget/ListIconText;->setContentView(I)V

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lexam/Widget/ListIconText;->arItem:Ljava/util/ArrayList;

    .line 20
    new-instance v2, Lexam/Widget/MyItem;

    const-string v3, "\uc0bc\uc131 \ub178\ud2b8\ubd81"

    invoke-direct {v2, v4, v3}, Lexam/Widget/MyItem;-><init>(ILjava/lang/String;)V

    .local v2, mi:Lexam/Widget/MyItem;
    iget-object v3, p0, Lexam/Widget/ListIconText;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v2, Lexam/Widget/MyItem;

    .end local v2           #mi:Lexam/Widget/MyItem;
    const-string v3, "LG \uc138\ud0c1\uae30"

    invoke-direct {v2, v4, v3}, Lexam/Widget/MyItem;-><init>(ILjava/lang/String;)V

    .restart local v2       #mi:Lexam/Widget/MyItem;
    iget-object v3, p0, Lexam/Widget/ListIconText;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v2, Lexam/Widget/MyItem;

    .end local v2           #mi:Lexam/Widget/MyItem;
    const-string v3, "\ub300\uc6b0 \ub9c8\ud2f0\uc988"

    invoke-direct {v2, v4, v3}, Lexam/Widget/MyItem;-><init>(ILjava/lang/String;)V

    .restart local v2       #mi:Lexam/Widget/MyItem;
    iget-object v3, p0, Lexam/Widget/ListIconText;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lexam/Widget/MyListAdapter;

    const v3, 0x7f030069

    iget-object v4, p0, Lexam/Widget/ListIconText;->arItem:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v4}, Lexam/Widget/MyListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 27
    .local v0, MyAdapter:Lexam/Widget/MyListAdapter;
    const v3, 0x7f0c001f

    invoke-virtual {p0, v3}, Lexam/Widget/ListIconText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 28
    .local v1, MyList:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    return-void
.end method
