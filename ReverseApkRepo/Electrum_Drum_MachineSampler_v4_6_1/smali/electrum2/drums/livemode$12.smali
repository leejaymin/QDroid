.class Lelectrum2/drums/livemode$12;
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
    iput-object p1, p0, Lelectrum2/drums/livemode$12;->this$0:Lelectrum2/drums/livemode;

    .line 1445
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

    .line 1447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 1450
    check-cast v1, Landroid/widget/ImageView;

    .line 1456
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    move-object v0, p1

    .line 1458
    check-cast v0, Landroid/widget/ImageView;

    .line 1461
    .local v0, tempview:Landroid/widget/ImageView;
    iget-object v1, p0, Lelectrum2/drums/livemode$12;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->soundslot1:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_2

    .line 1463
    iget-object v1, p0, Lelectrum2/drums/livemode$12;->this$0:Lelectrum2/drums/livemode;

    #calls: Lelectrum2/drums/livemode;->SetSelectedSound(I)V
    invoke-static {v1, v3}, Lelectrum2/drums/livemode;->access$2(Lelectrum2/drums/livemode;I)V

    .line 1478
    .end local v0           #tempview:Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return v3

    .line 1466
    .restart local v0       #tempview:Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Lelectrum2/drums/livemode$12;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->soundslot2:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_1

    .line 1468
    iget-object v1, p0, Lelectrum2/drums/livemode$12;->this$0:Lelectrum2/drums/livemode;

    const/4 v2, 0x2

    #calls: Lelectrum2/drums/livemode;->SetSelectedSound(I)V
    invoke-static {v1, v2}, Lelectrum2/drums/livemode;->access$2(Lelectrum2/drums/livemode;I)V

    goto :goto_0
.end method
