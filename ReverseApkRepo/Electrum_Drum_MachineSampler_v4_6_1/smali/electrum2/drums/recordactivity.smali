.class public Lelectrum2/drums/recordactivity;
.super Landroid/app/Activity;
.source "recordactivity.java"


# static fields
.field public static RECORD_TIME:I

.field static headerdata:[B

.field static headerdata2:[B


# instance fields
.field cancelbutton:Landroid/widget/Button;

.field cancelrecordlistener:Landroid/view/View$OnClickListener;

.field countdown:Landroid/widget/TextView;

.field countdownval:I

.field docountdown:Ljava/lang/Runnable;

.field isRecording:Z

.field okbutton:Landroid/widget/Button;

.field playbackbutton:Landroid/widget/Button;

.field playbacklistener:Landroid/view/View$OnClickListener;

.field recordThread:Ljava/lang/Runnable;

.field recordstatus:Landroid/widget/TextView;

.field saverecordlistener:Landroid/view/View$OnClickListener;

.field showstatus:Ljava/lang/Runnable;

.field soundbuffer:[S

.field soundplayer:Landroid/media/AudioTrack;

.field soundrecorder:Landroid/media/AudioRecord;

.field startcountdown:Ljava/lang/Runnable;

.field startrecordbutton:Landroid/widget/Button;

.field startrecordlistener:Landroid/view/View$OnClickListener;

.field statushandler:Landroid/os/Handler;

.field statustext:Ljava/lang/String;

.field updatecountdown:Ljava/lang/Runnable;

.field waserror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x10

    const/4 v3, 0x1

    .line 33
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lelectrum2/drums/recordactivity;->headerdata:[B

    .line 36
    new-array v0, v7, [B

    const/4 v1, 0x0

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v1, v0, v3

    const/16 v1, 0x56

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v7, v0, v1

    const/16 v1, 0x8

    .line 37
    aput-byte v4, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v1, v0, v4

    const/16 v1, 0x11

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    .line 38
    aput-byte v5, v0, v1

    const/16 v1, 0x1a

    aput-byte v4, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 36
    sput-object v0, Lelectrum2/drums/recordactivity;->headerdata2:[B

    .line 45
    const/16 v0, 0xa

    sput v0, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    .line 16
    return-void

    .line 33
    :array_0
    .array-data 0x1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-boolean v1, p0, Lelectrum2/drums/recordactivity;->isRecording:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->soundbuffer:[S

    .line 47
    sget v0, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    iput v0, p0, Lelectrum2/drums/recordactivity;->countdownval:I

    .line 49
    iput-boolean v1, p0, Lelectrum2/drums/recordactivity;->waserror:Z

    .line 81
    new-instance v0, Lelectrum2/drums/recordactivity$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$1;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->playbacklistener:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Lelectrum2/drums/recordactivity$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$2;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->showstatus:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lelectrum2/drums/recordactivity$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$3;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->startcountdown:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lelectrum2/drums/recordactivity$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$4;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->updatecountdown:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lelectrum2/drums/recordactivity$5;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$5;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->docountdown:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lelectrum2/drums/recordactivity$6;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$6;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->recordThread:Ljava/lang/Runnable;

    .line 315
    new-instance v0, Lelectrum2/drums/recordactivity$7;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$7;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->startrecordlistener:Landroid/view/View$OnClickListener;

    .line 341
    new-instance v0, Lelectrum2/drums/recordactivity$8;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$8;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->cancelrecordlistener:Landroid/view/View$OnClickListener;

    .line 359
    new-instance v0, Lelectrum2/drums/recordactivity$9;

    invoke-direct {v0, p0}, Lelectrum2/drums/recordactivity$9;-><init>(Lelectrum2/drums/recordactivity;)V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->saverecordlistener:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lelectrum2/drums/recordactivity;->setContentView(I)V

    .line 58
    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lelectrum2/drums/recordactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->startrecordbutton:Landroid/widget/Button;

    .line 59
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lelectrum2/drums/recordactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->cancelbutton:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0700bc

    invoke-virtual {p0, v0}, Lelectrum2/drums/recordactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->okbutton:Landroid/widget/Button;

    .line 61
    const v0, 0x7f0700b8

    invoke-virtual {p0, v0}, Lelectrum2/drums/recordactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->playbackbutton:Landroid/widget/Button;

    .line 62
    const v0, 0x7f0700b9

    invoke-virtual {p0, v0}, Lelectrum2/drums/recordactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->countdown:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lelectrum2/drums/recordactivity;->startrecordbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/recordactivity;->startrecordlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lelectrum2/drums/recordactivity;->cancelbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/recordactivity;->cancelrecordlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lelectrum2/drums/recordactivity;->okbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/recordactivity;->saverecordlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lelectrum2/drums/recordactivity;->playbackbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/recordactivity;->playbacklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0700ba

    invoke-virtual {p0, v0}, Lelectrum2/drums/recordactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->recordstatus:Landroid/widget/TextView;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/recordactivity;->statushandler:Landroid/os/Handler;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/recordactivity;->waserror:Z

    .line 76
    iget-object v0, p0, Lelectrum2/drums/recordactivity;->countdown:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/Integer;

    sget v2, Lelectrum2/drums/recordactivity;->RECORD_TIME:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
