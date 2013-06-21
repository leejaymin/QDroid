.class Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "DownloadsQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madvil/core/DownloadsQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field public artist:Landroid/widget/TextView;

.field public duration:Landroid/widget/TextView;

.field public song:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/madvil/core/DownloadsQueueAdapter;


# direct methods
.method private constructor <init>(Lcom/madvil/core/DownloadsQueueAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;->this$0:Lcom/madvil/core/DownloadsQueueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/madvil/core/DownloadsQueueAdapter;Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/madvil/core/DownloadsQueueAdapter$ItemHolder;-><init>(Lcom/madvil/core/DownloadsQueueAdapter;)V

    return-void
.end method
