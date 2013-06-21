.class Lorg/armyapp/marinecorps/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/armyapp/marinecorps/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/armyapp/marinecorps/MainActivity;


# direct methods
.method constructor <init>(Lorg/armyapp/marinecorps/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Lorg/armyapp/marinecorps/MainActivity;->setContentView(I)V

    .line 138
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f06000a

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->drill:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$0(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 139
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->drill:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$1(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->drillListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$2(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f060007

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->rifle:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$3(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 142
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->rifle:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$4(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->rifleListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$5(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f060006

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->hymn:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$6(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 145
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->hymn:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$7(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->hymnListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$8(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f060008

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->nco:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$9(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 148
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->nco:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$10(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->ncoListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$11(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f060009

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->snco:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$12(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 151
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->snco:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$13(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->sncoListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$14(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f06000c

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->traits:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$15(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 154
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->traits:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$16(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->traitsListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$17(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f06000d

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->principles:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$18(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 157
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->principles:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$19(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->principleListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$20(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f06000b

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->orders:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$21(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 160
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->orders:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$22(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->ordersListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$23(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    const v2, 0x7f06000e

    invoke-virtual {v0, v2}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    #setter for: Lorg/armyapp/marinecorps/MainActivity;->exit:Landroid/widget/Button;
    invoke-static {v1, v0}, Lorg/armyapp/marinecorps/MainActivity;->access$24(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V

    .line 163
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->exit:Landroid/widget/Button;
    invoke-static {v0}, Lorg/armyapp/marinecorps/MainActivity;->access$25(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity$2;->this$0:Lorg/armyapp/marinecorps/MainActivity;

    #getter for: Lorg/armyapp/marinecorps/MainActivity;->exitListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/armyapp/marinecorps/MainActivity;->access$26(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method
