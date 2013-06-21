.class Lelectrum2/drums/livemode$10;
.super Ljava/lang/Object;
.source "livemode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/livemode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/livemode;


# direct methods
.method constructor <init>(Lelectrum2/drums/livemode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/livemode$10;->this$0:Lelectrum2/drums/livemode;

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1203
    sget-object v0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    iget v0, v0, Lelectrum2/drums/electrum;->patterncounter:I

    sput v0, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    .line 1204
    const/4 v0, 0x1

    sput-boolean v0, Lelectrum2/drums/livemode$testlist;->drawfromcode:Z

    .line 1206
    sget-object v0, Lelectrum2/drums/livemode;->insideclass:Lelectrum2/drums/livemode$testlist;

    invoke-virtual {v0}, Lelectrum2/drums/livemode$testlist;->invalidate()V

    .line 1209
    sget-object v0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    iget v0, v0, Lelectrum2/drums/electrum;->patterncounter:I

    sput v0, Lelectrum2/drums/livemode;->currselection:I

    .line 1214
    return-void
.end method
