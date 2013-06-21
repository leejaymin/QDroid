.class Lelectrum2/drums/livemode$13;
.super Ljava/lang/Object;
.source "livemode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    .line 1765
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

    .line 1768
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 1770
    check-cast v0, Landroid/widget/ImageView;

    .line 1771
    .local v0, tempview:Landroid/widget/ImageView;
    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1777
    .end local v0           #tempview:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    move-object v0, p1

    .line 1779
    check-cast v0, Landroid/widget/ImageView;

    .line 1782
    .restart local v0       #tempview:Landroid/widget/ImageView;
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_2

    .line 1785
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v3}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    .line 1841
    .end local v0           #tempview:Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return v3

    .line 1788
    .restart local v0       #tempview:Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_3

    .line 1790
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/4 v2, 0x2

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1791
    :cond_3
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_4

    .line 1793
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/4 v2, 0x3

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1794
    :cond_4
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_5

    .line 1796
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/4 v2, 0x4

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1797
    :cond_5
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_6

    .line 1799
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/4 v2, 0x5

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1800
    :cond_6
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_7

    .line 1802
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/4 v2, 0x6

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1803
    :cond_7
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_8

    .line 1805
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/4 v2, 0x7

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1806
    :cond_8
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_9

    .line 1808
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0x8

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1809
    :cond_9
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_a

    .line 1811
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0x9

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1812
    :cond_a
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_b

    .line 1814
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0xa

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto :goto_0

    .line 1815
    :cond_b
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_c

    .line 1817
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0xb

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto/16 :goto_0

    .line 1818
    :cond_c
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_d

    .line 1820
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0xc

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto/16 :goto_0

    .line 1821
    :cond_d
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_e

    .line 1823
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0xd

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto/16 :goto_0

    .line 1824
    :cond_e
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_f

    .line 1826
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0xe

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto/16 :goto_0

    .line 1827
    :cond_f
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_10

    .line 1829
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0xf

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto/16 :goto_0

    .line 1830
    :cond_10
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_1

    .line 1832
    iget-object v1, p0, Lelectrum2/drums/livemode$13;->this$0:Lelectrum2/drums/livemode;

    const/16 v2, 0x10

    #calls: Lelectrum2/drums/livemode;->ToggleSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$3(Lelectrum2/drums/livemode;I)V

    goto/16 :goto_0
.end method
