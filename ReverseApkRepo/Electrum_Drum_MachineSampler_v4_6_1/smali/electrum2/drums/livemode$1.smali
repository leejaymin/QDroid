.class Lelectrum2/drums/livemode$1;
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
    iput-object p1, p0, Lelectrum2/drums/livemode$1;->this$0:Lelectrum2/drums/livemode;

    .line 499
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

    const/4 v2, 0x0

    .line 502
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lelectrum2/drums/livemode$1;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->deleteallbutton:Landroid/widget/ImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 512
    iget-object v0, p0, Lelectrum2/drums/livemode$1;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->deleteallbutton:Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    sget-object v0, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 516
    sput v2, Lelectrum2/drums/livemode;->currselection:I

    .line 518
    sput v2, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    .line 519
    sput v2, Lelectrum2/drums/livemode$testlist;->yoffset:I

    .line 522
    iget-object v0, p0, Lelectrum2/drums/livemode$1;->this$0:Lelectrum2/drums/livemode;

    #calls: Lelectrum2/drums/livemode;->LoadList()V
    invoke-static {v0}, Lelectrum2/drums/livemode;->access$0(Lelectrum2/drums/livemode;)V

    .line 529
    :cond_1
    return v3
.end method
