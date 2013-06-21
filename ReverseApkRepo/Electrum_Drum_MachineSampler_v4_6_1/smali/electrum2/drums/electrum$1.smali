.class Lelectrum2/drums/electrum$1;
.super Landroid/telephony/PhoneStateListener;
.source "electrum.java"


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
    iput-object p1, p0, Lelectrum2/drums/electrum$1;->this$0:Lelectrum2/drums/electrum;

    .line 297
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 303
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lelectrum2/drums/electrum$1;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 310
    :cond_0
    return-void
.end method
