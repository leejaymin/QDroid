.class Lcom/fleapapa/helper/QAList$3;
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
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$3;->this$0:Lcom/fleapapa/helper/QAList;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$3;->this$0:Lcom/fleapapa/helper/QAList;

    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 93
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$3;->this$0:Lcom/fleapapa/helper/QAList;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RadioGroup;

    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 94
    return-void
.end method
