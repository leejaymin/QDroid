.class Lcom/superdroid/sqd/About$ProductAdapter;
.super Landroid/widget/BaseAdapter;
.source "About.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superdroid/sqd/About;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProductAdapter"
.end annotation


# instance fields
.field _ctx:Landroid/content/Context;

.field private _products:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/superdroid/sqd/About$Product;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/superdroid/sqd/About;


# direct methods
.method public constructor <init>(Lcom/superdroid/sqd/About;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/superdroid/sqd/About$Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p3, products:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/superdroid/sqd/About$Product;>;"
    iput-object p1, p0, Lcom/superdroid/sqd/About$ProductAdapter;->this$0:Lcom/superdroid/sqd/About;

    .line 150
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/superdroid/sqd/About$ProductAdapter;->_products:Ljava/util/ArrayList;

    .line 151
    iput-object p3, p0, Lcom/superdroid/sqd/About$ProductAdapter;->_products:Ljava/util/ArrayList;

    .line 152
    iput-object p2, p0, Lcom/superdroid/sqd/About$ProductAdapter;->_ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/superdroid/sqd/About$ProductAdapter;->_products:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 164
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 168
    iget-object v6, p0, Lcom/superdroid/sqd/About$ProductAdapter;->_products:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/superdroid/sqd/About$Product;

    .line 169
    .local v3, product:Lcom/superdroid/sqd/About$Product;
    iget-object v6, p0, Lcom/superdroid/sqd/About$ProductAdapter;->_ctx:Landroid/content/Context;

    .line 170
    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    check-cast v1, Landroid/view/LayoutInflater;

    .line 172
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    const/4 v7, 0x0

    .line 171
    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 174
    .local v5, view:Landroid/widget/RelativeLayout;
    const v6, 0x7f060002

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 175
    .local v2, logo:Landroid/widget/ImageView;
    invoke-virtual {v3}, Lcom/superdroid/sqd/About$Product;->getLogoResId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 178
    .local v4, title:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/superdroid/sqd/About$Product;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v6, 0x7f060004

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    check-cast v0, Landroid/widget/TextView;

    .line 182
    .local v0, description:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/superdroid/sqd/About$Product;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-object v5
.end method
