.class Lcom/fleapapa/helper/ItemList$SortBy;
.super Ljava/lang/Object;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/ItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortBy"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field op:C

.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/ItemList;CLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "name"

    .prologue
    .line 708
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$SortBy;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-char p2, p0, Lcom/fleapapa/helper/ItemList$SortBy;->op:C

    .line 707
    iput-object p3, p0, Lcom/fleapapa/helper/ItemList$SortBy;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$SortBy;->name:Ljava/lang/String;

    return-object v0
.end method
