.class Lexam/Widget/MultiAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListOfViews.java"


# instance fields
.field arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Widget/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Widget/ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, arItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lexam/Widget/ListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lexam/Widget/MultiAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p2, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lexam/Widget/ListItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Widget/ListItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lexam/Widget/MultiAdapter;->getItem(I)Lexam/Widget/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Widget/ListItem;

    iget v0, v0, Lexam/Widget/ListItem;->Type:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    if-nez p2, :cond_0

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, res:I
    iget-object v5, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexam/Widget/ListItem;

    iget v5, v5, Lexam/Widget/ListItem;->Type:I

    packed-switch v5, :pswitch_data_0

    .line 96
    :goto_0
    iget-object v5, p0, Lexam/Widget/MultiAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 100
    .end local v3           #res:I
    :cond_0
    iget-object v5, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexam/Widget/ListItem;

    iget v5, v5, Lexam/Widget/ListItem;->Type:I

    packed-switch v5, :pswitch_data_1

    .line 115
    :goto_1
    return-object p2

    .line 90
    .restart local v3       #res:I
    :pswitch_0
    const v3, 0x7f030089

    .line 91
    goto :goto_0

    .line 93
    :pswitch_1
    const v3, 0x7f030062

    goto :goto_0

    .line 102
    .end local v3           #res:I
    :pswitch_2
    const v5, 0x7f0c0008

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 103
    .local v4, txt:Landroid/widget/TextView;
    iget-object v5, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexam/Widget/ListItem;

    iget-object v5, v5, Lexam/Widget/ListItem;->Text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v5, 0x7f0c0009

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 105
    .local v1, edit:Landroid/widget/EditText;
    iget-object v5, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexam/Widget/ListItem;

    iget-object v5, v5, Lexam/Widget/ListItem;->EditText:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    .end local v1           #edit:Landroid/widget/EditText;
    .end local v4           #txt:Landroid/widget/TextView;
    :pswitch_3
    const v5, 0x7f0c003e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    .local v0, btn:Landroid/widget/Button;
    iget-object v5, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexam/Widget/ListItem;

    iget-object v5, v5, Lexam/Widget/ListItem;->BtnText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v5, 0x7f0c0043

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    .local v2, img:Landroid/widget/ImageView;
    iget-object v5, p0, Lexam/Widget/MultiAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexam/Widget/ListItem;

    iget v5, v5, Lexam/Widget/ListItem;->IconRes:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 100
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x2

    return v0
.end method
