.class Lelectrum2/drums/drumsample$4;
.super Ljava/lang/Object;
.source "drumsample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/drumsample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/drumsample;


# direct methods
.method constructor <init>(Lelectrum2/drums/drumsample;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v0, i:Landroid/content/Intent;
    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    iget-object v3, v3, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 434
    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    iget-object v3, v3, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    iget-object v5, v5, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    .line 442
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    iget-object v3, v3, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v2, testfile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    const-string v3, "selectedsamplefile"

    iget-object v4, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    iget-object v4, v4, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lelectrum2/drums/drumsample;->setResult(ILandroid/content/Intent;)V

    .line 451
    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    invoke-virtual {v3}, Lelectrum2/drums/drumsample;->finish()V

    .line 475
    .end local v2           #testfile:Ljava/io/File;
    :goto_0
    return-void

    .line 454
    .restart local v2       #testfile:Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    new-instance v4, Ljava/lang/String;

    const-string v5, "You didn\'t select a sample file, only a directory!"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 456
    .local v1, temptoast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 461
    .end local v1           #temptoast:Landroid/widget/Toast;
    .end local v2           #testfile:Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    new-instance v4, Ljava/lang/String;

    const-string v5, "You must click on or touch a sample to select it first"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 463
    .restart local v1       #temptoast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 468
    .end local v1           #temptoast:Landroid/widget/Toast;
    :cond_2
    iget-object v3, p0, Lelectrum2/drums/drumsample$4;->this$0:Lelectrum2/drums/drumsample;

    new-instance v4, Ljava/lang/String;

    const-string v5, "You must click on or touch a sample to select it first"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 470
    .restart local v1       #temptoast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
