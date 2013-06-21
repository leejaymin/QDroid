.class Lcom/fleapapa/helper/QAList$1;
.super Ljava/lang/Object;
.source "QAList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/QAList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/QAList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/QAList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$1;->this$0:Lcom/fleapapa/helper/QAList;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/fleapapa/helper/QAList$1;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v1, v1, Lcom/fleapapa/helper/QAList;->adapter:Lcom/fleapapa/helper/QAList$QaAdapter;

    invoke-virtual {v1, p3}, Lcom/fleapapa/helper/QAList$QaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/QA;

    .line 60
    .local v0, qa:Lcom/fleapapa/helper/QA;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QAListQAList.onCreate: selected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/fleapapa/helper/QA;->feedback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/fleapapa/helper/QAList$1;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$1;->this$0:Lcom/fleapapa/helper/QAList;

    iput-object v0, v2, Lcom/fleapapa/helper/QAList;->cqa:Lcom/fleapapa/helper/QA;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/QAList;->viewQA(Lcom/fleapapa/helper/QA;)V

    .line 63
    return-void
.end method
