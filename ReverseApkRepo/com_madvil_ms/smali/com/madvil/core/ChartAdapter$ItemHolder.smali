.class Lcom/madvil/core/ChartAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "ChartAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madvil/core/ChartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field public artist:Landroid/widget/TextView;

.field public duration:Landroid/widget/TextView;

.field public song:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/madvil/core/ChartAdapter;


# direct methods
.method private constructor <init>(Lcom/madvil/core/ChartAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/madvil/core/ChartAdapter$ItemHolder;->this$0:Lcom/madvil/core/ChartAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/madvil/core/ChartAdapter;Lcom/madvil/core/ChartAdapter$ItemHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/madvil/core/ChartAdapter$ItemHolder;-><init>(Lcom/madvil/core/ChartAdapter;)V

    return-void
.end method
