.class Lelectrum2/drums/electrum$16;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lelectrum2/drums/electrum$16;->this$0:Lelectrum2/drums/electrum;

    .line 2488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v3, 0x1

    .line 2491
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2493
    iget-object v1, p0, Lelectrum2/drums/electrum$16;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->playlivebutton:Landroid/widget/ImageView;

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2498
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2500
    iget-object v1, p0, Lelectrum2/drums/electrum$16;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->playlivebutton:Landroid/widget/ImageView;

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2508
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lelectrum2/drums/electrum$16;->this$0:Lelectrum2/drums/electrum;

    const-class v2, Lelectrum2/drums/livemode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2510
    .local v0, i:Landroid/content/Intent;
    sput-boolean v3, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 2512
    iget-object v1, p0, Lelectrum2/drums/electrum$16;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0x3c

    invoke-virtual {v1, v0, v2}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2517
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    return v3
.end method
