.class Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Currency$CurrencyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field currency_name:Landroid/widget/TextView;

.field decimal:Landroid/widget/TextView;

.field exchange_rate:Landroid/widget/TextView;

.field flag:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/wareone/tappmt/Currency$CurrencyAdapter;


# direct methods
.method private constructor <init>(Lcom/wareone/tappmt/Currency$CurrencyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;->this$1:Lcom/wareone/tappmt/Currency$CurrencyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wareone/tappmt/Currency$CurrencyAdapter;Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/Currency$CurrencyAdapter$ViewHolder;-><init>(Lcom/wareone/tappmt/Currency$CurrencyAdapter;)V

    return-void
.end method
