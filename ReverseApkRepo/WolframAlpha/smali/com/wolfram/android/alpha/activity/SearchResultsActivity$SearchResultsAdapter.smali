.class Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/SearchResultsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultsAdapter"
.end annotation


# instance fields
.field private holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/SearchResultsActivity;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/SearchResultsActivity;[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;)V
    .locals 0
    .parameter
    .parameter "holders"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;->this$0:Lcom/wolfram/android/alpha/activity/SearchResultsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;->holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    .line 233
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;->holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;->holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 244
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 253
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    .line 254
    .local v2, holder:Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    iget v4, v2, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->numAssumptions:I

    .line 256
    .local v4, numAssumptions:I
    if-eqz p2, :cond_0

    .line 257
    move-object v0, p2

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v3, v0

    .line 262
    .local v3, itemView:Landroid/widget/RelativeLayout;
    :goto_0
    const v6, 0x7f0e00aa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 263
    .local v1, firstLine:Landroid/widget/TextView;
    const v6, 0x7f0e00ab

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 264
    .local v5, secondLine:Landroid/widget/TextView;
    iget-object v6, v2, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->input:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    if-nez v4, :cond_1

    .line 268
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 269
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :goto_1
    iget-object v6, v2, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->favOrHistoryRecord:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 277
    return-object v3

    .line 259
    .end local v1           #firstLine:Landroid/widget/TextView;
    .end local v3           #itemView:Landroid/widget/RelativeLayout;
    .end local v5           #secondLine:Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;->this$0:Lcom/wolfram/android/alpha/activity/SearchResultsActivity;

    iget-object v6, v6, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0300a8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 260
    .restart local v3       #itemView:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    goto :goto_0

    .line 271
    .restart local v1       #firstLine:Landroid/widget/TextView;
    .restart local v5       #secondLine:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 272
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    if-le v4, v7, :cond_2

    iget-object v7, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;->this$0:Lcom/wolfram/android/alpha/activity/SearchResultsActivity;

    iget-object v7, v7, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->assumptionsLabelPlural:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;->this$0:Lcom/wolfram/android/alpha/activity/SearchResultsActivity;

    iget-object v7, v7, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->assumptionsLabel:Ljava/lang/String;

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method
