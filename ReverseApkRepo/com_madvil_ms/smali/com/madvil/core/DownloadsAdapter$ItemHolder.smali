.class Lcom/madvil/core/DownloadsAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "DownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madvil/core/DownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field public downloadPB:Landroid/widget/ProgressBar;

.field public downloadedTV:Landroid/widget/TextView;

.field public song:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/madvil/core/DownloadsAdapter;


# direct methods
.method private constructor <init>(Lcom/madvil/core/DownloadsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/madvil/core/DownloadsAdapter$ItemHolder;->this$0:Lcom/madvil/core/DownloadsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/madvil/core/DownloadsAdapter;Lcom/madvil/core/DownloadsAdapter$ItemHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/madvil/core/DownloadsAdapter$ItemHolder;-><init>(Lcom/madvil/core/DownloadsAdapter;)V

    return-void
.end method
