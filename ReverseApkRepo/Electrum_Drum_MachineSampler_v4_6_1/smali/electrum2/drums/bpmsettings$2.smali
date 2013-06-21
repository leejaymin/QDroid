.class Lelectrum2/drums/bpmsettings$2;
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
    iput-object p1, p0, Lelectrum2/drums/bpmsettings$2;->this$0:Lelectrum2/drums/bpmsettings;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 304
    :try_start_0
    iget-object v5, p0, Lelectrum2/drums/bpmsettings$2;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v5, v5, Lelectrum2/drums/bpmsettings;->bpmInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, newBpm:Ljava/lang/String;
    move-object v3, v2

    .line 308
    .local v3, result:Ljava/lang/String;
    const/16 v5, 0x2c

    const/16 v6, 0x2e

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 309
    const/16 v5, 0xa

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 312
    move-object v2, v3

    .line 314
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, bpmf:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 318
    iget-object v5, p0, Lelectrum2/drums/bpmsettings$2;->this$0:Lelectrum2/drums/bpmsettings;

    iget-object v5, v5, Lelectrum2/drums/bpmsettings;->bpmInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0           #bpmf:Ljava/lang/Float;
    .end local v2           #newBpm:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/String;
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v1

    .line 322
    .local v1, e0:Ljava/lang/Exception;
    iget-object v5, p0, Lelectrum2/drums/bpmsettings$2;->this$0:Lelectrum2/drums/bpmsettings;

    const-string v6, "Invalid BPM number format"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 324
    .local v4, temptoast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
