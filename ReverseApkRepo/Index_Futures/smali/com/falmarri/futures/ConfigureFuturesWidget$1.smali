.class Lcom/falmarri/futures/ConfigureFuturesWidget$1;
.super Ljava/lang/Object;
.source "ConfigureFuturesWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    iput-object p1, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$1;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/falmarri/futures/ConfigureFuturesWidget$1;->this$0:Lcom/falmarri/futures/ConfigureFuturesWidget;

    iget-object v0, v0, Lcom/falmarri/futures/ConfigureFuturesWidget;->check:[Z

    aput-boolean p3, v0, p2

    .line 47
    return-void
.end method
