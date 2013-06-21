.class Lcom/fleapapa/helper/CallUes$10;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$10;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$10;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v0, v0, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$10;->this$0:Lcom/fleapapa/helper/CallUes;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallUes;->setResult(I)V

    .line 264
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$10;->this$0:Lcom/fleapapa/helper/CallUes;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallUes;->finish()V

    .line 266
    :cond_0
    return-void
.end method
