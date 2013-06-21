.class Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/PhotoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "aContext"

    .prologue
    .line 190
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 191
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 192
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$9(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/PhotoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    .line 206
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v4}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$9(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v4

    invoke-virtual {v4}, Lkr/co/medinbiz/dto/PhotoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr/co/medinbiz/dto/Ultra;

    .line 209
    .local v2, photo:Lkr/co/medinbiz/dto/Ultra;
    if-nez p2, :cond_1

    .line 210
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lkr/co/medinbiz/R$layout;->ultra_list_row:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 211
    new-instance v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;

    invoke-direct {v3, p0, p2}, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;-><init>(Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;Landroid/view/View;)V

    .line 213
    .local v3, photoCell:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    :goto_0
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v4}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$9(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v4

    invoke-virtual {v4}, Lkr/co/medinbiz/dto/PhotoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 218
    iget-object v4, v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->cellBackground:Landroid/widget/LinearLayout;

    .line 219
    sget v5, Lkr/co/medinbiz/R$drawable;->menu_all:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 232
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, date:[Ljava/lang/String;
    iget-object v4, v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Ultra;->getPlace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v4, v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->date1View:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-static {}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getInstance()Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    move-result-object v1

    .line 236
    .local v1, imageDownloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Ultra;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    .line 237
    iget-object v5, v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->imageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$5(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lkr/co/medinbiz/helper/FileManager;->getPhotosDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 238
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-virtual {v1, v4, v5, v6}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 240
    return-object p2

    .line 215
    .end local v0           #date:[Ljava/lang/String;
    .end local v1           #imageDownloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
    .end local v3           #photoCell:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;

    .restart local v3       #photoCell:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;
    goto :goto_0

    .line 221
    :cond_2
    iget-object v4, v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->cellBackground:Landroid/widget/LinearLayout;

    .line 222
    sget v5, Lkr/co/medinbiz/R$drawable;->menu_middle:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 223
    if-nez p1, :cond_3

    .line 224
    iget-object v4, v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->cellBackground:Landroid/widget/LinearLayout;

    .line 225
    sget v5, Lkr/co/medinbiz/R$drawable;->menu_top:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 226
    :cond_3
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v4}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$9(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v4

    invoke-virtual {v4}, Lkr/co/medinbiz/dto/PhotoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 227
    iget-object v4, v3, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->cellBackground:Landroid/widget/LinearLayout;

    .line 228
    sget v5, Lkr/co/medinbiz/R$drawable;->menu_bottom:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
