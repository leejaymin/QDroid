.class Lelectrum2/drums/foldercreate$1;
.super Ljava/lang/Object;
.source "foldercreate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/foldercreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/foldercreate;


# direct methods
.method constructor <init>(Lelectrum2/drums/foldercreate;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/foldercreate$1;->this$0:Lelectrum2/drums/foldercreate;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 53
    iget-object v2, p0, Lelectrum2/drums/foldercreate$1;->this$0:Lelectrum2/drums/foldercreate;

    iget-object v2, v2, Lelectrum2/drums/foldercreate;->foldertext:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, texttoreturn:Ljava/lang/String;
    const/16 v2, 0x2c

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 56
    const/16 v2, 0xa

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, i:Landroid/content/Intent;
    const-string v2, "newfoldername"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v2, p0, Lelectrum2/drums/foldercreate$1;->this$0:Lelectrum2/drums/foldercreate;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lelectrum2/drums/foldercreate;->setResult(ILandroid/content/Intent;)V

    .line 66
    iget-object v2, p0, Lelectrum2/drums/foldercreate$1;->this$0:Lelectrum2/drums/foldercreate;

    invoke-virtual {v2}, Lelectrum2/drums/foldercreate;->finish()V

    .line 70
    return-void
.end method
