.class Lcom/fleapapa/helper/CallBursts$2;
.super Ljava/lang/Object;
.source "CallBursts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallBursts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallBursts;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallBursts;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallBursts$2;->this$0:Lcom/fleapapa/helper/CallBursts;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fleapapa/helper/CallBursts$2;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts$2;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$2;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-boolean v2, v2, Lcom/fleapapa/helper/CallBursts;->selectAll:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/fleapapa/helper/CallBursts;->selectAll:Z

    invoke-virtual {v0, v2}, Lcom/fleapapa/helper/CallBursts;->selectAll(Z)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
