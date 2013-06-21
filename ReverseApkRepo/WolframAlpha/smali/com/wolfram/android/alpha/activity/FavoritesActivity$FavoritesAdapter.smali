.class Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoritesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/FavoritesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesAdapter"
.end annotation


# instance fields
.field private favorites:Lcom/wolfram/android/alpha/Favorites;

.field private logger:Ljava/util/logging/Logger;

.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/FavoritesActivity;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/FavoritesActivity;Lcom/wolfram/android/alpha/Favorites;)V
    .locals 2
    .parameter
    .parameter "favorites"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->this$0:Lcom/wolfram/android/alpha/activity/FavoritesActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 163
    const-string v0, "com.wolfram.android.alpha.activity.FavoritesActivity"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->logger:Ljava/util/logging/Logger;

    .line 137
    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->favorites:Lcom/wolfram/android/alpha/Favorites;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->views:Ljava/util/List;

    .line 139
    return-void
.end method


# virtual methods
.method public delete_entry(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->favorites:Lcom/wolfram/android/alpha/Favorites;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/Favorites;->numFavorites()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->favorites:Lcom/wolfram/android/alpha/Favorites;

    invoke-virtual {v0, p1}, Lcom/wolfram/android/alpha/Favorites;->get(I)Lcom/wolfram/android/alpha/FavoritesRecord;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 154
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 169
    const/4 v5, 0x0

    .line 170
    .local v5, itemView:Landroid/view/View;
    iget-object v8, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->views:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, p1, :cond_0

    iget-object v8, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->views:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #itemView:Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 172
    .restart local v5       #itemView:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wolfram/android/alpha/FavoritesRecord;

    .line 173
    .local v7, rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    if-eqz v5, :cond_1

    .line 207
    :goto_0
    const v8, 0x7f080009

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 208
    return-object v5

    .line 177
    :cond_1
    iget-object v8, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->this$0:Lcom/wolfram/android/alpha/activity/FavoritesActivity;

    iget-object v8, v8, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03002e

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5           #itemView:Landroid/view/View;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 178
    .restart local v5       #itemView:Landroid/view/View;
    const v8, 0x7f0e001d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 179
    .local v6, queryTextView:Landroid/widget/TextView;
    iget-object v8, v7, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v8, 0x7f0e0025

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 181
    .local v2, favorites_assumptions_layout:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 191
    .local v3, favorites_query_view_assumptions_textview:Landroid/widget/TextView;
    iget-object v8, v7, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions_labels:Ljava/util/List;

    if-eqz v8, :cond_2

    .line 192
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v8, v7, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions_labels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, assumption_label:Ljava/lang/String;
    iget-object v8, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->this$0:Lcom/wolfram/android/alpha/activity/FavoritesActivity;

    iget-object v8, v8, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030045

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3           #favorites_query_view_assumptions_textview:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 195
    .restart local v3       #favorites_query_view_assumptions_textview:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 201
    .end local v1           #assumption_label:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    move-object v0, v5

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v8, v0

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 202
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    :cond_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    iget-object v8, p0, Lcom/wolfram/android/alpha/activity/FavoritesActivity$FavoritesAdapter;->views:Ljava/util/List;

    invoke-interface {v8, p1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method
