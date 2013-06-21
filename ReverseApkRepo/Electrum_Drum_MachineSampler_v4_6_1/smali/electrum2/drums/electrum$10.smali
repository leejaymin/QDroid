.class Lelectrum2/drums/electrum$10;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$10;->this$0:Lelectrum2/drums/electrum;

    .line 2075
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

    .line 2078
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 2080
    check-cast v0, Landroid/widget/ImageView;

    .line 2081
    .local v0, tempview:Landroid/widget/ImageView;
    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2087
    .end local v0           #tempview:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_2

    move-object v0, p1

    .line 2089
    check-cast v0, Landroid/widget/ImageView;

    .line 2090
    .restart local v0       #tempview:Landroid/widget/ImageView;
    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2092
    iget-object v1, p0, Lelectrum2/drums/electrum$10;->this$0:Lelectrum2/drums/electrum;

    iget v2, v1, Lelectrum2/drums/electrum;->currentpattern:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lelectrum2/drums/electrum;->currentpattern:I

    .line 2094
    iget-object v1, p0, Lelectrum2/drums/electrum$10;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->currentpattern:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lelectrum2/drums/electrum$10;->this$0:Lelectrum2/drums/electrum;

    const/4 v2, 0x0

    iput v2, v1, Lelectrum2/drums/electrum;->currentpattern:I

    .line 2096
    :cond_1
    iget-object v1, p0, Lelectrum2/drums/electrum$10;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetDrumsCurrentPattern()V
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$2(Lelectrum2/drums/electrum;)V

    .line 2098
    iget-object v1, p0, Lelectrum2/drums/electrum$10;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->DisplaySoundSlots()V
    invoke-static {v1}, Lelectrum2/drums/electrum;->access$1(Lelectrum2/drums/electrum;)V

    .line 2104
    .end local v0           #tempview:Landroid/widget/ImageView;
    :cond_2
    return v3
.end method
