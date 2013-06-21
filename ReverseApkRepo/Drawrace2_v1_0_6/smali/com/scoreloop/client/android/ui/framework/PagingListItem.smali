.class public Lcom/scoreloop/client/android/ui/framework/PagingListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "PagingListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/PagingListItem$1;
    }
.end annotation


# instance fields
.field private final _pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V
    .locals 2
    .parameter "context"
    .parameter "pagingDirection"

    .prologue
    .line 67
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;->getDrawable(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;->getTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/PagingListItem;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    .line 69
    return-void
.end method

.method private static getDrawable(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "pagingDirection"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, resources:Landroid/content/res/Resources;
    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingListItem$1;->$SwitchMap$com$scoreloop$client$android$ui$framework$PagingDirection:[I

    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 47
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 41
    :pswitch_0
    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 43
    :pswitch_1
    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 45
    :pswitch_2
    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "pagingDirection"

    .prologue
    .line 52
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingListItem$1;->$SwitchMap$com$scoreloop$client$android$ui$framework$PagingDirection:[I

    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const v0, 0x7f0802e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_1
    const v0, 0x7f0802fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_2
    const v0, 0x7f080316

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getPagingDirection()Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListItem;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030027

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 85
    :cond_0
    const v2, 0x7f0c0039

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    const v2, 0x7f0c0023

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method
