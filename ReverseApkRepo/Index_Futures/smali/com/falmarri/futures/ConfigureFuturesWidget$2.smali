.class Lcom/falmarri/futures/ConfigureFuturesWidget$2;
.super Ljava/lang/Object;
.source "ConfigureFuturesWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/falmarri/futures/ConfigureFuturesWidget;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;


# direct methods
.method constructor <init>(Lcom/falmarri/futures/ConfigureFuturesWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$2;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$2;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    invoke-virtual {v0}, Lcom/falmarri/futures/ConfigureFuturesWidget;->finish()V

    .line 58
    return-void
.end method
