.class Lcom/fleapapa/helper/InterestSelector$11;
.super Ljava/lang/Object;
.source "InterestSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/InterestSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/InterestSelector;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/InterestSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/InterestSelector$11;->this$0:Lcom/fleapapa/helper/InterestSelector;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector$11;->this$0:Lcom/fleapapa/helper/InterestSelector;

    iget-object v0, v0, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 197
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector$11;->this$0:Lcom/fleapapa/helper/InterestSelector;

    invoke-virtual {v0}, Lcom/fleapapa/helper/InterestSelector;->showTitle()V

    .line 198
    return-void
.end method
