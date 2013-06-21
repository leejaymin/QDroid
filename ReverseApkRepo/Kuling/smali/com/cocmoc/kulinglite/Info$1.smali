.class Lcom/cocmoc/kulinglite/Info$1;
.super Ljava/lang/Object;
.source "Info.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Info;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Info;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Info;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Info$1;->this$0:Lcom/cocmoc/kulinglite/Info;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Info$1;->this$0:Lcom/cocmoc/kulinglite/Info;

    invoke-virtual {v0}, Lcom/cocmoc/kulinglite/Info;->finish()V

    .line 26
    return-void
.end method
