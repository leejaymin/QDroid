.class Lelectrum2/drums/electrum$23;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$23;->this$0:Lelectrum2/drums/electrum;

    .line 6544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6548
    iget-object v0, p0, Lelectrum2/drums/electrum$23;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->ResetDrumButtonLights()V
    invoke-static {v0}, Lelectrum2/drums/electrum;->access$11(Lelectrum2/drums/electrum;)V

    .line 6550
    return-void
.end method
