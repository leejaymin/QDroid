.class Lelectrum2/drums/livemode$2;
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
    iput-object p1, p0, Lelectrum2/drums/livemode$2;->this$0:Lelectrum2/drums/livemode;

    .line 536
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

    .line 539
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 541
    iget-object v1, p0, Lelectrum2/drums/livemode$2;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->deletebutton:Landroid/widget/ImageView;

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 549
    iget-object v1, p0, Lelectrum2/drums/livemode$2;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->deletebutton:Landroid/widget/ImageView;

    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 551
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 554
    sget v1, Lelectrum2/drums/livemode;->currselection:I

    sget-object v2, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, waslastitem:Z
    sget v1, Lelectrum2/drums/livemode;->currselection:I

    sget-object v2, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 559
    const/4 v0, 0x1

    .line 562
    :cond_1
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    sget v2, Lelectrum2/drums/livemode;->currselection:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    if-eqz v0, :cond_2

    .line 566
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lelectrum2/drums/livemode;->currselection:I

    .line 569
    :cond_2
    iget-object v1, p0, Lelectrum2/drums/livemode$2;->this$0:Lelectrum2/drums/livemode;

    iput-boolean v3, v1, Lelectrum2/drums/livemode;->IsDeleting:Z

    .line 571
    iget-object v1, p0, Lelectrum2/drums/livemode$2;->this$0:Lelectrum2/drums/livemode;

    #calls: Lelectrum2/drums/livemode;->LoadList()V
    invoke-static {v1}, Lelectrum2/drums/livemode;->access$0(Lelectrum2/drums/livemode;)V

    .line 578
    .end local v0           #waslastitem:Z
    :cond_3
    return v3
.end method
