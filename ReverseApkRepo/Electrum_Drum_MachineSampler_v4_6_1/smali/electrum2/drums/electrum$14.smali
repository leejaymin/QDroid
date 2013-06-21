.class Lelectrum2/drums/electrum$14;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    .line 2345
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

    .line 2348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 2350
    check-cast v0, Landroid/widget/ImageView;

    .line 2351
    .local v0, tempview:Landroid/widget/ImageView;
    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2353
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lelectrum2/drums/electrum;->wasLongPressed:Z

    .line 2355
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iput-object v0, v1, Lelectrum2/drums/electrum;->soundView:Landroid/widget/ImageView;

    .line 2359
    .end local v0           #tempview:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    move-object v0, p1

    .line 2361
    check-cast v0, Landroid/widget/ImageView;

    .line 2364
    .restart local v0       #tempview:Landroid/widget/ImageView;
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton1:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_2

    .line 2366
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v3}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    .line 2424
    .end local v0           #tempview:Landroid/widget/ImageView;
    :cond_1
    :goto_0
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->gestureScannerDrumSlot:Landroid/view/GestureDetector;
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$8(Lelectrum2/drums/electrum;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2427
    return v3

    .line 2369
    .restart local v0       #tempview:Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton2:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_3

    .line 2371
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x2

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto :goto_0

    .line 2372
    :cond_3
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton3:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_4

    .line 2374
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x3

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto :goto_0

    .line 2375
    :cond_4
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton4:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_5

    .line 2377
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x4

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto :goto_0

    .line 2378
    :cond_5
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton5:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_6

    .line 2380
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x5

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto :goto_0

    .line 2381
    :cond_6
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton6:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_7

    .line 2383
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x6

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto :goto_0

    .line 2384
    :cond_7
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton7:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_8

    .line 2386
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x7

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto :goto_0

    .line 2387
    :cond_8
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton8:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_9

    .line 2389
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0x8

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto :goto_0

    .line 2390
    :cond_9
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton9:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_a

    .line 2392
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0x9

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto :goto_0

    .line 2393
    :cond_a
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton10:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_b

    .line 2395
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0xa

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto/16 :goto_0

    .line 2396
    :cond_b
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton11:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_c

    .line 2398
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0xb

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto/16 :goto_0

    .line 2399
    :cond_c
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton12:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_d

    .line 2401
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0xc

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto/16 :goto_0

    .line 2402
    :cond_d
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton13:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_e

    .line 2404
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0xd

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto/16 :goto_0

    .line 2405
    :cond_e
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton14:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_f

    .line 2407
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0xe

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto/16 :goto_0

    .line 2408
    :cond_f
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton15:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_10

    .line 2410
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0xf

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto/16 :goto_0

    .line 2411
    :cond_10
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->drumbutton16:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_1

    .line 2413
    iget-object v1, p0, Lelectrum2/drums/electrum$14;->this$0:Lelectrum2/drums/electrum;

    const/16 v2, 0x10

    #calls: Lelectrum2/drums/electrum;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/electrum;->access$7(Lelectrum2/drums/electrum;I)V

    goto/16 :goto_0
.end method
