.class public Lelectrum2/drums/livemode;
.super Landroid/app/Activity;
.source "livemode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lelectrum2/drums/livemode$testlist;
    }
.end annotation


# static fields
.field static currselection:I

.field public static insideclass:Lelectrum2/drums/livemode$testlist;


# instance fields
.field public FlashPattern:Ljava/lang/Runnable;

.field InsertMode:Z

.field IsDeleting:Z

.field OldSelection:Landroid/view/View;

.field public ShowCurrentSequencePattern:Ljava/lang/Runnable;

.field public UpdatePattern:Ljava/lang/Runnable;

.field public UpdateSequenceList:Ljava/lang/Runnable;

.field WatchPlaying:Z

.field clearloopimage:Z

.field currbank:I

.field currpattern:I

.field deleteallbutton:Landroid/widget/ImageView;

.field deletebutton:Landroid/widget/ImageView;

.field drumbutton1:Landroid/widget/ImageView;

.field drumbutton10:Landroid/widget/ImageView;

.field drumbutton11:Landroid/widget/ImageView;

.field drumbutton12:Landroid/widget/ImageView;

.field drumbutton13:Landroid/widget/ImageView;

.field drumbutton14:Landroid/widget/ImageView;

.field drumbutton15:Landroid/widget/ImageView;

.field drumbutton16:Landroid/widget/ImageView;

.field drumbutton2:Landroid/widget/ImageView;

.field drumbutton3:Landroid/widget/ImageView;

.field drumbutton4:Landroid/widget/ImageView;

.field drumbutton5:Landroid/widget/ImageView;

.field drumbutton6:Landroid/widget/ImageView;

.field drumbutton7:Landroid/widget/ImageView;

.field drumbutton8:Landroid/widget/ImageView;

.field drumbutton9:Landroid/widget/ImageView;

.field drumbuttonTouch:Landroid/view/View$OnTouchListener;

.field insertbutton:Landroid/widget/ImageView;

.field isRecording:Z

.field oldDraw:Landroid/graphics/drawable/Drawable;

.field oldpattern:I

.field onDelete:Landroid/view/View$OnTouchListener;

.field onDeleteAll:Landroid/view/View$OnTouchListener;

.field onInsert:Landroid/view/View$OnTouchListener;

.field patternHandler:Landroid/os/Handler;

.field playTouch:Landroid/view/View$OnTouchListener;

.field playbutton:Landroid/widget/ImageView;

.field powerimage:Landroid/widget/ImageView;

.field recordTouch:Landroid/view/View$OnTouchListener;

.field recordbutton:Landroid/widget/ImageView;

.field sequenceTouch:Landroid/view/View$OnTouchListener;

.field sequencerbutton:Landroid/widget/ImageView;

.field soundslot1:Landroid/widget/ImageView;

.field soundslot2:Landroid/widget/ImageView;

.field soundslotTouch:Landroid/view/View$OnTouchListener;

.field stopTouch:Landroid/view/View$OnTouchListener;

.field stopbutton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lelectrum2/drums/livemode;->currselection:I

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lelectrum2/drums/livemode;->insideclass:Lelectrum2/drums/livemode$testlist;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v0, p0, Lelectrum2/drums/livemode;->InsertMode:Z

    .line 65
    iput-boolean v0, p0, Lelectrum2/drums/livemode;->IsDeleting:Z

    .line 74
    iput v1, p0, Lelectrum2/drums/livemode;->currpattern:I

    .line 76
    iput v0, p0, Lelectrum2/drums/livemode;->currbank:I

    .line 78
    iput-boolean v0, p0, Lelectrum2/drums/livemode;->WatchPlaying:Z

    .line 80
    iput v1, p0, Lelectrum2/drums/livemode;->oldpattern:I

    .line 82
    iput-boolean v1, p0, Lelectrum2/drums/livemode;->clearloopimage:Z

    .line 84
    iput-boolean v0, p0, Lelectrum2/drums/livemode;->isRecording:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lelectrum2/drums/livemode;->OldSelection:Landroid/view/View;

    .line 499
    new-instance v0, Lelectrum2/drums/livemode$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$1;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->onDeleteAll:Landroid/view/View$OnTouchListener;

    .line 536
    new-instance v0, Lelectrum2/drums/livemode$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$2;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->onDelete:Landroid/view/View$OnTouchListener;

    .line 584
    new-instance v0, Lelectrum2/drums/livemode$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$3;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->onInsert:Landroid/view/View$OnTouchListener;

    .line 620
    new-instance v0, Lelectrum2/drums/livemode$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$4;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->sequenceTouch:Landroid/view/View$OnTouchListener;

    .line 690
    new-instance v0, Lelectrum2/drums/livemode$5;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$5;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->playTouch:Landroid/view/View$OnTouchListener;

    .line 745
    new-instance v0, Lelectrum2/drums/livemode$6;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$6;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->recordTouch:Landroid/view/View$OnTouchListener;

    .line 783
    new-instance v0, Lelectrum2/drums/livemode$7;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$7;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->FlashPattern:Ljava/lang/Runnable;

    .line 941
    new-instance v0, Lelectrum2/drums/livemode$8;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$8;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->UpdatePattern:Ljava/lang/Runnable;

    .line 1157
    new-instance v0, Lelectrum2/drums/livemode$9;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$9;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->UpdateSequenceList:Ljava/lang/Runnable;

    .line 1196
    new-instance v0, Lelectrum2/drums/livemode$10;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$10;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->ShowCurrentSequencePattern:Ljava/lang/Runnable;

    .line 1357
    new-instance v0, Lelectrum2/drums/livemode$11;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$11;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->stopTouch:Landroid/view/View$OnTouchListener;

    .line 1445
    new-instance v0, Lelectrum2/drums/livemode$12;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$12;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->soundslotTouch:Landroid/view/View$OnTouchListener;

    .line 1765
    new-instance v0, Lelectrum2/drums/livemode$13;

    invoke-direct {v0, p0}, Lelectrum2/drums/livemode$13;-><init>(Lelectrum2/drums/livemode;)V

    iput-object v0, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    .line 29
    return-void
.end method

.method private ClearSelections()V
    .locals 0

    .prologue
    .line 1193
    return-void
.end method

.method private DisplayPatternSlots()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    const v1, 0x7f020055

    .line 1515
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1516
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1517
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1518
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1519
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1520
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1521
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1522
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1523
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1524
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1525
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1526
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1527
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1528
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1529
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1530
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1532
    iget v0, p0, Lelectrum2/drums/livemode;->currbank:I

    if-ne v0, v2, :cond_0

    .line 1535
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1536
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1537
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1538
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1539
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1540
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1541
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1542
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1543
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1544
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1545
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1546
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1547
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1548
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1549
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1550
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1572
    :cond_0
    iget v0, p0, Lelectrum2/drums/livemode;->currbank:I

    if-nez v0, :cond_1

    .line 1574
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1575
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1576
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1577
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1578
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1579
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1580
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1581
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1582
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1583
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1584
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1585
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1586
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1587
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1588
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1589
    iget-object v0, p0, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1612
    :cond_1
    iget v0, p0, Lelectrum2/drums/livemode;->currbank:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lelectrum2/drums/livemode;->currpattern:I

    if-le v0, v3, :cond_2

    .line 1620
    invoke-direct {p0}, Lelectrum2/drums/livemode;->DisplaySoundSlots()V

    .line 1623
    :cond_2
    iget v0, p0, Lelectrum2/drums/livemode;->currbank:I

    if-nez v0, :cond_3

    iget v0, p0, Lelectrum2/drums/livemode;->currpattern:I

    if-gt v0, v3, :cond_3

    .line 1631
    invoke-direct {p0}, Lelectrum2/drums/livemode;->DisplaySoundSlots()V

    .line 1635
    :cond_3
    return-void
.end method

.method private DisplaySelectedSound(I)V
    .locals 3
    .parameter "soundid"

    .prologue
    const v2, 0x7f02008f

    const v1, 0x7f02008d

    .line 1397
    iget-object v0, p0, Lelectrum2/drums/livemode;->soundslot1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1398
    iget-object v0, p0, Lelectrum2/drums/livemode;->soundslot2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1401
    packed-switch p1, :pswitch_data_0

    .line 1415
    :goto_0
    return-void

    .line 1405
    :pswitch_0
    iget-object v0, p0, Lelectrum2/drums/livemode;->soundslot1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1410
    :pswitch_1
    iget-object v0, p0, Lelectrum2/drums/livemode;->soundslot2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private DisplaySoundSlots()V
    .locals 7

    .prologue
    .line 1641
    const/4 v1, 0x0

    .local v1, count:I
    :goto_0
    const/16 v5, 0x10

    if-le v1, v5, :cond_0

    .line 1721
    return-void

    .line 1644
    :cond_0
    const/4 v4, 0x0

    .line 1646
    .local v4, testval:Z
    iget v2, p0, Lelectrum2/drums/livemode;->currpattern:I

    .line 1648
    .local v2, currpatterntest:I
    iget v5, p0, Lelectrum2/drums/livemode;->currbank:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1650
    add-int/lit8 v2, v2, -0x10

    .line 1653
    :cond_1
    if-ne v1, v2, :cond_2

    const/4 v4, 0x1

    .line 1655
    :cond_2
    const/4 v0, 0x0

    .line 1658
    .local v0, accentval:Z
    const/4 v3, 0x0

    .line 1661
    .local v3, disabled:Z
    packed-switch v1, :pswitch_data_0

    .line 1641
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1664
    :pswitch_0
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1667
    :pswitch_1
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1670
    :pswitch_2
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1673
    :pswitch_3
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1676
    :pswitch_4
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1679
    :pswitch_5
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1682
    :pswitch_6
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1685
    :pswitch_7
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1688
    :pswitch_8
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1691
    :pswitch_9
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1694
    :pswitch_a
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1697
    :pswitch_b
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1700
    :pswitch_c
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1703
    :pswitch_d
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1706
    :pswitch_e
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1709
    :pswitch_f
    iget-object v5, p0, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0, v5, v3}, Lelectrum2/drums/livemode;->SetButtonLight(ZZLandroid/widget/ImageView;Z)V

    goto :goto_1

    .line 1661
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private LoadList()V
    .locals 3

    .prologue
    .line 1119
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1122
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1125
    .local v0, items:[Ljava/lang/String;
    iget-boolean v1, p0, Lelectrum2/drums/livemode;->InsertMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lelectrum2/drums/livemode;->IsDeleting:Z

    if-nez v1, :cond_1

    .line 1129
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sput v1, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    .line 1152
    .end local v0           #items:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v1, Lelectrum2/drums/livemode;->insideclass:Lelectrum2/drums/livemode$testlist;

    invoke-virtual {v1}, Lelectrum2/drums/livemode$testlist;->invalidate()V

    .line 1153
    return-void

    .line 1136
    .restart local v0       #items:[Ljava/lang/String;
    :cond_1
    sget v1, Lelectrum2/drums/livemode;->currselection:I

    sput v1, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    .line 1139
    iget-boolean v1, p0, Lelectrum2/drums/livemode;->InsertMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1141
    sget v1, Lelectrum2/drums/livemode;->currselection:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lelectrum2/drums/livemode;->currselection:I

    goto :goto_0
.end method

.method private SetButtonLight(ZZLandroid/widget/ImageView;Z)V
    .locals 1
    .parameter "onoroff"
    .parameter "accented"
    .parameter "drum"
    .parameter "disabled"

    .prologue
    .line 1487
    if-eqz p4, :cond_0

    .line 1489
    const v0, 0x7f020053

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1508
    :goto_0
    return-void

    .line 1493
    :cond_0
    if-eqz p1, :cond_2

    .line 1495
    if-eqz p2, :cond_1

    .line 1497
    const v0, 0x7f020057

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1500
    :cond_1
    const v0, 0x7f020054

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1504
    :cond_2
    const v0, 0x7f020055

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private SetSelectedSound(I)V
    .locals 1
    .parameter "soundid"

    .prologue
    .line 1421
    packed-switch p1, :pswitch_data_0

    .line 1437
    :goto_0
    invoke-direct {p0, p1}, Lelectrum2/drums/livemode;->DisplaySelectedSound(I)V

    .line 1439
    invoke-direct {p0}, Lelectrum2/drums/livemode;->DisplayPatternSlots()V

    .line 1442
    return-void

    .line 1425
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lelectrum2/drums/livemode;->currbank:I

    goto :goto_0

    .line 1430
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lelectrum2/drums/livemode;->currbank:I

    goto :goto_0

    .line 1421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ToggleSound(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1728
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lelectrum2/drums/livemode;->currpattern:I

    .line 1730
    iget v1, p0, Lelectrum2/drums/livemode;->currpattern:I

    iget v2, p0, Lelectrum2/drums/livemode;->currbank:I

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iput v1, p0, Lelectrum2/drums/livemode;->currpattern:I

    .line 1733
    iget v1, p0, Lelectrum2/drums/livemode;->currpattern:I

    sput v1, Lelectrum2/drums/globalSounds;->nextpattern:I

    .line 1735
    sget-boolean v1, Lelectrum2/drums/globalSounds;->livemode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lelectrum2/drums/livemode;->isRecording:Z

    if-eqz v1, :cond_0

    .line 1737
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lelectrum2/drums/livemode;->currpattern:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1739
    .local v0, ppattern:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1742
    iget-boolean v1, p0, Lelectrum2/drums/livemode;->InsertMode:Z

    if-eqz v1, :cond_1

    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1746
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    sget v2, Lelectrum2/drums/livemode;->currselection:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1755
    :goto_0
    iget-object v1, p0, Lelectrum2/drums/livemode;->patternHandler:Landroid/os/Handler;

    iget-object v2, p0, Lelectrum2/drums/livemode;->UpdateSequenceList:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1760
    .end local v0           #ppattern:Ljava/lang/Integer;
    :cond_0
    invoke-direct {p0}, Lelectrum2/drums/livemode;->DisplaySoundSlots()V

    .line 1762
    return-void

    .line 1750
    .restart local v0       #ppattern:Ljava/lang/Integer;
    :cond_1
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lelectrum2/drums/livemode;)V
    .locals 0
    .parameter

    .prologue
    .line 1116
    invoke-direct {p0}, Lelectrum2/drums/livemode;->LoadList()V

    return-void
.end method

.method static synthetic access$1(Lelectrum2/drums/livemode;)V
    .locals 0
    .parameter

    .prologue
    .line 1512
    invoke-direct {p0}, Lelectrum2/drums/livemode;->DisplayPatternSlots()V

    return-void
.end method

.method static synthetic access$2(Lelectrum2/drums/livemode;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1418
    invoke-direct {p0, p1}, Lelectrum2/drums/livemode;->SetSelectedSound(I)V

    return-void
.end method

.method static synthetic access$3(Lelectrum2/drums/livemode;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1724
    invoke-direct {p0, p1}, Lelectrum2/drums/livemode;->ToggleSound(I)V

    return-void
.end method


# virtual methods
.method public StartMonitor()V
    .locals 2

    .prologue
    .line 1225
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lelectrum2/drums/livemode$14;

    invoke-direct {v1, p0}, Lelectrum2/drums/livemode$14;-><init>(Lelectrum2/drums/livemode;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1294
    .local v0, mBackground:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1296
    return-void
.end method

.method public StartSequenceMonitor()V
    .locals 2

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lelectrum2/drums/livemode$15;

    invoke-direct {v1, p0}, Lelectrum2/drums/livemode$15;-><init>(Lelectrum2/drums/livemode;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1350
    .local v0, mBackground:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1352
    return-void
.end method

.method public StopPlaying()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/livemode;->WatchPlaying:Z

    .line 488
    sget-object v0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 493
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 367
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 370
    invoke-virtual {p0, v5}, Lelectrum2/drums/livemode;->requestWindowFeature(I)Z

    .line 372
    const v3, 0x7f030011

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->setContentView(I)V

    .line 374
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->setVolumeControlStream(I)V

    .line 376
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 378
    .local v1, strver:Ljava/lang/String;
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, intver:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 382
    new-instance v2, Lelectrum2/drums/screenrotator;

    invoke-direct {v2}, Lelectrum2/drums/screenrotator;-><init>()V

    .line 384
    .local v2, temprotator:Lelectrum2/drums/screenrotator;
    invoke-virtual {v2, p0}, Lelectrum2/drums/screenrotator;->AllowRotate(Landroid/app/Activity;)V

    .line 388
    .end local v2           #temprotator:Lelectrum2/drums/screenrotator;
    :cond_0
    const v3, 0x7f07007d

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    .line 389
    const v3, 0x7f07007e

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    .line 390
    const v3, 0x7f07007f

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    .line 391
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    .line 392
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    .line 393
    const v3, 0x7f070082

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    .line 394
    const v3, 0x7f070083

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    .line 395
    const v3, 0x7f070084

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    .line 396
    const v3, 0x7f070085

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    .line 397
    const v3, 0x7f070086

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    .line 398
    const v3, 0x7f070087

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    .line 399
    const v3, 0x7f070088

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    .line 400
    const v3, 0x7f070089

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    .line 401
    const v3, 0x7f07008a

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    .line 402
    const v3, 0x7f07008b

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    .line 403
    const v3, 0x7f07008c

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    .line 405
    const v3, 0x7f07008d

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->deleteallbutton:Landroid/widget/ImageView;

    .line 406
    const v3, 0x7f07008e

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->deletebutton:Landroid/widget/ImageView;

    .line 407
    const v3, 0x7f07008f

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->insertbutton:Landroid/widget/ImageView;

    .line 409
    iget-object v3, p0, Lelectrum2/drums/livemode;->deleteallbutton:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->onDeleteAll:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    iget-object v3, p0, Lelectrum2/drums/livemode;->deletebutton:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->onDelete:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    iget-object v3, p0, Lelectrum2/drums/livemode;->insertbutton:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->onInsert:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton1:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton2:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton3:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton4:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 419
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton5:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton6:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 421
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton7:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton8:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton9:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton10:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton11:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton12:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton13:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton14:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 429
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton15:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    iget-object v3, p0, Lelectrum2/drums/livemode;->drumbutton16:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->drumbuttonTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    const v3, 0x7f070091

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->soundslot1:Landroid/widget/ImageView;

    .line 433
    const v3, 0x7f070093

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->soundslot2:Landroid/widget/ImageView;

    .line 435
    iget-object v3, p0, Lelectrum2/drums/livemode;->soundslot1:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->soundslotTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 436
    iget-object v3, p0, Lelectrum2/drums/livemode;->soundslot2:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->soundslotTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 438
    const v3, 0x7f070079

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->playbutton:Landroid/widget/ImageView;

    .line 439
    const v3, 0x7f07007b

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->stopbutton:Landroid/widget/ImageView;

    .line 440
    iget-object v3, p0, Lelectrum2/drums/livemode;->playbutton:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->playTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    iget-object v3, p0, Lelectrum2/drums/livemode;->stopbutton:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->stopTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 444
    const v3, 0x7f07007c

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->recordbutton:Landroid/widget/ImageView;

    .line 445
    iget-object v3, p0, Lelectrum2/drums/livemode;->recordbutton:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->recordTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 447
    const v3, 0x7f07007a

    invoke-virtual {p0, v3}, Lelectrum2/drums/livemode;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lelectrum2/drums/livemode;->sequencerbutton:Landroid/widget/ImageView;

    .line 448
    iget-object v3, p0, Lelectrum2/drums/livemode;->sequencerbutton:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/livemode;->sequenceTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lelectrum2/drums/livemode;->patternHandler:Landroid/os/Handler;

    .line 455
    iget v3, p0, Lelectrum2/drums/livemode;->currpattern:I

    invoke-direct {p0, v3}, Lelectrum2/drums/livemode;->ToggleSound(I)V

    .line 458
    invoke-direct {p0, v5}, Lelectrum2/drums/livemode;->SetSelectedSound(I)V

    .line 460
    invoke-direct {p0}, Lelectrum2/drums/livemode;->LoadList()V

    .line 466
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 471
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 473
    invoke-virtual {p0}, Lelectrum2/drums/livemode;->StopPlaying()V

    .line 479
    return-void
.end method
