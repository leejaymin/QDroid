.class Lcom/wareone/tappmt/General$GeneralListAdapter;
.super Landroid/widget/BaseAdapter;
.source "General.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/General;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeneralListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;,
        Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
    }
.end annotation


# static fields
.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcon_Check_Off:Landroid/graphics/Bitmap;

.field private mIcon_Check_On:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field private m_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, transactions:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 155
    iput-object p2, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->m_data:Ljava/util/List;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mIcon_Check_On:Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020019

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mIcon_Check_Off:Landroid/graphics/Bitmap;

    .line 160
    return-void
.end method

.method private _createHeaderViewHolder(Landroid/view/View;)Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;
    .locals 2
    .parameter "convertView"

    .prologue
    .line 283
    new-instance v0, Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;-><init>(Lcom/wareone/tappmt/General$GeneralListAdapter;Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;)V

    .line 284
    .local v0, holder:Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;
    const v1, 0x7f0c007f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 287
    return-object v0
.end method

.method private _createItemViewHolder(Landroid/view/View;)Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
    .locals 2
    .parameter "convertView"

    .prologue
    .line 291
    new-instance v0, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;-><init>(Lcom/wareone/tappmt/General$GeneralListAdapter;Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;)V

    .line 292
    .local v0, holder:Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
    const v1, 0x7f0c007c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    .line 293
    const v1, 0x7f0c007d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->caption:Landroid/widget/TextView;

    .line 294
    const v1, 0x7f0c007e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->m_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 190
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 208
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-- getView"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/wareone/tappmt/General$GeneralListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move v2, v6

    .line 212
    .local v2, is_header:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 213
    const v5, 0x7f030027

    .line 218
    .local v5, res_id:I
    :goto_1
    const/4 v0, 0x0

    .line 219
    .local v0, header_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;
    const/4 v4, 0x0

    .line 224
    .local v4, item_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
    if-nez p2, :cond_3

    .line 225
    iget-object v6, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 227
    if-eqz v2, :cond_2

    .line 228
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "create headerviewholder"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p2}, Lcom/wareone/tappmt/General$GeneralListAdapter;->_createHeaderViewHolder(Landroid/view/View;)Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;

    move-result-object v0

    .line 258
    :goto_2
    if-eqz v2, :cond_8

    .line 259
    iget-object v6, v0, Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->m_data:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v7, "title"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .end local p1
    .end local p3
    :goto_3
    return-object p2

    .line 209
    .end local v0           #header_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;
    .end local v2           #is_header:Z
    .end local v4           #item_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
    .end local v5           #res_id:I
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_0
    const/4 v6, 0x1

    move v2, v6

    goto :goto_0

    .line 215
    .restart local v2       #is_header:Z
    :cond_1
    const v5, 0x7f030026

    .restart local v5       #res_id:I
    goto :goto_1

    .line 231
    .restart local v0       #header_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;
    .restart local v4       #item_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
    :cond_2
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "create itemviewholder"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p2}, Lcom/wareone/tappmt/General$GeneralListAdapter;->_createItemViewHolder(Landroid/view/View;)Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;

    move-result-object v4

    goto :goto_2

    .line 235
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    move v3, v6

    .line 236
    .local v3, is_header_view:Z
    :goto_4
    if-eqz v2, :cond_6

    .line 237
    if-eqz v3, :cond_5

    .line 238
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "resue headerviewholder"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #header_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;
    check-cast v0, Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;

    .restart local v0       #header_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;
    goto :goto_2

    .line 235
    .end local v3           #is_header_view:Z
    :cond_4
    const/4 v6, 0x0

    move v3, v6

    goto :goto_4

    .line 241
    .restart local v3       #is_header_view:Z
    :cond_5
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "create headerviewholder"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 243
    invoke-direct {p0, p2}, Lcom/wareone/tappmt/General$GeneralListAdapter;->_createHeaderViewHolder(Landroid/view/View;)Lcom/wareone/tappmt/General$GeneralListAdapter$HeaderViewHolder;

    move-result-object v0

    goto :goto_2

    .line 246
    :cond_6
    if-eqz v3, :cond_7

    .line 247
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "create itemviewholder"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v6, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 249
    invoke-direct {p0, p2}, Lcom/wareone/tappmt/General$GeneralListAdapter;->_createItemViewHolder(Landroid/view/View;)Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;

    move-result-object v4

    goto/16 :goto_2

    .line 251
    :cond_7
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "resue itemviewholder"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
    check-cast v4, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;

    .restart local v4       #item_holder:Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
    goto/16 :goto_2

    .line 261
    .end local v3           #is_header_view:Z
    :cond_8
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-- bind item data"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v6, v4, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->m_data:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/util/Map;

    const-string v7, "title"

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-- bind item caption"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v6, v4, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->caption:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->m_data:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    const-string v7, "caption"

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-- bind item checked"

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v6, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->m_data:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    const-string v6, "checked"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 267
    iget-object v6, v4, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 269
    :cond_9
    iget-object v6, v4, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v6, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->m_data:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/Map;

    const-string v6, "checked"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    move v1, v6

    .line 271
    .local v1, is_checked:Z
    :goto_5
    if-eqz v1, :cond_b

    .line 272
    iget-object v6, v4, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mIcon_Check_On:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 270
    .end local v1           #is_checked:Z
    :cond_a
    const/4 v6, 0x0

    move v1, v6

    goto :goto_5

    .line 274
    .restart local v1       #is_checked:Z
    :cond_b
    iget-object v6, v4, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->mIcon_Check_Off:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 194
    invoke-static {}, Lcom/wareone/tappmt/General;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-- isEnabled"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/wareone/tappmt/General$GeneralListAdapter;->m_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v0, "section"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
