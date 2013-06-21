.class public Lorg/armyapp/marinecorps/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private BackListener:Landroid/view/View$OnClickListener;

.field private drill:Landroid/widget/Button;

.field private drillListener:Landroid/view/View$OnClickListener;

.field private exit:Landroid/widget/Button;

.field private exitListener:Landroid/view/View$OnClickListener;

.field private hymn:Landroid/widget/Button;

.field private hymnListener:Landroid/view/View$OnClickListener;

.field private nco:Landroid/widget/Button;

.field private ncoListener:Landroid/view/View$OnClickListener;

.field private orders:Landroid/widget/Button;

.field private ordersListener:Landroid/view/View$OnClickListener;

.field private principleListener:Landroid/view/View$OnClickListener;

.field private principles:Landroid/widget/Button;

.field private rifle:Landroid/widget/Button;

.field private rifleListener:Landroid/view/View$OnClickListener;

.field private snco:Landroid/widget/Button;

.field private sncoListener:Landroid/view/View$OnClickListener;

.field private traits:Landroid/widget/Button;

.field private traitsListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$1;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$1;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->hymnListener:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$2;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$2;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->BackListener:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$3;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$3;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->drillListener:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$4;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$4;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->rifleListener:Landroid/view/View$OnClickListener;

    .line 184
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$5;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$5;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->ncoListener:Landroid/view/View$OnClickListener;

    .line 193
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$6;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$6;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->sncoListener:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$7;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$7;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->traitsListener:Landroid/view/View$OnClickListener;

    .line 211
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$8;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$8;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->principleListener:Landroid/view/View$OnClickListener;

    .line 220
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$9;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$9;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->ordersListener:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v0, Lorg/armyapp/marinecorps/MainActivity$10;

    invoke-direct {v0, p0}, Lorg/armyapp/marinecorps/MainActivity$10;-><init>(Lorg/armyapp/marinecorps/MainActivity;)V

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->exitListener:Landroid/view/View$OnClickListener;

    .line 12
    return-void
.end method

.method static synthetic access$0(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->drill:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$1(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->drill:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->nco:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$11(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->ncoListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$12(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->snco:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$13(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->snco:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$14(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->sncoListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$15(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->traits:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$16(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->traits:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$17(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->traitsListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$18(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->principles:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$19(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->principles:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->drillListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$20(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->principleListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$21(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->orders:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$22(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->orders:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$23(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->ordersListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$24(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->exit:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$25(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->exit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$26(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->exitListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$27(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->BackListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->rifle:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$4(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->rifle:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->rifleListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$6(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->hymn:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$7(Lorg/armyapp/marinecorps/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->hymn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lorg/armyapp/marinecorps/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->hymnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$9(Lorg/armyapp/marinecorps/MainActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lorg/armyapp/marinecorps/MainActivity;->nco:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public Back()V
    .locals 2

    .prologue
    .line 103
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->setContentView(I)V

    .line 105
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->drill:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->drill:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->drillListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->rifle:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->rifle:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->rifleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->hymn:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->hymn:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->hymnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->nco:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->nco:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->ncoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->snco:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->snco:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->sncoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->traits:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->traits:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->traitsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->principles:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->principles:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->principleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->orders:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->orders:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->ordersListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->exit:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->exit:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->exitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->drill:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->drill:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->drillListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->rifle:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->rifle:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->rifleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->hymn:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->hymn:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->hymnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->nco:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->nco:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->ncoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->snco:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->snco:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->sncoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->traits:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->traits:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->traitsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->principles:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->principles:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->principleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->orders:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->orders:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->ordersListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lorg/armyapp/marinecorps/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->exit:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lorg/armyapp/marinecorps/MainActivity;->exit:Landroid/widget/Button;

    iget-object v1, p0, Lorg/armyapp/marinecorps/MainActivity;->exitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
