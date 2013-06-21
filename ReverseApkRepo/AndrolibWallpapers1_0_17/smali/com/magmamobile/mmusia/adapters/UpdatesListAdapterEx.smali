.class public Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;
.super Landroid/widget/BaseAdapter;
.source "UpdatesListAdapterEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;,
        Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolderLoading;
    }
.end annotation


# instance fields
.field private formaterDate:Ljava/text/SimpleDateFormat;

.field private mContext:Landroid/content/Context;

.field private myDatas:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->myDatas:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    .line 22
    iput-object v0, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->formaterDate:Ljava/text/SimpleDateFormat;

    .line 26
    iput-object p1, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->myDatas:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->myDatas:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->getItem(I)Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v2, Lcom/magmamobile/mmusia/views/ItemView;

    iget-object v3, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/magmamobile/mmusia/views/ItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/magmamobile/mmusia/views/ItemView;->getRootView()Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;

    invoke-direct {v0}, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;-><init>()V

    .line 68
    .local v0, holder:Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;
    sget v2, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_LINEARITEM:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->linearItem:Landroid/widget/LinearLayout;

    .line 69
    sget v2, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_TITLE:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->txtTitle:Landroid/widget/TextView;

    .line 70
    sget v2, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_DATE:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->txtDate:Landroid/widget/TextView;

    .line 71
    sget v2, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_DESC:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->txtDesc:Landroid/widget/TextView;

    .line 72
    sget v2, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_IMG:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->img:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->linearItem:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v2, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->myDatas:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    aget-object v1, v2, p1

    .line 81
    .local v1, item:Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;
    iget-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->txtDesc:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->VersionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->txtDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->formaterDate:Ljava/text/SimpleDateFormat;

    iget-object v4, v1, Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;->UpdateDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->mContext:Landroid/content/Context;

    const-string v4, "mussiamarket32.png"

    invoke-static {v3, v4}, Lcom/magmamobile/mmusia/MCommon;->getAssetDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-object p2

    .line 76
    .end local v0           #holder:Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;
    .end local v1           #item:Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;

    .restart local v0       #holder:Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx$ViewHolder;
    goto :goto_0
.end method

.method public setData([Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->myDatas:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    .line 33
    return-void
.end method
