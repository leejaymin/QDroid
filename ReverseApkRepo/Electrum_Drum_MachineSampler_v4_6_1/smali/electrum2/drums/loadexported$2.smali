.class Lelectrum2/drums/loadexported$2;
.super Ljava/lang/Object;
.source "loadexported.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/loadexported;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/loadexported;


# direct methods
.method constructor <init>(Lelectrum2/drums/loadexported;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/loadexported$2;->this$0:Lelectrum2/drums/loadexported;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lelectrum2/drums/loadexported$2;->this$0:Lelectrum2/drums/loadexported;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lelectrum2/drums/loadexported$2;->this$0:Lelectrum2/drums/loadexported;

    iget-object v3, v3, Lelectrum2/drums/loadexported;->subfolder:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lelectrum2/drums/loadexported$2;->this$0:Lelectrum2/drums/loadexported;

    iget-object v3, v3, Lelectrum2/drums/loadexported;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lelectrum2/drums/loadexported;->selectedfilename:Ljava/lang/String;

    .line 185
    const-string v1, "loadexported"

    iget-object v2, p0, Lelectrum2/drums/loadexported$2;->this$0:Lelectrum2/drums/loadexported;

    iget-object v2, v2, Lelectrum2/drums/loadexported;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lelectrum2/drums/loadexported$2;->this$0:Lelectrum2/drums/loadexported;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lelectrum2/drums/loadexported;->setResult(ILandroid/content/Intent;)V

    .line 190
    iget-object v1, p0, Lelectrum2/drums/loadexported$2;->this$0:Lelectrum2/drums/loadexported;

    invoke-virtual {v1}, Lelectrum2/drums/loadexported;->finish()V

    .line 192
    return-void
.end method
