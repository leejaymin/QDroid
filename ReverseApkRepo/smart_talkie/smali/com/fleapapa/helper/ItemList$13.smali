.class Lcom/fleapapa/helper/ItemList$13;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$13;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    const/16 v0, 0x80

    sput v0, Lcom/fleapapa/util/My;->flags:I

    .line 160
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$13;->this$0:Lcom/fleapapa/helper/ItemList;

    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemList;->match2()V

    .line 161
    return-void
.end method