.class Lcom/fleapapa/helper/InterestSelector$2;
.super Ljava/lang/Object;
.source "InterestSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/fleapapa/helper/InterestSelector$2;->this$0:Lcom/fleapapa/helper/InterestSelector;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 112
    const/16 v0, 0x80

    sput v0, Lcom/fleapapa/util/My;->flags:I

    .line 113
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector$2;->this$0:Lcom/fleapapa/helper/InterestSelector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/InterestSelector;->listItems(Ljava/lang/String;I)V

    .line 114
    return-void
.end method
