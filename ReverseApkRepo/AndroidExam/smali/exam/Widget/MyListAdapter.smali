.class Lexam/Widget/MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListIconText.java"


# instance fields
.field Inflater:Landroid/view/LayoutInflater;

.field arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Widget/MyItem;",
            ">;"
        }
    .end annotation
.end field

.field layout:I

.field maincon:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "alayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Widget/MyItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, aarSrc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lexam/Widget/MyItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object p1, p0, Lexam/Widget/MyListAdapter;->maincon:Landroid/content/Context;

    .line 52
    const-string v0, "layout_inflater"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lexam/Widget/MyListAdapter;->Inflater:Landroid/view/LayoutInflater;

    .line 53
    iput-object p3, p0, Lexam/Widget/MyListAdapter;->arSrc:Ljava/util/ArrayList;

    .line 54
    iput p2, p0, Lexam/Widget/MyListAdapter;->layout:I

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lexam/Widget/MyListAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lexam/Widget/MyListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    iget-object v0, p0, Lexam/Widget/MyListAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Widget/MyItem;

    iget-object v0, v0, Lexam/Widget/MyItem;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 71
    move v2, p1

    .line 72
    .local v2, pos:I
    if-nez p2, :cond_0

    .line 73
    iget-object v4, p0, Lexam/Widget/MyListAdapter;->Inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lexam/Widget/MyListAdapter;->layout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    :cond_0
    const v4, 0x7f0c0043

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .local v1, img:Landroid/widget/ImageView;
    iget-object v4, p0, Lexam/Widget/MyListAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexam/Widget/MyItem;

    iget v4, v4, Lexam/Widget/MyItem;->Icon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    const v4, 0x7f0c0008

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 79
    .local v3, txt:Landroid/widget/TextView;
    iget-object v4, p0, Lexam/Widget/MyListAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexam/Widget/MyItem;

    iget-object v4, v4, Lexam/Widget/MyItem;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v4, 0x7f0c003e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, btn:Landroid/widget/Button;
    new-instance v4, Lexam/Widget/MyListAdapter$1;

    invoke-direct {v4, p0, v2}, Lexam/Widget/MyListAdapter$1;-><init>(Lexam/Widget/MyListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-object p2
.end method
