.class public Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ATBaseServiceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/ui/activities/ATBaseServiceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ServiceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;,
        Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/addthis/models/ATService;",
        ">;"
    }
.end annotation


# instance fields
.field private filter:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mServiceList:Lcom/addthis/models/ATServiceList;

.field public originalItems:Lcom/addthis/models/ATServiceList;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/addthis/models/ATServiceList;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "newItems"

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 179
    new-instance v0, Lcom/addthis/models/ATServiceList;

    invoke-direct {v0}, Lcom/addthis/models/ATServiceList;-><init>()V

    iput-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->originalItems:Lcom/addthis/models/ATServiceList;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mLock:Ljava/lang/Object;

    .line 186
    iput-object p3, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mServiceList:Lcom/addthis/models/ATServiceList;

    .line 187
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 188
    invoke-virtual {p0, p3}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->cloneItems(Lcom/addthis/models/ATServiceList;)V

    .line 190
    return-void
.end method

.method static synthetic access$1(Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public cloneItems(Lcom/addthis/models/ATServiceList;)V
    .locals 3
    .parameter "items"

    .prologue
    .line 193
    const-string v1, "BaseActivity"

    const-string v2, "Adapater cloneItems"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Lcom/addthis/models/ATServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/models/ATService;

    .line 196
    .local v0, gi:Lcom/addthis/models/ATService;
    iget-object v2, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->originalItems:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v2, v0}, Lcom/addthis/models/ATServiceList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 201
    const-string v0, "BaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapater count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v2}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v0}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->filter:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;-><init>(Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;)V

    iput-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->filter:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->filter:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;

    return-object v0
.end method

.method public getItem(I)Lcom/addthis/models/ATService;
    .locals 1
    .parameter "position"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v0, p1}, Lcom/addthis/models/ATServiceList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/models/ATService;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getItem(I)Lcom/addthis/models/ATService;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 210
    const-string v0, "BaseActivity"

    const-string v1, "Adapater getitemid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 215
    const-string v1, "BaseActivity"

    const-string v2, "Adapater getview"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez p2, :cond_0

    .line 218
    iget-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 219
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "atlistitem_image_text"

    invoke-static {v2, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 220
    const/4 v3, 0x0

    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 221
    new-instance v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;-><init>()V

    .line 223
    .local v0, holder:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "text"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 222
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 225
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "icon"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 224
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 227
    iget-object v1, v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "color"

    const-string v5, "list_item_font_color"

    invoke-static {v3, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 227
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v1, v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/addthis/core/Config;->getListViewFont()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "atcellselector"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 231
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 239
    :goto_0
    iget-object v1, v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getItem(I)Lcom/addthis/models/ATService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/addthis/models/ATService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->getItem(I)Lcom/addthis/models/ATService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/addthis/models/ATService;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    return-object p2

    .line 236
    .end local v0           #holder:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ViewHolder;
    goto :goto_0
.end method
