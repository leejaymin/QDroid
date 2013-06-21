.class public Lcom/rookiestudio/perfectviewer/TPreferences$NoCaseComparator;
.super Ljava/lang/Object;
.source "TPreferences.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoCaseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private SortDirection:I

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TPreferences;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TPreferences;I)V
    .locals 0
    .parameter
    .parameter "Direction"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPreferences$NoCaseComparator;->this$0:Lcom/rookiestudio/perfectviewer/TPreferences;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TPreferences$NoCaseComparator;->SortDirection:I

    .line 278
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TPreferences$NoCaseComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "String1"
    .parameter "String2"

    .prologue
    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, Result:I
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences$NoCaseComparator;->SortDirection:I

    if-eqz v1, :cond_0

    .line 282
    neg-int v0, v0

    .line 284
    :cond_0
    return v0
.end method
