.class Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchComparator;
.super Ljava/lang/Object;
.source "SearchResultsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/SearchResultsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchMatchComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wolfram/android/alpha/activity/SearchResultsActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;)I
    .locals 2
    .parameter "h1"
    .parameter "h2"

    .prologue
    .line 350
    iget v0, p1, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->matchStrength:I

    iget v1, p2, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->matchStrength:I

    if-ge v0, v1, :cond_0

    .line 351
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    .line 352
    :cond_0
    iget v0, p1, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->matchStrength:I

    iget v1, p2, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->matchStrength:I

    if-le v0, v1, :cond_1

    .line 353
    const/4 v0, -0x1

    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 346
    check-cast p1, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    .end local p1
    check-cast p2, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchComparator;->compare(Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;)I

    move-result v0

    return v0
.end method
