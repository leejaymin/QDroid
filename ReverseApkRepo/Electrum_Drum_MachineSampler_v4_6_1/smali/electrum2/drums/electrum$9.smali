.class Lelectrum2/drums/electrum$9;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lelectrum2/drums/electrum$9;->this$0:Lelectrum2/drums/electrum;

    .line 1812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1816
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lelectrum2/drums/electrum$9;->this$0:Lelectrum2/drums/electrum;

    const-class v2, Lelectrum2/drums/helppage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1818
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lelectrum2/drums/electrum$9;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1820
    return-void
.end method
