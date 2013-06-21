.class public Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
.super Ljava/lang/Object;
.source "SearchResultsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/SearchResultsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchMatchHolder"
.end annotation


# static fields
.field private static final MATCH_EXACT_FAVORITE:I = 0x4

.field private static final MATCH_EXACT_HISTORY:I = 0x3

.field private static final MATCH_PARTIAL_FAVORITE:I = 0x2

.field private static final MATCH_PARTIAL_HISTORY:I = 0x1


# instance fields
.field public favOrHistoryRecord:Ljava/lang/Object;

.field public input:Ljava/lang/String;

.field public matchStrength:I

.field public numAssumptions:I


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/FavoritesRecord;Ljava/lang/String;)V
    .locals 1
    .parameter "rec"
    .parameter "query"

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->favOrHistoryRecord:Ljava/lang/Object;

    .line 332
    iget-object v0, p1, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->input:Ljava/lang/String;

    .line 333
    iget-object v0, p1, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->numAssumptions:I

    .line 334
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->input:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->matchStrength:I

    .line 335
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method constructor <init>(Lcom/wolfram/android/alpha/HistoryRecord;Ljava/lang/String;)V
    .locals 1
    .parameter "rec"
    .parameter "query"

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->favOrHistoryRecord:Ljava/lang/Object;

    .line 339
    iget-object v0, p1, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->input:Ljava/lang/String;

    .line 340
    iget-object v0, p1, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->numAssumptions:I

    .line 341
    iget-object v0, p1, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->matchStrength:I

    .line 342
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
