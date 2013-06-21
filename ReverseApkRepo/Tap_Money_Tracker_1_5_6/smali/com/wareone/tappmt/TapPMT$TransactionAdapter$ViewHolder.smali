.class Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TapPMT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/TapPMT$TransactionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field account:Landroid/widget/TextView;

.field amount:Landroid/widget/TextView;

.field category:Landroid/widget/TextView;

.field currency:Landroid/widget/TextView;

.field group:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field note:Landroid/widget/TextView;

.field payee:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

.field trans_date:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/wareone/tappmt/TapPMT$TransactionAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;->this$1:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wareone/tappmt/TapPMT$TransactionAdapter;Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/TapPMT$TransactionAdapter$ViewHolder;-><init>(Lcom/wareone/tappmt/TapPMT$TransactionAdapter;)V

    return-void
.end method
