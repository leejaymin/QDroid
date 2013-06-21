.class Lelectrum2/drums/overWrite$2;
.super Ljava/lang/Object;
.source "overWrite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/overWrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/overWrite;


# direct methods
.method constructor <init>(Lelectrum2/drums/overWrite;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/overWrite$2;->this$0:Lelectrum2/drums/overWrite;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, i:Landroid/content/Intent;
    const-string v1, "overwriteanswer"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lelectrum2/drums/overWrite$2;->this$0:Lelectrum2/drums/overWrite;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lelectrum2/drums/overWrite;->setResult(ILandroid/content/Intent;)V

    .line 72
    iget-object v1, p0, Lelectrum2/drums/overWrite$2;->this$0:Lelectrum2/drums/overWrite;

    invoke-virtual {v1}, Lelectrum2/drums/overWrite;->finish()V

    .line 75
    return-void
.end method
