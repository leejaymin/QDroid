.class Lelectrum2/drums/electrum$2;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/electrum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/electrum;


# direct methods
.method constructor <init>(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/electrum$2;->this$0:Lelectrum2/drums/electrum;

    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1414
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lelectrum2/drums/electrum$2;->this$0:Lelectrum2/drums/electrum;

    const-class v2, Lelectrum2/drums/mixer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1416
    .local v0, i:Landroid/content/Intent;
    const/4 v1, 0x1

    sput-boolean v1, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 1418
    iget-object v1, p0, Lelectrum2/drums/electrum$2;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v1, v0}, Lelectrum2/drums/electrum;->startActivity(Landroid/content/Intent;)V

    .line 1420
    return-void
.end method
