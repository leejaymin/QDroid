.class Lcom/fleapapa/helper/QAList$2;
.super Ljava/lang/Object;
.source "QAList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/QAList;->submit_qa(Lcom/fleapapa/helper/QA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/QAList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/QAList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$2;->this$0:Lcom/fleapapa/helper/QAList;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/fleapapa/helper/QAList$2;->this$0:Lcom/fleapapa/helper/QAList;

    const v2, 0x7f080125

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, feedback:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/QAList$2;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$2;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, v2, Lcom/fleapapa/helper/QAList;->cqa:Lcom/fleapapa/helper/QA;

    invoke-virtual {v1, v2, v0}, Lcom/fleapapa/helper/QAList;->submit_qa(Lcom/fleapapa/helper/QA;Ljava/lang/String;)V

    goto :goto_0
.end method
