.class Lelectrum2/drums/bpmsettings$9;
.super Ljava/lang/Object;
.source "bpmsettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/bpmsettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/bpmsettings;


# direct methods
.method constructor <init>(Lelectrum2/drums/bpmsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 485
    iget-object v6, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v6, v6, Lelectrum2/drums/bpmsettings;->bpmInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, newBpm:Ljava/lang/String;
    iget-object v6, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v6, v6, Lelectrum2/drums/bpmsettings;->resolution:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, newResolution:Ljava/lang/String;
    iget-object v6, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v6, v6, Lelectrum2/drums/bpmsettings;->pattlen:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, newpattlen:Ljava/lang/String;
    const-string v6, ""

    if-eq v4, v6, :cond_0

    const-string v6, ""

    if-eq v3, v6, :cond_0

    const-string v6, ""

    if-ne v2, v6, :cond_2

    .line 493
    :cond_0
    iget-object v6, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    const-string v7, "Please be sure to enter a value for BPM, Resolution, and pattern length"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 495
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 548
    .end local v5           #temptoast:Landroid/widget/Toast;
    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 505
    .local v0, TestInt:Ljava/lang/Integer;
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    .end local v0           #TestInt:Ljava/lang/Integer;
    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .restart local v0       #TestInt:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x10

    if-gt v6, v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4

    .line 518
    :cond_3
    iget-object v6, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    const-string v7, "Sorry, Max pattern length is 16. Min length is 2."

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 520
    .restart local v5       #temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 507
    .end local v0           #TestInt:Ljava/lang/Integer;
    .end local v5           #temptoast:Landroid/widget/Toast;
    :catch_0
    move-exception v1

    .line 509
    .local v1, i:Ljava/lang/Exception;
    iget-object v6, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    const-string v7, "Please enter a numeric value for Pattern length"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 511
    .restart local v5       #temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 527
    .end local v1           #i:Ljava/lang/Exception;
    .end local v5           #temptoast:Landroid/widget/Toast;
    .restart local v0       #TestInt:Ljava/lang/Integer;
    :cond_4
    const-string v6, "16"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "32"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "12"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 532
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v1, i:Landroid/content/Intent;
    const-string v6, "bpm"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v6, "resolution"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v6, "pattlen"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget-object v6, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1}, Lelectrum2/drums/bpmsettings;->setResult(ILandroid/content/Intent;)V

    .line 541
    iget-object v6, p0, Lelectrum2/drums/bpmsettings$9;->this$0:Lelectrum2/drums/bpmsettings;

    invoke-virtual {v6}, Lelectrum2/drums/bpmsettings;->finish()V

    goto :goto_0
.end method
