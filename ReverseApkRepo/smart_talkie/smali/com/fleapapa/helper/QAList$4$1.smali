.class Lcom/fleapapa/helper/QAList$4$1;
.super Ljava/lang/Object;
.source "QAList.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/QAList$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/QAList$4;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/QAList$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$4$1;->this$1:Lcom/fleapapa/helper/QAList$4;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 120
    packed-switch p2, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$4$1;->this$1:Lcom/fleapapa/helper/QAList$4;

    #getter for: Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;
    invoke-static {v0}, Lcom/fleapapa/helper/QAList$4;->access$0(Lcom/fleapapa/helper/QAList$4;)Lcom/fleapapa/helper/QAList;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/fleapapa/helper/QAList;->rating:I

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$4$1;->this$1:Lcom/fleapapa/helper/QAList$4;

    #getter for: Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;
    invoke-static {v0}, Lcom/fleapapa/helper/QAList$4;->access$0(Lcom/fleapapa/helper/QAList$4;)Lcom/fleapapa/helper/QAList;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/fleapapa/helper/QAList;->rating:I

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$4$1;->this$1:Lcom/fleapapa/helper/QAList$4;

    #getter for: Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;
    invoke-static {v0}, Lcom/fleapapa/helper/QAList$4;->access$0(Lcom/fleapapa/helper/QAList$4;)Lcom/fleapapa/helper/QAList;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/fleapapa/helper/QAList;->rating:I

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f080127
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
