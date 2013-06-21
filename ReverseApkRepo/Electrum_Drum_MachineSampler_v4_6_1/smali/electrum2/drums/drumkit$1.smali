.class Lelectrum2/drums/drumkit$1;
.super Ljava/lang/Object;
.source "drumkit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/drumkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/drumkit;


# direct methods
.method constructor <init>(Lelectrum2/drums/drumkit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/drumkit$1;->this$0:Lelectrum2/drums/drumkit;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, i:Landroid/content/Intent;
    iget-object v4, p0, Lelectrum2/drums/drumkit$1;->this$0:Lelectrum2/drums/drumkit;

    iget-object v4, v4, Lelectrum2/drums/drumkit;->drumkitspin:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 56
    .local v1, selectedkit:I
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 57
    .local v2, tempint:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, tempstr:Ljava/lang/String;
    const-string v4, "drumkit"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v4, p0, Lelectrum2/drums/drumkit$1;->this$0:Lelectrum2/drums/drumkit;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lelectrum2/drums/drumkit;->setResult(ILandroid/content/Intent;)V

    .line 64
    iget-object v4, p0, Lelectrum2/drums/drumkit$1;->this$0:Lelectrum2/drums/drumkit;

    invoke-virtual {v4}, Lelectrum2/drums/drumkit;->finish()V

    .line 67
    return-void
.end method
