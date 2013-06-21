.class Lcom/wareone/tappmt/Currency$7;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Currency;->_setDefaultCurrency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Currency;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Currency;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$7;->this$0:Lcom/wareone/tappmt/Currency;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 436
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 437
    return-void
.end method
