.class Lcom/example/aatg/tc/TemperatureConverterActivity$1;
.super Ljava/lang/Object;
.source "TemperatureConverterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/aatg/tc/TemperatureConverterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/aatg/tc/TemperatureConverterActivity;


# direct methods
.method constructor <init>(Lcom/example/aatg/tc/TemperatureConverterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$1;->this$0:Lcom/example/aatg/tc/TemperatureConverterActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$1;->this$0:Lcom/example/aatg/tc/TemperatureConverterActivity;

    #getter for: Lcom/example/aatg/tc/TemperatureConverterActivity;->mErrorButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/example/aatg/tc/TemperatureConverterActivity;->access$0(Lcom/example/aatg/tc/TemperatureConverterActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/example/aatg/tc/TemperatureConverterActivity$1;->this$0:Lcom/example/aatg/tc/TemperatureConverterActivity;

    #getter for: Lcom/example/aatg/tc/TemperatureConverterActivity;->mString:I
    invoke-static {v1}, Lcom/example/aatg/tc/TemperatureConverterActivity;->access$1(Lcom/example/aatg/tc/TemperatureConverterActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x7f060004
        :pswitch_0
    .end packed-switch
.end method
