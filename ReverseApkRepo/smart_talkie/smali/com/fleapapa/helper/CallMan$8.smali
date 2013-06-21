.class Lcom/fleapapa/helper/CallMan$8;
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$8;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 270
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/CallPapa$Call;->save(ZZ)V

    .line 271
    return-void
.end method
