.class public Lcom/scoreloop/client/android/ui/component/news/NewsListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "NewsListItem.java"


# instance fields
.field private final _item:Lcom/scoreloop/client/android/core/addon/RSSItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/addon/RSSItem;)V
    .locals 2
    .parameter "context"
    .parameter "item"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->_item:Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 46
    return-void
.end method


# virtual methods
.method public getItem()Lcom/scoreloop/client/android/core/addon/RSSItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->_item:Lcom/scoreloop/client/android/core/addon/RSSItem;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xf

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03002b

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 63
    :cond_0
    const v8, 0x7f0c006f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 64
    .local v3, icon:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->_item:Lcom/scoreloop/client/android/core/addon/RSSItem;

    invoke-virtual {v8}, Lcom/scoreloop/client/android/core/addon/RSSItem;->hasPersistentReadFlag()Z

    move-result v8

    if-eqz v8, :cond_3

    const v6, 0x7f02005b

    .line 65
    .local v6, resId:I
    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->_item:Lcom/scoreloop/client/android/core/addon/RSSItem;

    invoke-virtual {v8}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getImageUrlString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, imageUrl:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v4, v8, v3, v10}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_1
    const v8, 0x7f0c0070

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 72
    .local v7, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v8, 0x7f0c0071

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, descripiton:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->_item:Lcom/scoreloop/client/android/core/addon/RSSItem;

    invoke-virtual {v8}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getPubDate()Ljava/util/Date;

    move-result-object v5

    .line 77
    .local v5, pubDate:Ljava/util/Date;
    if-eqz v5, :cond_2

    .line 78
    invoke-static {v5}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_2
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->_item:Lcom/scoreloop/client/android/core/addon/RSSItem;

    invoke-virtual {v8}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v8, 0x7f0c0072

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, accessory:Landroid/view/View;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-object p1

    .line 64
    .end local v0           #accessory:Landroid/view/View;
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #descripiton:Landroid/widget/TextView;
    .end local v4           #imageUrl:Ljava/lang/String;
    .end local v5           #pubDate:Ljava/util/Date;
    .end local v6           #resId:I
    .end local v7           #title:Landroid/widget/TextView;
    :cond_3
    const v6, 0x7f02005a

    goto :goto_0

    .line 85
    .restart local v0       #accessory:Landroid/view/View;
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #descripiton:Landroid/widget/TextView;
    .restart local v4       #imageUrl:Ljava/lang/String;
    .restart local v5       #pubDate:Ljava/util/Date;
    .restart local v6       #resId:I
    .restart local v7       #title:Landroid/widget/TextView;
    :cond_4
    const/4 v8, 0x4

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->_item:Lcom/scoreloop/client/android/core/addon/RSSItem;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getLinkUrlString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
