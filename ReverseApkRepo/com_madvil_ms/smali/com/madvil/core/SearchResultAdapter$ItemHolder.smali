.class Lcom/madvil/core/SearchResultAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madvil/core/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field public artist:Landroid/widget/TextView;

.field public duration:Landroid/widget/TextView;

.field public song:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/madvil/core/SearchResultAdapter;


# direct methods
.method private constructor <init>(Lcom/madvil/core/SearchResultAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/madvil/core/SearchResultAdapter$ItemHolder;->this$0:Lcom/madvil/core/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/madvil/core/SearchResultAdapter;Lcom/madvil/core/SearchResultAdapter$ItemHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/madvil/core/SearchResultAdapter$ItemHolder;-><init>(Lcom/madvil/core/SearchResultAdapter;)V

    return-void
.end method
