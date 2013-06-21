.class Lelectrum2/drums/electrum$19;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$19;->this$0:Lelectrum2/drums/electrum;

    .line 3891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3895
    iget-object v0, p0, Lelectrum2/drums/electrum$19;->this$0:Lelectrum2/drums/electrum;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/electrum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lelectrum2/drums/electrum;->SavePatterns(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lelectrum2/drums/electrum;->access$9(Lelectrum2/drums/electrum;Ljava/lang/String;Z)V

    .line 3897
    return-void
.end method
