.class Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;
.super Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;
.source "SearchResultsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/SearchResultsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptySearchResultsAdapter"
.end annotation


# instance fields
.field private baseText:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/SearchResultsActivity;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/SearchResultsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "baseText"
    .parameter "query"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;->this$0:Lcom/wolfram/android/alpha/activity/SearchResultsActivity;

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;-><init>(Lcom/wolfram/android/alpha/activity/SearchResultsActivity;[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;)V

    .line 289
    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;->baseText:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;->query:Ljava/lang/String;

    .line 291
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 303
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 308
    :goto_0
    return-object v1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;->this$0:Lcom/wolfram/android/alpha/activity/SearchResultsActivity;

    iget-object v1, v1, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    .local v0, v:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;->baseText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;->query:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 308
    goto :goto_0
.end method
