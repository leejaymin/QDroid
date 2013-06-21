.class public Lcom/superdroid/sqd/adapter/MenuPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPanelAdapter.java"


# instance fields
.field private _context:Lcom/superdroid/sqd/view/MenuPanel;

.field private _inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    move-object v0, p1

    check-cast v0, Lcom/superdroid/sqd/view/MenuPanel;

    move-object v1, v0

    iput-object v1, p0, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;->_context:Lcom/superdroid/sqd/view/MenuPanel;

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;->_inflater:Landroid/view/LayoutInflater;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;->_context:Lcom/superdroid/sqd/view/MenuPanel;

    invoke-interface {v0}, Lcom/superdroid/sqd/view/MenuPanel;->getMenuItemsCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 32
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 37
    if-nez p2, :cond_0

    .line 38
    iget-object v3, p0, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;->_inflater:Landroid/view/LayoutInflater;

    .line 39
    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, itemView:Landroid/view/View;
    const v3, 0x7f06000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;->_context:Lcom/superdroid/sqd/view/MenuPanel;

    invoke-interface {v3, p1}, Lcom/superdroid/sqd/view/MenuPanel;->getMenuIconResId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    const v3, 0x7f06000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;->_context:Lcom/superdroid/sqd/view/MenuPanel;

    invoke-interface {v3, p1}, Lcom/superdroid/sqd/view/MenuPanel;->getMenuTextResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 48
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v2           #text:Landroid/widget/TextView;
    :goto_0
    return-object v1

    .line 46
    .end local v1           #itemView:Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1       #itemView:Landroid/view/View;
    goto :goto_0
.end method
