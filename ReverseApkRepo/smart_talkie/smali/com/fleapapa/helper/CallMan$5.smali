.class Lcom/fleapapa/helper/CallMan$5;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$5;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$5;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$5;->this$0:Lcom/fleapapa/helper/CallMan;

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallMan;->hideTitleBox(Z)V

    .line 233
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
