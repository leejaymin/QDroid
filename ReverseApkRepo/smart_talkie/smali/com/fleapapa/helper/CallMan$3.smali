.class Lcom/fleapapa/helper/CallMan$3;
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$3;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$3;->this$0:Lcom/fleapapa/helper/CallMan;

    iget v0, v0, Lcom/fleapapa/helper/CallMan;->cidx:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$3;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$3;->this$0:Lcom/fleapapa/helper/CallMan;

    iget v1, v1, Lcom/fleapapa/helper/CallMan;->cidx:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallMan;->gotoCall(I)V

    .line 222
    :cond_0
    return-void
.end method
