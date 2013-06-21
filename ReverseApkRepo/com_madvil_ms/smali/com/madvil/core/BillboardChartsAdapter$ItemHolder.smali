.class Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "BillboardChartsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madvil/core/BillboardChartsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation


# instance fields
.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/madvil/core/BillboardChartsAdapter;


# direct methods
.method private constructor <init>(Lcom/madvil/core/BillboardChartsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;->this$0:Lcom/madvil/core/BillboardChartsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/madvil/core/BillboardChartsAdapter;Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/madvil/core/BillboardChartsAdapter$ItemHolder;-><init>(Lcom/madvil/core/BillboardChartsAdapter;)V

    return-void
.end method
